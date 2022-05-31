	<%@ include file="Entete.jsp"%>
		
		<div id="content">
			<% if(request.getAttribute("login")!=null) {
				CredentialsC c= (CredentialsC)request.getAttribute("login");
			%>
			<p>
				le compte avec le login <%=c.getLogin() %> a été changé par l'administrateur, <br/>
				son nouveau état est <%=c.getEtat() %> <br/>
				son role est <%=c.getRole() %>
			</p>
			<%} %>
		</div>
		
	<jsp:include page="Footer.jsp"></jsp:include>