<%@page import="mypack.InsertCustomer" %>

<jsp:useBean id="customer" class='mypack.Customer' scope="session" />

<jsp:setProperty property="*" name="customer"/>
<%
  boolean flag = InsertCustomer.saveCustomer(customer);
  if (flag)
	   out.println("<h3>Customer added successfully</h3>");
%>

<a href="customer.html">Add new customer</a>
<a href="DisplayCustomer.jsp">Display Customer Details</a>