<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% HttpSession sessione = request.getSession(true); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Casa dei fiori</title>
		
		<link rel=StyleSheet HREF="style.css" TYPE="text/css">
	</head>
	
	<body>
		<div id="headerContainer">
			<div class="dropDown">
					<button type="button" class="menuMobile headerBtn" onclick="menuMobile()"><i class="fas fa-bars" id="barMenu"></i><i class="fas fa-times" id="barMenuOpen"></i> </button>
					<section class="menuDrop" id="menuDropBar">
						<ul class="ulMenu">
							<li> <a href="listaItem.jsp" id="afterHomeBtn"><button type="button" class="headerBtn" >lista prodotti </button></a></li> 
							<li> <a href="cartPage.jsp"><button type="button" class="headerBtn">carrello </button></a> </li> 
							<li> <a href="addItem.jsp"><button type="button" class="headerBtn">aggiungi prodotto </button></a> </li>
						</ul>
					</section>
			</div>
			<section class="logo">
					<a href="index.jsp"><img alt="logo" src="img/Logo.png"  alt="Image" height="80em" ></a>
			</section>
			<section class="user">
					
					<div class="dropDown">
					<button type="button" class="headerBtn"onclick="menuMobile2()"><i class="fas fa-user" id="userIcon"></i></button>
					<section class="menuDrop2" id="menuDropBar2">
						<ul class="ulMenu2">
							<% if(sessione.getAttribute("loggedUser")!=null){ %>
								<li> <a href="listaItem.jsp" id="afterHomeBtn"><button type="button" class="headerBtn" >profilo</button></a></li> 
								<li> <a href="cartPage.jsp"><button type="button" class="headerBtn">ordini</button></a> </li> 
								<li> <a href="addItem.jsp"><button type="button" class="headerBtn">logout</button></a> </li>
							<% }else{%>
								<li> <a href="logInPage.jsp" id="afterHomeBtn"><button type="button" class="headerBtn" >login</button></a></li> 
								<li> <a href="signInPage.jsp"><button type="button" class="headerBtn">singin</button></a> </li> 
							<% } %>
							
						</ul>
					</section>
					
					</div>
					<form action="search" class="headerBtn" >
						<input type="search" class="searchBarItem">
						<input type="submit" class="searchBarItem" value="Cerca">
						
					</form>
					<button type="button" class="searchBtn headerBtn"><i class="fas fa-search" id="searchIcon"></i></button>
			</section>
		</div>
	</body>
	<script type="text/javascript">
		function menuMobile() {
			var bar = document.getElementById("menuDropBar");
			var icon = document.getElementById("barMenu");
			var icon1 = document.getElementById("barMenuOpen");
			if (bar.style.display == "none") {
				bar.style.display = "block";
				icon.style.display = "none";
				icon1.style.display = "inline-block";
			}else{
				bar.style.display = "none";
				icon.style.display = "inline-block";
				icon1.style.display = "none";
			}
		}
		function menuMobile2() {
			var bar = document.getElementById("menuDropBar2");
			if (bar.style.display == "none") {
				bar.style.display = "block";
			}else{
				bar.style.display = "none";
			}
		}
	</script>
</html>