<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaint Details</title>
<link rel="stylesheet" type="text/css" href="GiveView.css">
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
		#backbutton{
			text-decoration: none;
			background-color: black;
			color: papayawhip;
			font-size: 20px;
			padding: 5px;
			border-top-left-radius: 10px;
			border-bottom-right-radius: 10px;
		

		}
		#backbutton:hover{
			text-decoration: 3px underline red;

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
	<fieldset id="fieldleft">
		<legend><h3>Admin</h3></legend>
	<a id='GiveView' href="AGiveAlert.jsp">Give Alerts</a><br><br>
	<a id='GiveView' href="AViewComplaints.jsp">View Complaints</a><br><br>
	<a id='GiveView' href="AViewAlerts.jsp">View Alerts</a>
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
	<br>
	<br>
	<br>
	<br>
	<p id='nodata'></p>
<%@page import="java.sql.*" %>
<%@page import="java.lang.*" %>
<% 
						
						String id=request.getParameter("id");
				
						String p1="jdbc:oracle:thin:@localhost:1521:xe";
						String p2="system";
						String p3="password";
						try{
						Class.forName("oracle.jdbc.driver.OracleDriver");
						Connection conn=DriverManager.getConnection(p1,p2,p3);
						System.out.println("Connection success");
						String sql="select * from complaint";
						Statement stmt=conn.createStatement();
						
						ResultSet rs=stmt.executeQuery(sql);
						out.print("<h1>Your complaint details:</h1>");
						 out.print("<table><tr><th>ID</th><th>COMPLAINTEE NAME</th><th>SUBJECT</th><th>LOCATION</th><th>SUBMITTED DATE</th><th>DESCRIPTION</th><th>MOBILE NUMBER</th><th>STATUS</th></tr>");
						
						while(rs.next()){
						
						out.print("<tr><td>"+rs.getString(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getString(3)+"</td> <td>"+rs.getString(4)+"</td><td>"+rs.getString(5).substring(0,11)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td>");
						String status="Not checked";	
						String s=(String)rs.getString(8);
						
						if(s.compareTo(status)==0){
								out.print("<td style='color:red'>"+rs.getString(8)+"</td></tr>");
							}
							else{
								out.print("<td style='color:green'>"+rs.getString(8)+"</td></tr>");
							}
						//out.println(rs.next());
						}
						out.println("</table>");
						//else 
						/* <script type="text/javascript">
						  document.getElementById('nodata').innerHTML="NO DATA FROM THIS ID";
						</script>*/
							// out.println("NO DATA\n");
						
						
						}
						catch(Exception e){
							System.out.println(e);
						}
				
%>
<br>
<a id='backbutton' href="AView.jsp">Back</a>
</body>
</html>
