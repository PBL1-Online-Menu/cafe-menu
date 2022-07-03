

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

/**
 * Servlet implementation class changecart
 */
@WebServlet("/changecart")
public class changecart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changecart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
			HttpSession ses = request.getSession();
			PrintWriter out = response.getWriter();
			
			 int mid= Integer.valueOf(request.getParameter("menuid"));
			 int qty= Integer.valueOf(request.getParameter("qty"));
			 out.println(mid+""+qty);
			int c=(Integer)ses.getAttribute("cid");
			 if(qty==0)
			 {
				 PreparedStatement pst=con.prepareStatement("delete from cart where cid=? and mid=?");
				 pst.setInt(1, c);
				 pst.setInt(2, mid);
				 int i=pst.executeUpdate();
				 if(i>0)
				 {
					 out.println("<html><body><b>Successfully Deleted"
		                        + "</b></body></html>");
		            response.sendRedirect(request.getContextPath() + "/carttable.jsp");
				 }
			 }
			 else {
			 PreparedStatement pst=con.prepareStatement("update cart set qty=? where cid=? and mid=?");
			 pst.setInt(1, qty);
			 pst.setInt(2, c);
			 pst.setInt(3, mid);
			 int i=pst.executeUpdate();
			 if(i>0)
			 {
				 out.println("<html><body><b>Successfully Updated"
	                        + "</b></body></html>");
	            response.sendRedirect(request.getContextPath() + "/carttable.jsp");
			 }
			 
			 }
			 con.close();
			 
	}

	catch(Exception e){System.out.println(e);}

}

}
