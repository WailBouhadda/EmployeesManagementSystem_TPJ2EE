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
				
				
				int idemp  = 0;
				
				try {	
					
					idemp = Integer.parseInt(request.getParameter("your_empid"));
						
				}catch(NumberFormatException e) {
						
						request.setAttribute("errocreation", "*Votre demande avec le login à échouée, vérifier que vous avez bien saisie un ID employee est correct format");
						request.getRequestDispatcher("Register.jsp").forward(request, response);
						
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
				
				
						
						
				
			}else if(request.getParameter("Action").equals("Activercompte")) {
			
				if(CredentialsDAO.getInactifCredential(request.getParameter("tlogin"))==null){
					
					request.setAttribute("message", "le Login "+request.getParameter("tlogin")+" est introuvable ou déja actif" );
					request.getRequestDispatcher("Activercompte.jsp").forward(request, response);
					
				}else{
					
					CredentialsC c = CredentialsDAO.getInactifCredential(request.getParameter("tlogin"));
					request.setAttribute("Credential", c);
					request.getRequestDispatcher("Activercompte.jsp").forward(request, response);
				}
				
			}else if (request.getParameter("Action").equals("modifierinactifcompte")){
				
					String erroupdate=null;
					
					CredentialsC c= new CredentialsC();
					
					c.setLogin(request.getParameter("tname"));
					c.setIdcredential(Integer.parseInt(request.getParameter("tid")));
					c.setEtat(request.getParameter("tetat"));
					c.setRole(request.getParameter("trole"));
					int ret=CredentialsDAO.updatecredentials(c);
					
				if(ret>0){
		
					request.setAttribute("login", c);
					request.getRequestDispatcher("confirmationupdate.jsp").forward(request, response);
				
				}else{
					
					request.setAttribute("erroupdate", "votre demande de mise a jours du login " + c.getLogin()+ " à échouée, la requete n'a pas pu etre terminée");
					request.getRequestDispatcher("Activer_compte.jsp").forward(request, response);
				}
		}
		
		}
	}

}
