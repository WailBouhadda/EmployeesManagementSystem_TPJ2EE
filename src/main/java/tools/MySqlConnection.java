package tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConnection {
	
	private static Connection con;
	
	public static Connection getConnectionsql() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			try {
				
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gestionemployees","root","");

				return con;


			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("connection Failed");



			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Driver Not Found");


		}
		return con;
				
	}
	

	

	public static void main(String[] args) {
		
		getConnectionsql();
	}
}
