

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DriverRegistration
 */
@WebServlet("/DriverRegistration")
public class DriverRegistration extends HttpServlet {
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out=response.getWriter();
		    response.setContentType("text/html");
		    String rad=request.getParameter("You");
		    if(rad.equals("Yes"))
		    {
		    	String ids =request.getParameter("idd");
			    int id =Integer.parseInt(ids);
			    String name =request.getParameter("nm");
			    String agg =request.getParameter("ag");
			    int age =Integer.parseInt(agg);
			    String ex = request.getParameter("exp");
			    String cit=request.getParameter("city");
			    String ct= request.getParameter("cont");
			    int cont=Integer.parseInt(ct);
			    String rc=request.getParameter("fno");
			    String regno=request.getParameter("RegNum");
			    String dimg = request.getParameter("img");
			    String aimg = request.getParameter("img1");
			    String limg = request.getParameter("img2");
			    try {
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad720","root","root");
				    String qr="insert into dverify values(?,?,?,?,?,?,?,?,?,?,?)";
				    PreparedStatement ps=con.prepareStatement(qr);
				    ps.setInt(1,id);
				    ps.setString(2,name);
				    ps.setInt(3,age);
				    ps.setString(4,ex);
				    ps.setString(5,cit);
				    ps.setInt(6,cont);
				    ps.setString(7, rc);
				    ps.setString(8,regno);
				    ps.setString(9,dimg);
				    ps.setString(10,aimg);
				    ps.setString(11,limg);
			     
				    int i=ps.executeUpdate();
				    RequestDispatcher rd=request.getRequestDispatcher("AddDriver.jsp");
				    if(i>0)
				    {
				    	rd.include(request, response);
				    	out.println("<script>window.alert('Driver registered successfully we will contact you within 24 hours.....')</script>");
				    }
				    else
				    {
				    	rd.include(request,response);
				    	out.println("<script>window.alert('Registration failed.....')</script>");
				    }

				    con.close();

				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

		    }
		    else
		    {
		    String ids =request.getParameter("idd");
		    int id =Integer.parseInt(ids);
		    String name =request.getParameter("nm");
		    String agg =request.getParameter("ag");
		    int age =Integer.parseInt(agg);
		    String ex = request.getParameter("exp");
		    String ct= request.getParameter("cont");
		    int cont=Integer.parseInt(ct);
		    String cit=request.getParameter("city");
		    String dimg = request.getParameter("img");
		    String aimg = request.getParameter("img1");
		    String limg = request.getParameter("img2");
		    try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad720","root","root");
			    String qr="insert into dverify values(?,?,?,?,?,?,?,?,?)";
			    PreparedStatement ps=con.prepareStatement(qr);
			    ps.setInt(1,id);
			    ps.setString(2,name);
			    ps.setInt(4,age);
			    ps.setString(5,ex);
			    ps.setString(6,cit);
			    ps.setInt(3,cont);
			    ps.setString(7,dimg);
			    ps.setString(8,aimg);
			    ps.setString(9,limg);
		     
			    int i=ps.executeUpdate();
			    RequestDispatcher rd=request.getRequestDispatcher("AddDriver.jsp");
			    if(i>0)
			    {
			    	rd.include(request, response);
			    	out.println("<script>window.alert('Driver registered successfully we will contact you within 24 hours.....')</script>");
			    }
			    else
			    {
			    	rd.include(request,response);
			    	out.println("<script>window.alert('Registration failed.....')</script>");
			    }

			    con.close();

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    }

	}

}
