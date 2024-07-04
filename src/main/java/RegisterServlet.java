

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;


public class RegisterServlet extends HttpServlet {
    Connection con;
    public void init (ServletConfig config)
    {
    	try {
    		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  				
    	    String dbURL = "jdbc:sqlserver://localhost:1433;databaseName=myDatabase;encrypt=false;trustServerCertificate=true";
            String user = "test";
            String pass = "test@123";
            con = DriverManager.getConnection(dbURL, user, pass);
    	} catch (Exception e) {
    		System.out.println(e);
    	}
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			PrintWriter out = response.getWriter();
		    String name = request.getParameter("name");
		    String username = request.getParameter("username");
		    String password = request.getParameter("password");
		  	try
			{
		       PreparedStatement st = con.prepareStatement("insert into users values ('"+name+"','"+username+"','"+password+"')");
		       st.executeUpdate();
		       response.setContentType("text/html");
		       out.println("Registered Successfully");
		       out.println("Click <a href=\"/WebProj/Login.jsp\">here</a> to Login");
		    } catch (Exception e) {
			   out.println(e);
		}
	     
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void destroy()
	{
		try { 
		con.close();
		} catch (Exception e) {
			System.out.println("Error closing database connection: " + e.getMessage());
		}
	}

}
