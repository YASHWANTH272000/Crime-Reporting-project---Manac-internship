<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list of complaints</title>
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
		<li><a  id='topbar' href="Home.jsp">Home</a></li>
		<li><a id='topbar' href="About.jsp">Contact Us</a></li>
		<li><a id='topbar' href="DLogin.jsp">Logout</a></li>
	</ul>
	<br>
	<br>
	<br>
	
	<fieldset id="fieldleft">
		<legend><h3>Complaint</h3></legend>
	<a id='GiveView' href="DGiveAlert.jsp">Give Alert</a><br><br>
	<a id='GiveView' href="Dviewcomplaints.jsp">View Complaints</a><br><br>
	<a id='GiveView' href="Dviewcomplaints.jsp">Change Status</a>
	</fieldset>
	<br>
	<br>
	<br><br>
	<br>
	<br><br>
	<br>
	<br><br>
	<br>
	<br>
<div>
<%@page import="java.sql.*" %>
<%
	String p1="jdbc:oracle:thin:@localhost:1521:xe";
	String p2="system";
	String p3="password";
	String status="Not checked";
	
	//String loc=request.getParameter("Location");
	//System.out.println(loc);
	
	//getting location from login page
	Object loca=session.getAttribute("loc");
	String loc=loca.toString();

	System.out.println(loc);
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection(p1,p2,p3);
		System.out.println("Connection succes");
		String sql="select * from Complaint where location='"+loc+"'";
		//String sql="select * from Complaint where location='Chikkballapur'";
		Statement stmt=conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			//System.out.println(rs.getString(2));
		out.print("<h1>"+loc.toUpperCase()+" COMPLAINT DETAILS:</h1>");
		 out.print("<table><tr><th>ID</th><th>COMPLAINTEE NAME</th><th>SUBJECT</th><th>LOCATION</th><th>SUBMITTED DATE</th><th>DESCRIPTION</th><th>MOBILE NUMBER</th><th>STATUS</th></tr>");
		
		  do{
			System.out.println(rs.getString(2));
			out.print("<tr><td>"+rs.getString(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getString(3)+"</td> <td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td>");
			session.setAttribute("loc",rs.getString(4));
			String s=(String)rs.getString(8);
			
			if(s.compareTo(status)==0){
					out.print("<td style='color:red'>"+rs.getString(8)+"</td></tr>");
				}
				else{
					out.print("<td style='color:green'>"+rs.getString(8)+"</td></tr>");
				}
			//out.println(rs.next());
			
			}while(rs.next());
		out.println("</table>");
		}
		else{
			out.println("<h3>NO COMPLAINTS IN "+loc.toUpperCase()+" POLICE STATION\n</h3>");
		}
		
	}
	catch(Exception e){
		System.out.println(e);
	}

%>
</div>
<br>
<h1>Change status of the complaint </h1>&emsp;&emsp;<span style='color:red'> Note:</span>&ensp;Change status with respect to above ID only<br><br>
	<form action="DChangeComplaintStautsdb.jsp" name="statusform" onclick="return check()" method="post">
	<label for="id">ID :</label>
	<input type="number" id="id" name="id" placeholder="Enter your complaint ID"><br><div id="error"></div><br>
	<label for="id">COMPLAINT STATUS :</label>
	<input type="text" id="status" name="status" placeholder="Enter stastus to change"><br><br><div id="Serror"></div><br>
	<input id="getdatabutton" type="submit" value="CHANGE">
	</form>
</body>
<script>
	function check(){
		if(document.statusform.id.value==""){
			document.getElementById("error").innerHTML="Enter id!!!!";
			return false;
			
		}
		if(document.statusform.status.value==""){
			document.getElementById("Serror").innerHTML="Enter status!!!!";
			return false;
			
		}
		return true;
		
	}
</script>
</html>
