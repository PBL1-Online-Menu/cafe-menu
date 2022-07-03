<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cloud kitchen</title>
	<link rel="stylesheet" type="text/css" href="Style2.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css" integrity="sha384-zIaWifL2YFF1qaDiAo0JFgsmasocJ/rqu7LKYH8CoBEXqGbb9eO+Xi3s6fQhgFWM" crossorigin="anonymous">
</head>
<body>
	<header>
		<header>
		<nav class="head-box">
			<img src="https://logodesign.business/wp-content/uploads/2019/11/Cafe_logos-24.png" alt="Digisolve logo " class="logo">
			<ul class="main-nav">
					<li><a href ="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
			</ul>
		</nav>
	</header>
	
	
	
	<form action="${pageContext.request.contextPath}/myservlet" method="post">
	

	<section class="food-section">
		<div class="menu-div">

			<h2 class="section-heading"><marquee>Top Picks for You</marquee></h2>

		</div>
		
		<ul class="Varities">

			<figure class="food-fig"><label><input type="radio"  name="fav" value="101" class="food-name">Sizzling Browine
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Sizle.jpg?raw=true" alt="Sizzling">
				<p class="food-price">Rs.195</p></label><br>

				
			</figure>
		
			<figure class="food-fig"><input type="radio" name="fav" value="102" class="food-name">Crossiant
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Crosiant.jpg?raw=true" alt="cro" >
				<p class="food-price">Rs.200</p></label><br>
			</figure>
		
		
		
			<figure class="food-fig"><input type="radio" name="fav" value="103" class="food-name">Chocolate Mousse jar
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Choclete.jpg?raw=true" alt="Choclete">
				<p class="food-price">Rs.300</p></label><br>
			</figure>
	
			<figure class="food-fig">
                <input type="radio" name="fav" value="104" class="food-name">Tairamisu Jar
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Tiramisu.jpg?raw=true" alt="Tiramisu">
				<p class="food-price">Rs.125</p></label><br>
				
			</figure>
			<button type="submit" value="Add to Cart" class="button-3">Add to cart</button>
	</ul>





	</section>
	<section>
		<section class="About-section">
		<div class="row">
			<div class="col span_1_of_2 about-box">
				<h2 class="about-heading">Recommended</h2>
		</div>
		<div class="col_span_1_of_2">
			<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Topsell.jpg?raw=true" alt="Main Course" class="Top-img">
			<a href="Menu.jsp" class="btn-full"><p class="fname">MAIN COURSE</p></a>
		</div>

		<div class="col_span_1_of_2">
			<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Bev.jpg?raw=true" alt="Beverages" class="Bev-img">
			<a href="Beverages.jsp" class="btn-full"><p class="fname">BEVERAGES</p></a>

		</div>
		
		<div class="col_span_1_of_2">
			<img src="data:image/jpeg;base64,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" alt="Desserts" class="Junk-img">
			<a href="Desserts.jsp" class="btn-full"><p class="fname">DESSERTS</p></a>

		</div>

		
	</section>

	<footer>
		<div class="row">
			<div class="col_span_1_of_2">
				<ul class="footer-nav">
					<li><a href="#">About us</a></li>
					<li><a href="#">Help & Support</a></li>
					<li><a href="#">Blog</a></li>
				</ul>
			</div>

			<!---<div class="col_span_1_of_2">
				<ul class="Social-links"></ul>
				<li><a href=""><i class="fab fa-facebook"></i></a></li>
				<li><a href=""><i class="fab fa-instagram"></i></a></li>
				<li><a href=""><i class="fab fa-twitter-square"></i></a></li>
			</div>
		</div>--->
	</footer>

</body>
</html>