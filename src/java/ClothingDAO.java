import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClothingDAO {
    // Assuming you have a method to get the database connection
    private Connection getConnection() {
        // Implement your database connection logic here
        // Example:
        // return YourDatabaseConnection.getConnection();
        return null; // Replace this with your actual database connection logic
    }
    
    public void addClothing(String name, String type, double price) {
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try {
            conn = getConnection();
            if (conn != null) {
                String sql = "INSERT INTO clothing_table (name, type, price) VALUES (?, ?, ?)";
                stmt = conn.prepareStatement(sql);
                stmt.setString(1, name);
                stmt.setString(2, type);
                stmt.setDouble(3, price);
                
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
}
