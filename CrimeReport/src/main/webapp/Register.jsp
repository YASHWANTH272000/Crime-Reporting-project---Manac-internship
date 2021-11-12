<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style type="text/css">

body{
	border:5px solid black;
	margin-top: 150px;
	margin-left: 350px;
	margin-right: 250px;
	padding-left:50px;
	padding-bottom: 10px;
	background-color: whitesmoke;
}
	#submit,a{
	 text-decoration: none;
	 color: red;
	 border: 1px solid black;
	 padding-left: 10px;
	 padding-right: 10px;
	 border-radius: 50px;
	 background-color: yellow;
	 font-size: 15px;
	}
	a{
		font-size: 17px;
	}
	a:hover,#submit:hover{
		background-color:grey;
		font-size:20px;
	}
	label, #ip {
		font-size: 30px;
	}
	#Errorname,#Errorpwd,#Errormail{
			color: red;
			font-size: 20px;
	}
</style>
</head>
<body align="center">
	<form action="Pregister.jsp" method="post" name="registerform" onsubmit="return check()" >
	<h1>Register</h1><br>
	<div>
	<label for="name">User name</label>
	<input id="ip" type="text" name="name"><div id="Errorname"></div>
	<br><br><br>
	<label for="pwd">Password</label>
	<input id="ip" type="password" name="pwd"><div id="Errorpwd"></div>
	<br>
	<br><br>
	<label for="Email">Email</label>
	<input id="ip" type="email" name="Email"><div id="Errormail"></div>
	<br><br>
	<br>
</div>
	<input id="submit" type="submit" value="Register">
	<a href="Login.jsp">Login</a>
	</form>
	<script type="text/javascript">
		function check() {
			// body...

			if (document.registerform.name.value=="") {
				document.getElementById("Errorname").innerHTML="Enter your name!!!!";
				return false;
			}
			if (document.registerform.pwd.value=="") {
				document.getElementById("Errorpwd").innerHTML="Enter your password!!!!";
				return false;
			}
			if (document.registerform.Email.value=="") {
				document.getElementById("Errormail").innerHTML="Enter your Email!!!!";
				return false;
			}
			else
				return true;
		}
		
	</script>
</body>
</html>