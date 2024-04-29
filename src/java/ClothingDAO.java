import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClothingDAO {
     private static final String URL = "jdbc:mysql://localhost:3306/ecommerceshop";
    private static final String USER = "root"; 
    private static final String PASSWORD = ""; 
    
    private Connection getConnection() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Connected to the Database");
        } catch (SQLException e) {
            System.out.println("Failed to connect to the Database");
            e.printStackTrace();
        }
        return conn; 
    }
    
    public void addClothing( String id, String name, String type, double price) {
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try {
            conn = getConnection();
            if (conn != null) {
                String sql = "INSERT INTO clothing_table (id, name, type, price) VALUES (?, ?, ?)";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, id);
                stmt.setString(2, name);
                stmt.setString(3,type);
                stmt.setDouble(4,price);
                
                // Execute the update
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            // Handle any database errors
            e.printStackTrace();
        } finally {
            // Close the statement and connection
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    void addClothing(int id, String name, String type, double price) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
