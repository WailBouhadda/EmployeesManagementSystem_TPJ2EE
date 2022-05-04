<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Login</title>

<meta http-equiv="content-type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style/style.css" title="style" />

</head>

<body>
	
	<div id="main">
		 <div id="header">
			 <div id="logo">
				 <div id="logo_text">
				 <!-- class="logo_colour", allows you to change the colour of the text -->
				 <h1><a href="index.jsp">Tutoriel<span class="logo_colour">J2EE</span></a></h1>
				 <h2>TP etape par etape</h2>
				 </div>
				 <div id="logintext">
				 Se connecter | Déconnexion
				 </div>
			 </div>
			 <div id="menubar">
				 <ul id="menu">
				 <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
				 <li class="selected"><a href="Login.jsp">LOGIN</a></li>
				 </ul>
			 </div>
		</div>
			
		<div id="content" style="height: 400px">
			 <!-- insert the page content here -->
			 <h1>Login</h1>
			 <p>Veuillez saisir votre Nom d'utilisateur et votre Mot de passe</p>
			 <form action="Logincontroler" method="post">
				 <div class="form_settings">
					 <p><span>Nom d'utilisateur</span><input class="contact" type="text" name="tlogin"value="" /></p>
					 
					 <p><span>Password</span><input class="contact" type="password" name="tpassword" value=""/></p>
					 
					 <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit"name="contact_submitted" value="Se Connecter" /></p>
				 </div>
			 </form>
			 <div style="color: red;">
					 <% if(request.getAttribute("ERROR")!=null)
					 {
						 %>
						 <p style="text-align:center;"><%=request.getAttribute("ERROR") %></p>
						 <%
					 }%>
			</div>
		 </div>
	 </div>
 </body>
 </html>