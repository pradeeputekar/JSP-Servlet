<body>
<h1>Login User</h1>
 <form name="f1" action="/WebProj/LoginServlet" method="post" onSubmit="return validate()">
   username : <input type="text" name="username" /><br>
   password : <input type="text" name="password" /><br>
   <input type="submit" value="Login" />
 </form>
 
 New User <a href="Register.jsp">Register</a>
 <script type="text/javascript">
 function validate() {
	 var x1 = document.f1.username.value;
	 var x2 = document.f1.password.value;
	 if(x1 == null || x1 == "" || x2 == null || x2 == ""){
		 alert("username or password should not be empty");
		 return false;
	 } 
	 return true;
 }
 </script>
</body>