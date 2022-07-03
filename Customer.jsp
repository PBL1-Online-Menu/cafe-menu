<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>Customer_Information Form</title>
		<h1>Customer Information Form</h1>
		<p>Please fill the customer information form to join !</p>

</head>
<form action="${pageContext.request.contextPath}/cust" method="post">
<body>
  <label for="name">Name:</label>
  <input type="text" placeholder="First Name" id="fname" name="fname" required><br>
  
  <br><label for=" Customer Address"> Customer Address:</label><br>
  <textarea rows = "5" cols = "60" placeholder="Address" name = "address" required></textarea><br>
  <br> <label for="contact">Contact Number:</label>
  <input type="text" placeholder="Contact Number" id="contact" name="contact" required><br>
  <br><p>
  <label for="tableno">Table No:</label>
  <input type="text" placeholder=" Table No. on QR Code" id="tno" name="tno" required><br><br>
  	<input type="checkbox"required>
  	All customer information will be kept with discretion and will not be used for other marketing or advertisement purpose without customer approval.
  </p><br>
  <br><input type="submit" value="Submit"> <input type="reset">
</body>
</html>