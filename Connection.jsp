<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
try{
	String fnm="Hello";
	String mnm="so";
	String bnm="then";
	String gen="Female";
	String addr="mai";
	String email="xyz@gmail.com";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	//DriverManager.registerDriver(new OracleDriver());
	//DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	request.setAttribute("connect",con);
	
	String sql= "insert into custtomer values(?,?,?,?,?,?)";
	PreparedStatement stmt=con.prepareStatement(sql);

	stmt.setString(1, fnm);
	stmt.setString(2, mnm);
	stmt.setString(3, bnm);
	stmt.setString(4, gen);
	stmt.setString(5, addr);
	stmt.setString(6, email);

	int flag=stmt.executeUpdate();
	
	if(flag==1)
	{
		System.out.println("Registered successfully");
	}

	}
	
	catch(Exception e){System.out.println(e);
	e.printStackTrace();}
%>
</body>
</html>