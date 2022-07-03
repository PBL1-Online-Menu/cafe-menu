
import java.sql.*;

public class DbConnection {

	 protected static Connection initializeDatabase()
		        throws SQLException, ClassNotFoundException
		    {
		        // Initialize all the information regarding
		        // Database Connection
		       /* String dbDriver = "com.mysql.jdbc.Driver";
		        String dbURL = "jdbc:mysql:// localhost:3306/";
		        // Database name to access
		        String dbName = "demoprj";
		        String dbUsername = "root";
		        String dbPassword = "root";*/
		  
		        Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
				
		        return con;
		    }
	/*public static void main(String args[]) {
		
	try{
		
		//DriverManager.registerDriver(new OracleDriver());
		//DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
		
		}
		
		catch(Exception e){System.out.println(e);
		e.printStackTrace();}
	}*/
}
