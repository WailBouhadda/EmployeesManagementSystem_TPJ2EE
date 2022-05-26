<jsp:include page="Entete.jsp"></jsp:include>

 
 <% 
 HttpSession s = request.getSession();
 
 
 if (s.getAttribute("Credential") == null){
					 
	 response.sendRedirect("Login.jsp");
					 } 
					 
					 %>
<div id="content">
</div>
<jsp:include page="Footer.jsp"></jsp:include>