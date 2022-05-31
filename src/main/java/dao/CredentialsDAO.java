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
				res.setEtat(rs.getString(6));
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
				st.executeUpdate("Insert into logins( login, password, idemp, role, etat) values('"+c.getLogin()+"','"+c.getPassword()+"',"+c.getIdemp()+",'Utilisateur','Inactif')");
				
				result++;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				result--;
			} 
			
			
		}
		
		
		return result;
	}
	
	public static CredentialsC getInactifCredential(String vlogin){
		
			CredentialsC res= new CredentialsC();
			String sql= "select * from logins where login =? and (etat =? or etat = ?)";
			PreparedStatement ps=null;
			ResultSet rs= null;
			Connection con=MySqlConnection.getConnectionsql();
			
		try {
			
			ps=con.prepareStatement(sql);
			ps.setString(1, vlogin);
			ps.setString(2, "Inactif");
			ps.setString(3, "Bloque");
		
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("probleme avec prepared statment");
			
		}try {
			rs=ps.executeQuery();
			
			if(rs.next()){
				
				res.setIdcredential(rs.getInt(1));
				res.setLogin(rs.getString(2));
				res.setPassword(rs.getString(3));
				res.setIdemp(rs.getInt(4));
				res.setRole(rs.getString(5));
				res.setEtat(rs.getString(6));
				return res;
			}else
				return null;
			} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("probleme lors de l'execution de la requete");
		}
		return res;
		}
	
	
	public static Integer updatecredentials(CredentialsC c) {
		
			PreparedStatement ps=null;
			Integer res=null;
			Connection con=MySqlConnection.getConnectionsql();
			String sql= "UPDATE logins SET role = ?, etat = ? WHERE id = ?";
			
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, c.getRole());
			ps.setString(2, c.getEtat());
			ps.setInt(3, c.getIdcredential());
			res=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		try {
			con.close();
			
		} catch (SQLException e1) {
			
			// TODO Auto-generated catch block
			e1.printStackTrace();
			System.out.println("probleme lors de la fermeture de la connexion");
		}
		}
		try {
			
			con.close();
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("probleme lors de la fermeture de la connexion");
			
		}
		return res;
		}

	
	
}
