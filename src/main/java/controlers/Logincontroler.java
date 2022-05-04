package controlers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tools.MySqlConnection;

import java.io.IOException;
import java.io.PrintWriter;

import dao.CredentialsDAO;
import entities.CredentialsC;

/**
 * Servlet implementation class Logincontroler
 */
public class Logincontroler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logincontroler() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String username = request.getParameter("tlogin");
		
		String password = request.getParameter("tpassword");
		
		CredentialsDAO Cdao = new CredentialsDAO();
		
		
		CredentialsC CC = Cdao.checkcrdentials(username, password);
		HttpSession s = request.getSession();

		
		if(CC != null) {
			
			
			
			s.setAttribute("Credential", CC);
			response.sendRedirect("index.jsp");
			
		}else {
			
			request.setAttribute("ERROR","Login ou Mot de passe incorrecte");
			
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		
		
		
		
	}
	
	
	

}
