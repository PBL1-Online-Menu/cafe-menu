<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Menu List</title>
		<link rel="stylesheet" type="text/css" href="Stylenew.css">
		<link rel="stylesheet" type="text/css" href="fluid.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css" integrity="sha384-eoTu3+HydHRBIjnCVwsFyCpUDZHZSFKEJD0mc3ZqSBSb6YhZzRHeiomAUWCstIWo" crossorigin="anonymous">

</head>
<body>
<form action="${pageContext.request.contextPath}/myservlet" method="post">
		<header>
		<header>
		<nav class="head-box">
			<img src="https://logodesign.business/wp-content/uploads/2019/11/Cafe_logos-24.png"" alt="Digisolve logo " class="logo">
			<ul class="main-nav">
					<li><a href ="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
			</ul>
		</nav>
	</header>


	<section class="food-section">
		<div class="menu-div">
				<h1 class="section-heading">Menu</h1>
		</div>
	</section>

	
	<section class="food-menu">
		<div class="row">
			<div class="col_span_1_of_3">
				<h1 class="rol">ROLLS</h1>
                <input type="radio" name="fav" value="131"><h1 class="menu-text">Chicken Roll</h1>
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/chicken-roll.jpg?raw=true" alt="food" class="croll">	
				<h2 class="menup">Rs.100</h2>
			</div>

			<div class="col_span_1_of_3">
               <label><input type="radio" name="fav" value="132">Paneer Roll
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Veg.jpg?raw=true" alt="food" class="croll">
				<h1 class="menu-text"></h1>
				<h2 class="menup">Rs.100</h2>
			</div>

			<div class="col_span_1_of_3">
               <label><input type="radio" name="fav" value="133">Tacos
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Tacos.jpg?raw=true" alt="food" class="croll">
				<h1 class="menu-text"></h1>
				<h2 class="menup">Rs.150</h2>
			</div>

			<div class="col_span_1_of_3">
                <label><input type="radio" name="fav" value="134">Quesadilla 
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Quasad.jpg?raw=true" alt="food" class="croll">
				<h1 class="menu-text"></h1>
				<h2 class="menup">Rs.200</h2>
			</div>

			<div class="col_span_1_of_3">
                <label><input type="radio" name="fav" value="135">Spring Roll
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Spring.jpg?raw=true" alt="food" class="croll">
				<h1 class="menu-text"></h1>
				<h2 class="menup">Rs.230</h2>
				
			</div>
			<button type="submit" value="Add to Cart" class="button-3">Add to cart</button>

		<div class="row">
			<div class="col_span_1_of_3">
				<h1 class="piza">PIZZA</h1>
                <label><input type="radio" name="fav" value="136">Chicken Pizza
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Chicken-pizza.jpg?raw=true" alt="food" class="croll">
				<h1 class="menu-text"></h1>
				<h2 class="menup">Rs.300</h2>
			</div>

			<div class="col_span_1_of_3">
                <label><input type="radio" name="fav" value="137">Paneer Pizza
				<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLBjuZ3A-VGaUPdS989gJ-TAUHJJGJLq7kEw&amp;usqp=CAU" alt="food" class="croll">
				<h1 class="menu-text"></h1>
				<h2 class="menup">Rs.250</h2>
			</div>

			<div class="col_span_1_of_3">
                <label><input type="radio" name="fav" value="138">Cheese Pizza
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Chesse.jpg?raw=true" alt="food" class="croll">
				<h1 class="menu-text"></h1>
				<h2 class="menup">Rs.200</h2>
			</div>

			
			<div class="col_span_1_of_3">
                <label><input type="radio" name="fav" value="140" class="menu-text">Margherita Pizza
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/mar.jpg?raw=true" alt="food" class="croll">
				<h1 class="menu-text"></h1>
				<h2 class="menup">Rs.230</h2>
             </div>

		<button type="submit" value="Add to Cart" class="button-3">Add to cart</button>

		<div class="row">
			<div class="col_span_1_of_3">
				<h1 class="ice">SALAD</h1>
                 <input type="radio" name="fav" value="151 ">Watermelon Salad
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Watermelon.jpg?raw=true" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.300</h2><br>
			</div>

			<div class="col_span_1_of_3">
                <label><input type="radio" name="fav" value="116 ">Ceaser Salad
				<img src="https://bestofvegan.com/wp-content/uploads/2020/07/Vegan-Caesar-Salad.jpg" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.800</h2></label><br>
			</div>

			<div class="col_span_1_of_3">
               <label><input type="radio" name="fav" value="152">Cucumber Salad
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Cucumber.jpg?raw=true" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.200</h2></label><br>
			</div>

			<div class="col_span_1_of_3">
				<input type="radio" name="fav" value="153">Greek salad
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Greek.jpg?raw=true" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.200</h2></label><br>
			</div>

			<div class="col_span_1_of_3">
				<input type="radio" name="fav" value="154">Pesto Pasta Salad
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Pasta.jpg?raw=true" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.230</h2></label><br>
			</div>

			<div class="col_span_1_of_3">
				<input type="radio" name="fav" value="155">Summer Fruit Salad
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Summer2.jpg?raw=true" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.230</h2><br>
			</div>

			<div class="col_span_1_of_3">
				<input type="radio" name="fav" value="156">Cream Fruit Salad
				<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Cream.jpg?raw=true" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.230</h2><br>
			</div>

			<div class="col_span_1_of_3">
				<input type="radio" name="fav" value="110">Salmon Poke Bowl
				<img src="https://imgmediagumlet.lbb.in/media/2020/02/5e4a3f72417e2f442978f5da_1581924210642.jpeg?fm=webp&amp;w=750&amp;h=500&amp;dpr=1" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.1030</h2><br>
			</div>

			<div class="col_span_1_of_3">
				<input type="radio" name="fav" value="111">Avocado
				<img src="https://www.vegrecipesofindia.com/wp-content/uploads/2019/12/avocado-salad-280x280.jpg" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.650</h2><br>
			</div>

			<div class="col_span_1_of_3">
				<input type="radio" name="fav" value="112">Sprouted moong
				<img src="https://www.vegrecipesofindia.com/wp-content/uploads/2013/04/moong-sprouts-salad-280x280.jpg" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.500</h2><br>
			</div>

			<div class="col_span_1_of_3">
				<input type="radio" name="fav" value="113">Crunchy Ribbon
				<img src="https://i.ndtvimg.com/i/2015-09/ribon-salad-625_625x350_61441360635.jpg" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.780</h2><br>
			</div>

			<div class="col_span_1_of_3">
				<input type="radio" name="fav" value="114">Mediterranean Watermelon
				<img src="https://i.ndtvimg.com/i/2015-09/salad-625_625x350_81441360886.jpg" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.690</h2><br>
			</div>

			<div class="col_span_1_of_3">
				<input type="radio" name="fav" value="115">Mixed Bean
				<img src="https://c.ndtvimg.com/2018-10/krs4msm8_bean-salad_625x300_19_October_18.jpg" alt="food" class="croll">
				<h2 class="menu-txt2">Rs.700</h2><br>
			</div>
	
		<button type="submit" value="Add to Cart" class="button-3">Add to cart</button>

	</section>
</body>
</html>