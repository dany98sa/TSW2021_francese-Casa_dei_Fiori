<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Log In</title>
		<script src="https://kit.fontawesome.com/46a2d5ed1b.js" ></script>
		<link rel=StyleSheet href="style.css" type="text/css">
	</head>
	<body>
		<%@ include file="main/menuMobile.jsp" %>
		<div class="main">
			<header>
				<%@ include file="main/header.jsp"%>
			</header>
			<nav>
				<%@ include file="main/navigationBar.jsp"%>
			</nav>
			<form action="logIn" method="post">
				<label for="username" class="signInLbl">Email o nuemro di telefono</label> <br>
				<input type="text" name="username" class="logInInput" placeholder="Inserisci Email o numero di telefono" required="required"/> <br>
				<label for="password" class="signInLbl">Password </label> <br>
				<input type="password" name="password" class="logInInput" id="logInPassword" placeholder="Inserisci password" required="required" /> 
				<i id="closedEyePassword" class="fas fa-eye-slash" onclick="showPassword('logInPassword','closedEyePassword','openEyePassword')"> </i> <i id="openEyePassword" class="far fa-eye" onclick="hidePassword('logInPassword','openEyePassword','closedEyePassword')"></i> <br>
				<input type="submit" value="log In" class="logInInput">
				<a href="signInPage.jsp"><button type="button" >Sing-in</button></a>
			</form>
			<footer>
				<%@ include file="main/footer.jsp" %>
			</footer>
		</div>
		<script src="code.js" ></script>
	</body>
</html>