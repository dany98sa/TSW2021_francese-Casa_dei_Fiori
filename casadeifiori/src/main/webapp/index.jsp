<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="it">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="utf-8">
		<title>Home</title>
		<link rel=StyleSheet href="style.css" type="text/css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	</head>
	<body>
		<%@ include file="main/menuMobile.jsp" %>
		<div class="main" >
			<header >
				<%@ include file="main/header.jsp"%>
			</header>
			<nav>
				<%@ include file="main/navigationBar.jsp"%>
			</nav>
			<div class="slideShowConteiner" >
				<div class="slide fade" >
					 <img src="img/Logo.png" style="width:100%">
				</div>
				<div class="slide fade">
					 <img src="img/logosenzascritta.png" style="width:100%">
				</div>
				<div class="slide fade">
					 <img src="img/logonew.png" style="width:100%">
				</div>	
				<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  				<a class="next" onclick="plusSlides(1)">&#10095;</a>
  				<div style="text-align:center">
  					<span class="dot" onclick="currentSlide(1)"></span>
  					<span class="dot" onclick="currentSlide(2)"></span>
  					<span class="dot" onclick="currentSlide(3)"></span>
				</div>
			</div>
			<div class="info">
				<div class="infodiv">
					<img alt="" src="">
					<div><strong class="center">UNO STILE UNICO</strong></div>
					<div>
						<strong>
							Da oltre 100 anni ci impegniamo a realizzare creazioni floreali all'avanguardia, 
							riconosciuti in tutto il mondo per stile e unicit�
						</strong>
					</div>
				</div>
				<div class="infodiv">
					<img alt="" src="">
					<div ><strong class="center">QUALIT� GARANTITA</strong></div>
					<div>
						<strong>
							Consegniamo sempre fiori freschi di premissima qualit� che vengono lavorati dal 
							fiorista pi� vicino al luogo di destinazione poco prima della consegna
						</strong>
					</div>
				</div>
				<div class="infodiv">
					<img alt="" src="">
					<div><strong class="center">CONSEGNA IN GIORNATA</strong></div>
					<div>
						<strong>
							Per tutti i nostri prodotti floreali � disponibile la consegna in giornata. 
							Il tuo regalo floreale arriver� a poche ore dall'ordine effettuato
						</strong>
					</div>
				</div>
			</div>
			<div class="FotoInsta">
				<ul class="FotoInstaul" id="InstagramImg"></ul>
			</div>
			<footer>
				<%@ include file="main/footer.jsp" %>
			</footer>
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="https://kit.fontawesome.com/46a2d5ed1b.js" ></script>
		<script src="code.js" ></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<script> startShowSlides(); InstagramImg(); cerca(); </script>
	</body>
</html>