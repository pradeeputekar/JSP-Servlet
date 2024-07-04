//read data from xml file

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class ServletConfigDemo extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		ServletConfig config = getServletConfig();
		String username = config.getInitParameter("username");
		String password = config.getInitParameter("password");
		out.println("username1 : "+username );
		out.println("password : "+password );
	}
}
