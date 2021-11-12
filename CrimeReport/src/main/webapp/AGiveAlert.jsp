<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Give alert</title>


<link rel="stylesheet" type="text/css" href="DGiveView.css">
<style type="text/css">
	#heading{
	 color:red;
	 text-align: center;
	}
</style>
</head>
<body>
<ul>
		 <li><a id='topbar' href="About.jsp">About Us</a></li>
		<li><a  id='topbar' href="Home.jsp">Home</a></li>
		<li><a id='topbar' href="About.jsp">Contact Us</a></li>
		<li><a id='topbar' href="DLogin.jsp">Logout</a></li>
	</ul>
	<br>
	<br>
	
	<div id="display"></div>
	
	<br>
	
	<fieldset id="fieldleft">
		<legend><h3>Admin</h3></legend>
	<a id='GiveView' href="AGiveAlert.jsp">Give Alert</a><br><br>
	<a id='GiveView' href="AViewComplaints.jsp">View Complaints</a><br><br>
	<a id='GiveView' href="AViewAlerts.jsp">View Alerts</a>
	</fieldset>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<form action="DGiveAlertdb.jsp" method="post">
		<h3><label for="alert">Give alert to people</label></h3><br>
		<textarea rows="3" cols="30" name="alert" id="alert"></textarea><br><br>
		<input type="submit" value="submit">
	</form>

</body>
</html>