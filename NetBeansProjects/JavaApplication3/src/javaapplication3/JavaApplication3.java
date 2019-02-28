/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication3;

import java.sql.*;

/**
 *
 * @author Jarde
 */
public class JavaApplication3 {

    /**
     * @param args the command line arguments
     */
    public static void Main(String[] args) {
        try {
            System.out.println("test");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/databasedemo", "root", "");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from store");
            while (rs.next()) {
                System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3));
                con.close();
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
