

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
 * Servlet implementation class myservlet
 */
@WebServlet("/myservlet")
public class myservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /*
     * 
     * int m=Integer.parseInt(rs.getString(1));
				out.println(m);
				PreparedStatement pst=con.prepareStatement("insert into cart values(?,?,?)");
				pst.setInt(1,67);
				pst.setInt(2,101);
				pst.setInt(3,1);
				int i=pst.executeUpdate();
				if(i>0)
				{
					out.println("Item Added Successfully!");
				}
     * 
     */
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
			   
	       // String mid = request.getParameter("fav");
	        
			
	        int tno=(Integer)ses.getAttribute("tno");
	        int cid=(Integer)ses.getAttribute("cid");
	        int mid=Integer.valueOf(request.getParameter("fav"));
	        
	        out.println("<html><body><b>"+mid+ ""+ "</b></body></html>");
	        int count=0;
	        int qty=0;
			//String query = "select * from cart where cid=? and mid=?";
		    PreparedStatement s = con.prepareStatement("select *  from cart where cid=? and mid=?");
		    //s.setInt(1,tno);
			s.setInt(1,cid);
	        s.setInt(2, mid);
		   ResultSet rs = s.executeQuery();
		   while(rs.next())
		   { count=rs.getInt(1);
		   qty=rs.getInt(4);
		   
		   }
		   out.println(qty+""+count);
		   if(count>0)
		   {
			   //int qty=rs.getInt(4);
			   out.println(qty+""+count);
			   qty=qty+1;
			   out.println(qty);
			   PreparedStatement pst=con.prepareStatement("update cart set qty=? where cid=? and mid=?");
			   pst.setInt(1, qty);
			   pst.setInt(2, cid);
			   pst.setInt(3, mid);
				int i=pst.executeUpdate();
				if(i>0)
				{
					
		            out.println("<html><body><b>Successfully Inserted"
		                        + "</b></body></html>");
		            response.sendRedirect(request.getContextPath() + "/carttable.jsp");
				}
		   }
		   else {
	
        PreparedStatement pst=con.prepareStatement("insert into cart values(?,?,?,?)");
		pst.setInt(1,tno);
		pst.setInt(2,cid);
        pst.setInt(3, mid);
		//pst.setInt(2,101);
		pst.setInt(4,1);
		int i=pst.executeUpdate();
		if(i>0)
		{
			
            out.println("<html><body><b>Successfully Inserted"
                        + "</b></body></html>");
            response.sendRedirect(request.getContextPath() + "/carttable.jsp");
		}
		  }
		   con.close();
	}
		

		catch(Exception e){System.out.println(e);}

}
}
