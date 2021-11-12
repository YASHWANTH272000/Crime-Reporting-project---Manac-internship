<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<style type="text/css">
body{
	background-color: whitesmoke;
}
	ul li{
		list-style: none;
		float: left;
		width: 25%;
		color: white;
		background-color: black;
		line-height: 40px;
		text-align: center;
		font-size: 20px;

			}
	#topbar{
		text-decoration: none;
		color: white;
	}
	#topbar:hover{
		color: indianred;
		text-decoration: overline underline;
	}
	


	#submit,#register{
	 text-decoration: none;
	 color: red;
	 border: 1px solid black;
	 padding-left: 10px;
	 padding-right: 10px;
	 border-radius: 50px;
	 background-color: yellow;
	 font-size: 15px;
	}
	#register{
		font-size: 17px;
	}
	#register:hover,#submit:hover{
		background-color:grey;
		font-size:20px;
	}
	label, #ip {
		font-size: 30px;
	}
	#Errorname,#Errorpwd{
			color: red;
			font-size: 20px;
	}
	fieldset{
		width:50%;
		
	
	}
</style>
</head>
<body>
<ul>
		 <li><a id='topbar' href="loading.jsp">About Us</a></li>
		<li><a  id='topbar' href="Home.jsp">Home</li>
		<li><a id='topbar' href="loading.jsp">Contact Us</li>
		<li><a id='topbar' href="Register.jsp">New User</a></li>
	</ul>
	<br>
	<br>
	<br>
	<br>
<br>
<br>
<br>
<br>
<center>
<fieldset>
<legend><h1> Login </h1></legend>
<form action="Plogin.jsp" name="loginform" onsubmit="return check()" method="post">
<label for="UN">UserName</label> 
<input type="text" name="UN" > <div id="Errorname"></div><br><br>
<label for="pwd">Password</label> 
<input type="password" name="pwd"><div id="Errorpwd"></div><br><br>
<input id="submit" type="submit" value="Login">

<a id="register" href="Register.jsp">New User</a><br><br>
</form>
</fieldset>
</center>
<script type="text/javascript">
	
	function check(){
		if(document.loginform.UN.value=="")
		{
			document.getElementById("Errorname").innerHTML="Enter Username !!!!!";
			//alert("hello");
			return false;
		}
		
		if(document.loginform.pwd.value=="")
		{
			document.getElementById("Errorpwd").innerHTML="Enter password !!!!!";
			//alert("hello");
			return false;
		}
		
		
		else
			return true;
	}
	</script>
</body>
</html>
