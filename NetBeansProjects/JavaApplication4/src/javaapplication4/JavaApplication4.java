
package javaapplication4;

import java.sql.*;

public class JavaApplication4 {

    public static void main(String[] args) {
        try {
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
