<body>
<h1>Registration form</h1>
 <form name="f1" action="/WebProj/RegisterServlet" method="post" onSubmit="return validate()">
   Name : <input type="text" name="name" /><br>
   username : <input type="text" name="username" /><br>
   password : <input type="text" name="password" /><br>
   Retype Password : <input type="text" name="repassword" /><br>
   <input type="submit" value="Register" />
 </form>
 
 New User <a href="Login.jsp">Login Here</a>
 <script type="text/javascript">
 function validate() {
	 var x1 = document.f1.name.value;
	 var x2 = document.f1.username.value;
	 var x3 = document.f1.password.value;
	 var x4 = document.f1.repassword.value;
	 if(x1 == null || x1 == "" || x2 == null || x2 == "" || x3 == null || x3 == "" || x4 == null || x4 == ""){
		 alert("all field should be filled");
		 return false;
	 } 
	 if(x3 != x4){
		 alert("password and Retype password should match");
		 return false;
	 }
	 return true;
 }
 </script>
</body>