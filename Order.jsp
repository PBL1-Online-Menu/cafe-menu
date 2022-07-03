<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ORDER</title>
</head>
<body>
<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
	<%@ page import="java.util.*" %>
	<%@ page import="java.awt.*" %>
	<%@ page import="java.awt.event.*" %>
	<%@ page import="javax.swing.*" %>
	<h1>CAFE NAME</h1>
	
	<% 
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	
	int p=0;
	//Statement stm=con.createStatement();
	
	
	//out.println(request.getAttribute("cid"));
	//String c = String(session.getAttribute("cid"));
	Integer c = (Integer)session.getAttribute("cid");
	out.println(c);
	
    PreparedStatement s = con.prepareStatement("select * from customer where cid=?");
    s.setInt(1, c);
	//out.println("HEY");
   ResultSet rs = s.executeQuery();
   while(rs.next())
   { 
   		
	%>
	<h3>Name:<%= rs.getString("cname") %></h3>
	<h3>Address:<%= rs.getString("caddr") %></h3>
	<h3>Contact No:<%= rs.getString("cno") %></h3>
	<h3>Table No:<%= rs.getInt("tno") %></h3>
	<%//out.println("BABY");%>
	
<table>
<TR>
<td>Menu name</td>
<td>Price</td>
<td>Qty</td>
</TR>
	<%
	   }
	   
	//String query = "";
	s=con.prepareStatement("select cid,qty,mname,mprice from cart c, menu_cafe m where c.mid=m.mid and cid = ?");
	s.setInt(1, c);
	rs=s.executeQuery();
	while(rs.next())
	{
		p=p+rs.getInt("mprice");
	%>

<TR>
<TD> <%= rs.getString("mname") %> </TD>
<TD> <%= rs.getInt("mprice") %> </TD>
<TD> <%= rs.getInt("qty") %> </TD>

</TR>
<br>
</table>
<%
}
int gst=(p*5)/100;
p=p+gst;
%>
<h3>Total with GST: <%= p %></h3>
<button type="submit" value="Add to Cart" class="button-3">Proceed to Pay</button>
<%
	
con.close();
}
	
	catch(Exception e){out.println(e);}
%>
</body>
</html>