import java.sql.*;

public class JDBCExample {
   static final String DB_URL = "jdbc:postgresql://localhost:5432/imdb";
   static final String USER = "alice";
   static final String PASS = "secret";
   static final String QUERY = "SELECT * FROM actor LIMIT 3";

   public static void main(String[] args) {
      // Open a connection
      try(Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery(QUERY);) {
         // Extract data from result set
         while (rs.next()) {
            // Retrieve by column name
            System.out.print("ID: " + rs.getInt("id"));
            System.out.print(", name: " + rs.getString("name") + "\n");
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } 
   }
}
