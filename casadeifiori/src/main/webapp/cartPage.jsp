<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Carrello</title>
</head>
	<header>
		<%@ include file="main/header.jsp"%>
	</header>
	<nav>
		<%@ include file="main/navigationBar.jsp"%>
	</nav>
<body>
	<input type="text" class="notShow" id="page" value="cartPage.jsp">
		<%@ include file="showCart.jsp"%>
	<footer>
		<%@ include file="main/footer.jsp" %>
	</footer>
</body>
</html>