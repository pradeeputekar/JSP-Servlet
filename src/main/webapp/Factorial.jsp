
<%!
    int fact (int n)
    {
	   int f = 1;
	   for (int i=n; i>=1 ;i--) 
		   f = f*i;
	 return f;
    }

%>
<%
  int n = Integer.parseInt(request.getParameter("num"));

%>

<h3 style="text-align:center; color:blue;">Factorial : <%= fact(n) %></h3>