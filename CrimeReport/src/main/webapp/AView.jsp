<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administration</title>
</head>
<link rel="stylesheet" type="text/css" href="DGiveView.css">
<body>
<ul>
		 <li><a id='topbar' href="loading.jsp">About Us</a></li>
		<li><a  id='topbar' href="Home.jsp">Home</a></li>
		<li><a id='topbar' href="loading.jsp">Contact Us</a></li>
		<li><a id='topbar' href="DLogin.jsp">Logout</a></li>
	</ul>
	<br>
	<br>
	<fieldset id="fieldleft">
		<legend><h3>Admin</h3></legend>
	<a id='GiveView' href="AGiveAlert.jsp">Give Alerts</a><br><br>
	<a id='GiveView' href="AViewComplaints.jsp">View Complaints</a><br><br>
	<a id='GiveView' href="AViewAlerts.jsp">View Alerts</a>
	</fieldset>

</body>
</html>