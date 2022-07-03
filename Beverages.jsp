<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Beverages</title>
	<link rel="stylesheet" type="text/css" href="Bev.css">
	<link rel="stylesheet" type="text/css" href="fluid.css">
	<link rel="stylesheet" type="text/css" href="Stylenew.css">
</head>
<form action="${pageContext.request.contextPath}/myservlet" method="post">
<body>
<nav class="head-box">
		<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/main/img/Cafe_logos.png?raw=true" alt="Digisolve logo " class="logo1">
	</nav>

	<section class="men-sec">
	<div class="men-sec2">
		<h1 class="head"><marquee direction="right">COLD BEVERAGES</marquee></h1>

	</div>
	</section>
	
	<section class="food2">
	<div class="row">
		<div class="col_span_1_of_3"><input type="radio" name="fav" value="146">Mojito
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBl-OnPrMpZ2KyJli0SuJ6zcL6sEvR5LfA-A&usqp=CAU" alt="Soup" class="s1">
			<h2 class="menu-txt2">Rs.100</h2><br>
		</div>

		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="147">Chaas
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUYqCeiWNfSAh6sbE53pbyeqAs7gnnRYpA9w&usqp=CAU" alt="Soup" class="s1">
			<h2 class="menu-txt2">Rs.90</h2></lable><br>
                        </div>


		<div class="col_span_1_of_3">
             <lable><input type="radio" name="fav" value="123">Cold Coffee
             <img src="https://assets.marthastewart.com/styles/wmax-300/d20/mld106029_0810_frape/mld106029_0810_frape_vert.jpg?itok=YLf0ensK" alt="Soup" class="s1">
			<h2 class="menu-txt2">Rs.140</h2></lable><br>
		</div>

		<div class="col_span_1_of_3">
             <lable><input type="radio" name="fav" value="120">Hot Chocolate
			<img src="https://www.fifteenspatulas.com/wp-content/uploads/2015/01/Hot-Chocolate-Recipe-Fifteen-Spatulas-1.jpg" alt="Soup" class="s1">
			<h2 class="menu-txt2">Rs.100</h2></lable><br>
		</div>

		<div class="col_span_1_of_3">
             <lable><input type="radio" name="fav" value="148">Sweet Lassi
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvfC-IdiVyFxyH610DYoXTME2wWKbbbm_Fgw&usqp=CAU" alt="Soup" class="s1">
			<h2 class="menu-txt2">Rs.90</h2></lable><br>
		</div>

		<div class="col_span_1_of_3"><input type="radio" name="fav" value="149">Iced Tea
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBHHqw0iyODTlIkzPw3gdiBtOVE17R5U0HhA&usqp=CAU" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.240</h2>


		</div>


		<div class="col_span_1_of_3"><input type="radio" name="fav" value="150">Mineral Water
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN-LnYfZZNDiNHSXFhNcGm7lEfUDGQ1_T3uA&usqp=CAU" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.70</h2>

		</div>

                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="117">Americano
			<img src="https://purpleboat.in/wp-content/uploads/2020/09/cafe-americano.jpeg" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.100</h2></lable><br>
                        </div>

                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="118">Cappuccino
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwY5nU6QUL2ZxYpg8JP8nCe59bmSNJijBdoQ&amp;usqp=CAU" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.100</h2></lable><br>
                        </div>

                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="119">Latte
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVoZY7ujsx5lXd6ledEvhWPXlqnVIBqINguzgu9rsIKGfOzy1vohZCPxqUHbgVOe0PZnY&amp;usqp=CAU" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.100</h2></lable><br>
                        </div>


                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="120">Hot Chocolate
			<img src="https://www.fifteenspatulas.com/wp-content/uploads/2015/01/Hot-Chocolate-Recipe-Fifteen-Spatulas-1.jpg" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.100</h2></lable><br>
                        </div>

                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="121">Mocha
			<img src="https://media.istockphoto.com/photos/hot-espresso-in-honey-picture-id940535678?k=20&amp;m=940535678&amp;s=612x612&amp;w=0&amp;h=9gbVYc1VJF6qoVOvHi_RPvicOpnq7y19F6wSlbW8WLk=" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.120</h2></lable><br>
                        </div>

                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="122">Irish Coffee
			<img src="https://media.istockphoto.com/photos/hot-espresso-in-honey-picture-id940535678?k=20&amp;m=940535678&amp;s=612x612&amp;w=0&amp;h=9gbVYc1VJF6qoVOvHi_RPvicOpnq7y19F6wSlbW8WLk=" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.120</h2></lable><br>
                        </div>

                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="124">Chocolate
			<img src="https://www.nestleprofessional.in/sites/default/files/2021-08/Choco-Frappe.jpg" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.180</h2></lable><br>
                        </div>

                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="125">Vanilla
			<img src="https://pancake-world.com/wp-content/uploads/2018/11/vanilla_creme_1.jpg" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.130</h2></lable><br>
                        </div>

                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="126">Black Tea
			<img src="https://i.ytimg.com/vi/WwLDYa18kJY/maxresdefault.jpg" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.100</h2></lable><br>
                        </div>


                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="127">Green Tea
			<img src="https://assets.lybrate.com/q_auto:eco,f_auto,w_1200,h_720,c_fill,g_auto/imgs/product/health-wiki/bpages/green_tea.png" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.100</h2></lable><br>
                        </div>

                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="128">Lemon Ice
			<img src="https://www.netmeds.com/images/cms/wysiwyg/blog/2020/07/1596006702_lemon_big_1.jpg" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.120</h2></lable><br>
                        </div>

                       		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="129">Peach Blueberry
			<img src="https://image.jimcdn.com/app/cms/image/transf/dimension=666x10000:format=jpg/path/s4646b755a50b5caf/image/ic5cad52ebc60cf7f/version/1440717143/this-sweet-peach-iced-tea-with-blueberries-has-so-much-flavor-and-is-a-real-show-stopper-with-all-of-the-beautiful-colors-it-s-perfect-for-a-sweet-summer-treat-or-a-special-drink-when-company-comes-over.jpg" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.180</h2></lable><br>
                        </div>

                        		<div class="col_span_1_of_3"><lable><input type="radio" name="fav" value="130">Matcha Latte
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpBthz_ZFafj2CifVDQ18CF1DsCPlrWc4YlXpHlPG5iwTaVSTG8cXj8nENarDny2SWSrE&amp;usqp=CAU" alt="Soup" class="s1">
			<h1 class="menu-txt"></h1>
			<h2 class="menu-txt2">Rs.200</h2></lable><br>
                        </div>
<button type="submit" value="Add to Cart" class="button-3">Add to cart</button>

	
</body>
</html>