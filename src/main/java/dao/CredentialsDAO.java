package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entities.CredentialsC;
import tools.MySqlConnection;

public class CredentialsDAO {

	public CredentialsDAO() {
		// TODO Auto-generated constructor stub
	}
	
	static Statement st;
	static ResultSet rs;

	
	public static CredentialsC checkcrdentials(String l, String p) {
		
		CredentialsC res= new CredentialsC();
		String sql= "select * from logins where login =? and password =?";
		PreparedStatement ps=null;
		ResultSet rs= null;
		
		
		Connection con = MySqlConnection.getConnectionsql();
		
		try {
			
			ps = con.prepareStatement(sql);
			ps.setString(1, l);
			ps.setString(2, p);
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("erreur avec PS");	
		}
		
		try {
			rs= ps.executeQuery();
			
			if(rs.next())
			{
				res.setIdcredential(rs.getInt(1));
				res.setLogin(rs.getString(2));
				res.setPassword(rs.getString(3));
				res.setIdemp(rs.getInt(4));
				res.setRole(rs.getString(5));
			}else
				return null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("erreur avec RS");
			return null;
		}
		return res;
		}
	
	
	public static int insertNewCredentials(CredentialsC c) {
		
		int result = 0;
		
		Connection con = MySqlConnection.getConnectionsql();

		if(con != null) {
			
			
			try {
				
				st = con.createStatement();
				st.executeUpdate("Insert into logins values('"+c.getLogin()+"','"+c.getPassword()+"',"+c.getIdemp()+",'Utilisateur','Inactif')");
				
				result++;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				result--;
			} 
			
			
		}
		
		
		return result;
	}
	
}
