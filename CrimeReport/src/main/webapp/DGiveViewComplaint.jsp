<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Give View</title>
	
	
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
	<%
		String loc=request.getParameter("Location");
	 	//System.out.println(loc);
		session.setAttribute("loc",loc);
		out.print("<h2 id='heading'>"+(loc.toUpperCase())+" POLICE STATION</h2>");
	%>
	<br>
	
	<fieldset id="fieldleft">
		<legend><h3>Complaint</h3></legend>
	<a id='GiveView' href="DGiveAlert.jsp">Give Alert</a><br><br>
	<a id='GiveView' href="Dviewcomplaints.jsp">View Complaints</a><br><br>
	<a id='GiveView' href="Dviewcomplaints.jsp">Change Status</a>
	</fieldset>
	
</body>

</html>
