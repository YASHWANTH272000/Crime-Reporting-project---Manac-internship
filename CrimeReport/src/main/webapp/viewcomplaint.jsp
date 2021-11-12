<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View</title>
<link rel="stylesheet" type="text/css" href="GiveView.css">
<style>
#getdatabutton{
			text-decoration: none;
			background-color: black;
			color: papayawhip;
			font-size: 20px;
			padding: 5px;
			border-top-left-radius: 10px;
			border-bottom-right-radius: 10px;
}

	#getdatabutton:hover{
			text-decoration: 3px underline red;

		}
</style>
</head>
<body>
	<ul>
		 <li><a id='topbar' href="loading.jsp">About Us</a></li>
		<li><a  id='topbar' href="Home.jsp">Home</li>
		<li><a id='topbar' href="loading.jsp">Contact Us</li>
		<li><a id='topbar' href="Login.jsp">Logout</a></li>
	</ul>
	<br>
	<br>
	<br>
	<br>
	<fieldset id="fieldleft">
		<legend><h3>Complaint</h3></legend>
	<a id='GiveView' href="complaintform.jsp">Give</a><br><br>
	<a id='GiveView' href="viewcomplaint.jsp">View</a><br><br>
	</fieldset>
	<fieldset id="fieldright">
		<legend><h3>Thieves Alerts</h3></legend>
	<a id='GiveView' href="ViewAlerts.jsp">View Alerts</a><br><br>
	<a id='GiveView' href="ViewThieves.jsp">Thieves Info</a><br><br>
	</fieldset>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h1>View Your complaint </h1>
	<form action="viewcomplaintdb.jsp" name="viewform" method="post">
	<label for="id">ID :</label>
	<input type="number" id="id" name="id" placeholder="Enter your complaint ID"><br><br>
	<input id="getdatabutton" type="submit" value="GET DATA">
	</form>
</body>
</html>