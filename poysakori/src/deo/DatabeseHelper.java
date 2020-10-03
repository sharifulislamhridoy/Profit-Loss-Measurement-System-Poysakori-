package deo;

import java.sql.*;

public class DatabeseHelper {

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/poysakori", "root", "123");
            return con;
        } catch (Exception e) {
            System.err.println("Connection error");
            return null;
        }
    }
}