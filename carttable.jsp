<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CART</title>
</head>
<body>
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
	
	//out.println(request.getAttribute("cid"));
	//String c = String(session.getAttribute("cid"));
	Integer c = (Integer)session.getAttribute("cid");
	out.println(c);
	//int cd=(Integer)c;
	//out.println(cd);
	String query = "select c.mid,qty,mname,mprice,mimg from cart c, menu_cafe m where c.mid=m.mid and cid = ?";
    PreparedStatement s = con.prepareStatement(query);
    s.setInt(1, c );

   ResultSet rs = s.executeQuery();
%>
<a href="Dine.jsp">Home Page</a>
<a href="Menu.jsp">Main Course Page</a>
<TR>

	<%  while(rs.next())
{
%>
<TD> <%= rs.getString("mid") %> </TD>
<TD> <%= rs.getString("mname") %> </TD>
<TD> <%= rs.getInt("mprice") %> </TD>
<TD> <%= rs.getInt("qty") %> </TD>

</TR>
<br>
</table>
<%
}
	%>
	<form action="${pageContext.request.contextPath}/changecart" method="post">
 <br><br>
  <label for="menu_id">Menu_Id</label>
  <input type="text" name="menuid" value="" placeholder="Menu Id from above"></input>
  <label for="quantity">Quantity</label>
  <input type="text" name="qty" value="" placeholder="0 if you want to delete the item"> </input><br><br>
   <button type="submit" name="alter_order">ALTER ORDER</button><br><br>
  </form>
  <form name="main0" action="Order.jsp" method="get">
	  <button type="submit" name="submit_order" onclick="placeorder()">SUBMIT</button>
	  </form>
	
	<%
	con.close();
	}
	catch(Exception e){out.println(e);}
%>
</body>
</html>