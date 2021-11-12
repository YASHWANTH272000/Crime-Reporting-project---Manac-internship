<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updated</title>
<link rel="stylesheet" type="text/css" href="DGiveView.css">
<style type="text/css">
	table,th,td{
		border: 1px dotted black ;
		line-height: 30px;
		text-align: center;

		}
		table,th{
			border: 2px solid black;
		}
		th{
			background:yellowgreen;

		}
	table{
		width: 100%;
		}
	

		}
</style>
</head>
<body>
	
<ul>
		 <li><a id='topbar' href="About.jsp">About Us</a></li>
		<li><a  id='topbar' href="PoliceComplaint/Home.jsp">Home</a></li>
		<li><a id='topbar' href="About.jsp">Contact Us</a></li>
		<li><a id='topbar' href="DLogin.jsp">Logout</a></li>
	</ul>
	<br>
	<br>
	<br>
	
	<fieldset id="fieldleft">
		<legend><h3>Complaint</h3></legend>
	<a id='GiveView' href="complaintform.jsp">Give Alert</a><br><br>
	<a id='GiveView' href="Dviewcomplaints.jsp">View Complaints</a><br><br>
	<a id='GiveView' href="Dviewcomplaints.jsp">Add Thieves</a>
	</fieldset>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br>
	<br><br>	
	
	<br>
	
	
	
<%
 String id=request.getParameter("id");
String status=request.getParameter("status");

String p1="jdbc:oracle:thin:@localhost:1521:xe";
String p2="system";
String p3="password";
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection(p1,p2,p3);
	System.out.println("Connection succes");
	Object loca=session.getAttribute("loc");
	String loc=loca.toString();
	String sql="update complaint set status='"+status+"' where id='"+id+"' and location='"+loc+"'";
	Statement stmt=conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	out.println("<h3>STATUS HAS BEEN UPDATED TO <span style='font-size:25px;color:purple;'>"+status.toUpperCase()+"</span></h3>");
}
catch(Exception e){
	System.out.println(e);
}

%>	
</body>
</html>