<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<meta  name="viewport" content="width=device-width, initial-scale=1"/>
<style>
	
fieldset{
	border:2px solid black;
	width: 50%;

}
	#select{
	 text-decoration: none;
	 color: red;
	 border: 1px solid black;
	 padding-left: 10px;
	 padding-right: 10px;
	 border-radius: 50px;
	 background-color: lightgoldenrodyellow;
	 font-size: 50px;
	}
	#select:hover{
		background-color:lightyellow;
		font-size:40px;
	}

	ul li{
		list-style: none;
		float: left;
		width: 33%;
		color: white;
		background-color: black;
		line-height: 40px;
		text-align: center;
		font-size: 20px;

			}

	a{
		text-decoration: none;
		color: white;

	}
	a:hover{
		color: indianred;
		text-decoration: overline underline;
	}
</style>
</head>
<body>
	<ul>
		 <li><a href="loading.jsp">About Us</a></li>
		<li><a href="Home.jsp">Home</a></li>
		<li><a href="loading.jsp">Contact Us</a></li>
	</ul>
<br>
<br>
<br>
<br>
<center>
<fieldset >
<h3 style="color:black;">Welcome</h3>

<a id="select"href="Login.jsp">People</a><br><br>
<a id="select" href="DLogin.jsp">Police Department</a><br><br>

<a id="select" href="Alogin.jsp">Administrator</a><br><br>
</fieldset>
</center>
</body>
</html>