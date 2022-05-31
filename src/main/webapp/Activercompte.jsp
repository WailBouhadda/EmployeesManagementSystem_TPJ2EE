	<%@ include file="Entete.jsp"%>
		<div id="content">
			
			<form method="post" action="LoginManagement?Action=Activercompte"id="search_form">
				 <p>
					 <input class="search" type="text" name="tlogin" value="Enter un Login....." />
					 <input name="search" type="image" h style="border: 0; margin: 0 0 -9px 5px;" src="style/search.png" alt="Search" title="Search" />
				 </p>
			 </form>
			
			 <% if(request.getAttribute("message")!=null) {%>
				
				 <p style="color: red;"><%=request.getAttribute("message") %>
				 
			 <%} else if(request.getAttribute("Credential")!=null) {
				 
			 CredentialsC c = (CredentialsC)request.getAttribute("Credential"); %>
			 
				 <form action="LoginManagement?Action=modifierinactifcompte" method="post">
					 <div class="form_settings">
					 
						 <input class="contact" type="text" hidden="" name="tid" value="<%=c.getIdcredential()%>"/></p>
						 <p><span>Login</span><input class="contact" type="text" readonly name="tname" value="<%=c.getLogin() %>" /></p>
						 <p><span>Id Employee</span><input class="contact" type="text" disabled="disabled"name="tempid" value="<%=c.getIdemp() %>" /></p>
						 <p> 
							 <span>Etat du Compte</span>
							 <select name="tetat" style="border: 1px solid #E5E5DB;">
								 <option value="Actif">Actif</option>
								 <option value="Bloqué">Bloqué</option>
								 <option value="Inactif" selected="selected">Inactif</option>
							</select>
						</p>
						<p>
							 <span>Role</span>
							 <select name="trole" style="border: 1px solid #E5E5DB;">
								 <option value="Administrateur">Administrateur</option>
								 <option value="Manager">Manager</option>
								 <option value="Utilisateur" selected="selected">Utilisateur</option>
							</select>
						 </p>
						
						 <p style="padding-top: 15px">
							 <span>&nbsp;</span>
							 <input class="submit" type="submit" name="contact_submitted" value="Activer Compte" />
							 <span>&nbsp;</span>
							 <input class="submit" type="reset" value="Annuler"/>
						 </p>
					 </div>
				 </form>
			<%}%>
		</div>
	<jsp:include page="Footer.jsp"></jsp:include>