

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


//import cafe_try.DatabaseConnection;
/**
 * Servlet implementation class cust
 */
@WebServlet("/cust")
public class cust extends HttpServlet {
	public int CID;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cust() {
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
			
			PrintWriter out = response.getWriter();
			//response.sendRedirect(request.getContextPath() + "/Dine.jsp");
            Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
            	    ResultSet.CONCUR_READ_ONLY);
            ResultSet rs=stmt.executeQuery("select * from customer");
            //while(rs.next()) 
            rs.last();
            int cd=rs.getInt(1);
            cd = cd + 1;
            int tno= Integer.valueOf(request.getParameter("tno"));
            out.println("<html><body><b>"+cd + tno+"</b></body></html>");
            //request.setAttribute("cid", cd);
            HttpSession ses = request.getSession(); 
            ses.setMaxInactiveInterval(0);
            ses.setAttribute("cid", cd);
            ses.setAttribute("tno", tno);
            //CID = cd;
        //String mid = request.getParameter("fav");
        //out.println("<html><body><b>"+request.getParameter("contact") + "</b></body></html>");
        PreparedStatement pst=con.prepareStatement("insert into customer values(?,?,?,?,?)");
        pst.setInt(1, cd);
		pst.setString(2, request.getParameter("fname"));
		pst.setString(3, request.getParameter("address"));
		pst.setString(4, request.getParameter("contact"));
		pst.setInt(5, Integer.valueOf(request.getParameter("tno")));
		int i=pst.executeUpdate();
		if(i>0)
		{
			
            out.println("<html><body><b>Successfully Inserted" + "</b></body></html>");
            response.sendRedirect(request.getContextPath() + "/Dine.jsp");
            
		}
		con.close();
        
	}

		catch(Exception e){System.out.println(e);}

}
	}


