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
 <h1><a href="index.html">Tutoriel<span class="logo_colour">J2EE</span></a></h1>
 <h2>TP etape par etape</h2>
 </div>
 <div >
 <a href="<%=application.getContextPath()%>/Register.jsp" >Créer Compte</a>
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
<h3>Confirmation de la demande de création du compte</h3>
<p>
le compte avec le login <%=request.getAttribute("login") %> est en cours d'approbation par
l'administrateur...
</p>
</div>
<div id="footer">
 Copyright &copy; textured_blue | <a
href="http://validator.w3.org/check?uri=referer">HTML5</a>
 | <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> | <a
href="http://www.html5webtemplates.co.uk">Free CSS Templates</a>
 </div>
</body>
</html>