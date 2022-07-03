<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<h1>Celebration Package</h1>
<meta charset="UTF-8"> 
<style>  
.container{  
text-align: center;    
width: 300px;  
height: 200px;  
padding-top: 100px;  
}  
#btn{  
font-size: 25px;  
}  
</style>
</head>
<form action="${pageContext.request.contextPath}/myservlet" method="post">
<body>
<label><input type="radio" name="fav" value="141">Music<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/c26d4543e5011f370451854b2d8db52644a09cb9/Party_music.jpg?raw=true
    "alt="Party Music!!" width="200" height="200" style="vertical-align:middle"><br>Rs.1000</label>
    <br>

<label><input type="radio" name="fav" value="142">Decoration<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/c26d4543e5011f370451854b2d8db52644a09cb9/Party_decoration.jpg?raw=true
    "alt="Decoration is here!!" width="200" height="200" style="vertical-align:middle"><br>Rs.2000</label>
    <br>

<label><input type="radio" name="fav" value="143">Flower<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/c26d4543e5011f370451854b2d8db52644a09cb9/Party_flower.jpg?raw=true
    "alt="Party flower is here!!" width="200" height="200" style="vertical-align:middle"><br>Rs.500</label>
    <br>

<label ><input type="radio" name="fav" value="780">Cake 
<img src="https://github.com/PBL1-Online-Menu/cafe-menu/blob/c26d4543e5011f370451854b2d8db52644a09cb9/Party_cake.jpg?raw=true
    "alt="Cake is here!!" width="200" height="200" style="vertical-align:middle"><br>Rs.780</label>
<br>
    

<div class="container">
    <button type="submit" value="Add to Cart" class="button-3">Add to cart</button>
</div class="container"> 

</body>
</html>