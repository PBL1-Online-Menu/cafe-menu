<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DESSERTS</title>
	<link rel="stylesheet" type="text/css" href="dessubmen.css">
	<link rel="stylesheet" type="text/css" href="fluid.css">
</head>
<form action="${pageContext.request.contextPath}/myservlet" method="post">
<body>
<header>
	<nav class="head-box">
		<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Cafe_logos.png?raw=true" alt="Digisolve logo " class="logo">
	</nav>
</header>

<section class="men-sec">
	<div class="men-sec2">
	<h2 class="section-heading"><marquee>Desserts</marquee></h2>
		<!-- <h1 class="head"><marquee direction="right">MENU</marquee></h1> -->

	</div>

</section>



<section class="food2">
	<div class="row">

<div class="col_span_1_of_3">
<!-- <h1 class="ice">ICE-CREAM</h1> -->
<label><input type="radio" name="fav" value="105">Chocolate Ice-Cream
<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Icecream.jpg?raw=true" alt="food" class="s1">
<h1 class="menu-text"> </h1>
<h2 class="menu-txt2">Rs.100</h2>
</div>



<div class="col_span_1_of_3">
               <input type="radio" name="fav" value="107">Strawberry Ice-Cream
				<img src="https://www.recipegirl.com/wp-content/uploads/2007/08/Strawberry-Ice-Cream-4.jpg" alt="food" class="s1">
				<h1 class="menu-text"></h1>
				<h2 class="menu-txt2">Rs.130</h2>
</div>


<div class="col_span_1_of_3">
              <input type="radio" name="fav" value="106">Vanilla Ice-Cream
				<img src="https://www.savoryexperiments.com/wp-content/uploads/2021/06/Vanilla-Ice-Cream-9.jpg" alt="food" class="s1">
				<h1 class="menu-text"></h1>
				<h2 class="menu-txt2">Rs.110</h2>
</div>



<div class="col_span_1_of_3">
                <label><input type="radio" name="fav" value="108">Choco Chip Ice-Cream
				<img src="https://www.rebootwithjoe.com/wp-content/uploads/2014/03/Vegan-Chocolate-Chip-Ice-Cream2.jpg" alt="food" class="s1">
				<h1 class="menu-text"></h1>
				<h2 class="menu-txt2">Rs.180</h2>
</div>


<div class="col_span_1_of_3">Cornetto
                <label><input type="radio" name="fav" value="145">Cornetto
				<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC0of_Sxwogq_7oef4kmsk9WkOl-nESeaCoQ&usqp=CAU" alt="food" class="s1">
				<h1 class="menu-text"> </h1>
				<h2 class="menu-txt2">Rs.180</h2>
</div>


<div class="col_span_1_of_3">
                <label><input type="radio" id="105" value="105">Chocolate Ice-Cream
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Icecream.jpg?raw=true" alt="food" class="s1">
				<h1 class="menu-text"></h1>
				<h2 class="menu-txt2">Rs.100</h2>
</div>


<div class="col_span_1_of_3">
				<label><input type="radio" name="fav" value="101">Sizzling Browine
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Sizle.jpg?raw=true" alt="Sizzling" class="s1">
				<h1 class="menu-text"></h1>
				<h2 class="menu-txt2">Rs.195</h2>
</div>

<div class="col_span_1_of_3">
		<input type="radio" name="fav" value="102">Crossiant
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Crosiant.jpg?raw=true" alt="cro" class="s1">
				<h1 class="menu-text"></h1>
				<h2 class="menu-txt2">Rs.200</h2>
</div>


<div class="col_span_1_of_3">
			<input type="radio" name="fav" value="103">Chocolate Moussie jar
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Choclete.jpg?raw=true" alt="Choclete" class="s1">
				<h1 class="menu-text"></h1>
				<h2 class="menu-txt2">Rs.300</h2>
</div>

<div class="col_span_1_of_3">
                 <input type="radio" name="fav" value="104">Tairamisu Jar
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Tiramisu.jpg?raw=true" alt="Tiramisu" class="s1">
				<h1 class="menu-text"></h1>
				<h2 class="menu-txt2">Rs.240</h2>
				
			</div>
<button type="submit" value="Add to Cart" class="button-3">Add to cart</button>
	</div>

</section>




</body>
</html>