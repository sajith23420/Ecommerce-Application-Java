package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQL {
    private static final String URL = "jdbc:mysql://localhost:3306/ecommerceshop";
    private static final String USER = "root"; 
    private static final String PASSWORD = ""; 

    public static Connection getConnection() {
        Connection conn = null;
        try {
            //
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connected to the Database");
        } catch (SQLException e) {
            System.out.println("Failed to connect to the Database");
            e.printStackTrace();
        }
        return conn;
    }

    public static void main(String[] args) {
        Connection connection = getConnection();
        // Perform database operations
       
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
                System.out.println("Connection closed");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
