package controlers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import dao.CredentialsDAO;
import entities.CredentialsC;

/**
 * Servlet implementation class LoginManagement
 */
public class LoginManagement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginManagement() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		if(request.getParameter("Action") != null) {
			if(request.getParameter("Action").equals("creer")) {
				
				
				String erro = null;
				
				try {
					Integer.parseInt(request.getParameter("your_empid"));
				} catch(NumberFormatException | NullPointerException e){
					
					erro = "emp ID doit etre numerique";
				}
				
				CredentialsC c = new CredentialsC();
				
				c.setLogin(request.getParameter("your_name"));
				c.setPassword(request.getParameter("your_password"));
				c.setIdemp(Integer.parseInt(request.getParameter("your_empid")));
				
				
				int ret = CredentialsDAO.insertNewCredentials(c);
				
				if(ret>0) {
					
					request.setAttribute("login", c.getLogin());
					request.getRequestDispatcher("confirmationCreation.jsp").forward(request, response);
					
				}
						
						
				
			}
		}
		
	}

}
