<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>

<link rel="stylesheet" type="text/css" href="style/style.css" title="style" />


</head>
<body>

<div id="main">
	 <div id="header">
	 <div id="logo">
	 <div id="logo_text">
	 <!-- class="logo_colour", allows you to change the colour of the text -->
	 <h1><a href="index.html">Tutoriel<span class="logo_colour">J2EE</span></a></h1>
	 <h2>TP etape par etape</h2>
	 </div>
	 <div >
	 <a href="<%=application.getContextPath()%>/Nouveaucompte.jsp" >Créer Compte</a>
	 </div>
	 </div>
	 <div id="menubar">
	 <ul id="menu">
	 <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
	 <li><a href="Login.jsp">LOGIN</a></li>
	 <li class="selected"><a href="Login.jsp">Création d'un nouveau compte</a></li>
	 </ul>
	 </div>
	 </div>
	
	<div id="content" style="height: 400px">
	 <!-- insert the page content here -->
		 <h1>Contact Us</h1>
		 <p>Below is an example of how a contact form might look with this template:</p>
		 <form action="LoginManagement?Action=creer" method="post">
			 <div class="form_settings">
				 <p><span>Login</span><input class="contact" type="text" name="your_name" value=""/></p>
				 <p><span>Mot de passe</span><input class="contact" type="password"name="your_password" value="" /></p>
				 <p><span>Id Employee</span><input class="contact" type="text" name="your_empid"value="" /></p>
				 <p style="padding-top: 15px">
					 <span>&nbsp;</span>
					 <input class="submit" type="submit" name="contact_submitted" value="Creer Compte" />
					 <span>&nbsp;</span>
					 <input class="submit" type="reset" value="Annuler"/>
				
				 </p>
			 </div>
		 </form>
		 <p><br /><br />NOTE: Votre Compte sera par defaut inactif apres la validation de
		l'administrateur du systeme</p>
	 </div>
	 
	 <div id="footer">
			 Copyright &copy; textured_blue | <a href="http://validator.w3.org/check?uri=referer">HTML5</a>
			 | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a href="http://www.html5webtemplates.co.uk">Free CSS Templates</a>
	 </div>
 </div>
 
</body>
</html>