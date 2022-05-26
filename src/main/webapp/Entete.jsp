<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>

 
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>Entete</title>
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
					 <a href="Login.jsp">Se connecter</a> | <a href="deconnexion">Déconnexion</a>
				 </div>
			 </div>
			 <div id="menubar">
				 <ul id="menu">
					<!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
					<li class="selected"><a href="index.jsp">Acceuille</a></li>
					 <li class=""><a href="Login.jsp">Login</a></li>
					 <li><a href="examples.html">Gérer les employees</a></li>
					 <li><a href="page.html">Ajouter un employee</a></li>
					 <li><a href="another_page.html">Afficher le détail</a></li>
					 <li><a href="Contact.jsp">Creer Compte</a></li>
				 </ul>
			 </div>
		</div>
				 <div id="site_content">
					 <div class="sidebar">
						 <!-- La barre des news a droite -->
						 <h3>Dernier Ajouté</h3>
						 <h4>Employee Recent</h4>
						 <h5>La date d'aujourdhui</h5>
						 <p>Ici nous allons ajouter le salarié le plus recent ajouter au niveau de notre base dedonnées<br /><a href="#">Plus ...</a></p>
						 <p></p>
						 <h4>Nouveau Département Ajouté</h4>
						 <h5>La date</h5>
						 <p>Ici nous allons mettre le departement avec le plus grand nombre des employees<br /><ahref="#">Plus ...</a></p>
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
							 <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;"src="style/search.png" alt="Search" title="Search" /></p>
						 </form>
				 	</div>