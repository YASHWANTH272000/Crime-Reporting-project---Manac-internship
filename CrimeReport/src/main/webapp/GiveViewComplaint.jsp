<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Give View</title>
	
	
<link rel="stylesheet" type="text/css" href="GiveView.css">
</head>
<body>
	<ul>
		 <li><a id='topbar' href="loading.jsp">About Us</a></li>
		<li><a  id='topbar' href="Home.jsp">Home</a></li>
		<li><a id='topbar' href="loading.jsp">Contact Us</a></li>
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
		<legend><h3>Thieves and Alerts</h3></legend>
	<a id='GiveView' href="ViewAlerts.jsp">View Alerts</a><br><br>
	<a id='GiveView' href="ViewThieves.jsp">Thieves Info</a><br><br>
	</fieldset>
</body>
</html>
