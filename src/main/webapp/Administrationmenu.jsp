<%@page import="entities.CredentialsC"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<meta http-equiv="content-type" content="text/html; charset=windows-1252" />
	<link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
	
</head>
<body>
	 <div id="main">
		 <div id="header">
			 <div id="logo">
				 <div id="logo_text">
					 <!-- class="logo_colour", allows you to change the colour of the text -->
					 <h1><a href="Index.jsp">Tutoriel<span class="logo_colour">J2EE</span></a></h1>
					 <h2>TP etape par etape</h2>
				 </div>
				 <div id="logo_text">
					 <% if(session.getAttribute("Credential")==null)
					 {
					 response.sendRedirect("Login.jsp");
					 }
					 else
					 {
					 CredentialsC user=(CredentialsC)session.getAttribute("Credential");
					 %>
					 <div class="logo_text">
					 Bienvenu <%=user.getLogin() %> | <a href="Logoutcontroler">Déconnexion</a>
					 </div>
					 <%} %> 
				 </div>
			 </div>
		 <div id="menubar">
		 <ul id="menu">
		 <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
		 <li class="selected"><a href="index.html">Home</a></li>
		 <li><a href="examples.html">Gérer les employees</a></li>
		 <li><a href="page.html">Ajouter un employee</a></li>
		 <li><a href="another_page.html">Afficher le détail</a></li>
		 <% if(session.getAttribute("UTILISATEUR")!=null)
		 { CredentialsC c= (CredentialsC)session.getAttribute("UTILISATEUR");
		 if(c.getRole().equals("admin")){ %>
		 <li><a href="AdministrationMenu.jsp">Administration</a></li>
		 <%}
		 } %>
		
		 </ul>
		 </div>
		 </div>
		 <div id="site_content">
		 <div class="sidebar">
		 <!-- La barre des news a droite -->
		 <h3>Dernier Ajouté</h3>
		 <h4>Employee Recent</h4>
		 <h5>La date d'aujourdhui</h5>
		 <p>Ici nous allons ajouter le salarié le plus recent ajouter au niveau de notre base de données<br /><a href="#">Plus ...</a></p>
		 <p></p>
		 <h4>Nouveau Département Ajouté</h4>
		 <h5>La date</h5>
		 <p>Ici nous allons mettre le departement avec le plus grand nombre des employees<br /><a href="#">Plus ...</a></p>
		 <h3>Liste des liens</h3>
		 <ul>
		 <li><a href="#">link 1</a></li>
		 <li><a href="#">link 2</a></li>
		 <li><a href="#">link 3</a></li>
		 <li><a href="#">link 4</a></li>
		 </ul>
		 <h3>Search</h3>
		 <form method="post" action="#" id="search_form">
		 <p>
		 <input class="search" type="text" name="search_field" value="Enter keywords....." />
		 <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="style/search.png" alt="Search" title="Search" />
		 </p>
		 </form>
		 </div>
		 </div>
	 </div>
 </body>
 </html>
 