	<%@ include file="Entete.jsp"%>
		
		<div id="content">
			<% if(request.getAttribute("login")!=null) {
				CredentialsC c= (CredentialsC)request.getAttribute("login");
			%>
			<p>
				le compte avec le login <%=c.getLogin() %> a �t� chang� par l'administrateur, <br/>
				son nouveau �tat est <%=c.getEtat() %> <br/>
				son role est <%=c.getRole() %>
			</p>
			<%} %>
		</div>
		
	<jsp:include page="Footer.jsp"></jsp:include>