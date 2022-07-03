<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Cart</title>
<link rel="stylesheet" type="text/css" href="Style4.css">
</head>
<body>

<%@ page trimDirectiveWhitespaces="true" %>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
	<%@ page import="java.util.*" %>
	<%@ page import="java.awt.*" %>
	<%@ page import="java.awt.event.*" %>
	<%@ page import="javax.swing.*" %>
	
	<% 
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	
	
	Statement stm=con.createStatement();  
	   %>

<div class="cart-container">
		<div class="Header">
			<h3 class="Heading">Food Cart</h3>
			<div>
				<a href="#" class="btn1">Remove all</a>
			</div>
		</div>
	
	<!-- JavaScript code-->
					<script>
						//initialising a variable name data
						var data = 0;

						//printing default value of data that is 0 in h2 tag
						document.getElementById("counting").innerText = data;

						//creation of increment function
						function increment() {
							data = data + 1;
							document.getElementById("counting").innerText = data;
						}
						//creation of decrement function
						function decrement() {
			            	if(data>0){
			               data = data - 1;
							document.getElementById("counting").innerText = data;

			                }
			                else{
							const element = document.getElementById("container");
							element.remove();

			                }
						}
					</script>
		
		<%
		ResultSet rs=stm.executeQuery("select * from cart where cid = 67 "); 
		%>
	<% while(rs.next())  {%>
		<div class="cart-items">
			<div class="image-box">
				<!-- <img src="<%out.println(rs.getString(1)); %>" style=height:"80px"> -->
			</div>
			<div class="about">
				<h1 class="title"><%out.println(rs.getInt(2)); %></h1>
				<h3 class="subtitle"><%out.println(rs.getInt(3)); %></h3>
			</div>
			<div class="counter"></div>
			<div class="prices"></div>
			
		<div class="counter">

			<button class="btn" onclick="decrement()">-</button>
			<div class="count" id="counting">0</div>
			<button class="btn" onclick="increment()">+</button>
		</div>
		

			<div class="prices">
				<div class="amount" id="amt"><% %></div>
				<div class="remove"><u><a href="#" class="r1">Remove</u></div></a>
			</div>

		</div>

			<% 
			}%>
<% 
		con.close();}
	
		catch(Exception e){System.out.println(e);}
		
		%>
		<div class="cart-items">
			<div class="image-box">
				<img src="resources/img/Icecream.jpg" style={{height="120px" class="f-image">
			</div>
			<div class="about">
				<h1 class="title">CHOCLETE</h1>
				<h3 class="subtitle">60RS</h3>
			</div>
			<div class="counter"></div>
			<div class="prices"></div>

		<div class="counter">

			<button class="btn" onclick="decrement()">-</button>
			<div class="count" id="counting">0</div>
			<button class="btn" onclick="increment()">+</button>
		</div>

			<div class="prices">
				<div class="amount">60</div>
				<div class="save"><u><a href="#" class="save1">Save for later</u></div></a>
				<div class="remove"><u><a href="#" class="r1">Remove</u></div></a>
			</div>

	</div>

	<hr>
			<div class="checkout">
			<div class="total">
			<div>
			<div class="Subtotal">SUB-TOTAL</div>
			<div class="Items">2 ITEMS</div>
		</div>
		<div class="total-amount">260RS</div>
		</div>
		<button class="button">CHECKOUT</button>
	</div>

	</div>

	</div>
</body>
</html>