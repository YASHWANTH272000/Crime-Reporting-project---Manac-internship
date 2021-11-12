<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaint Details</title>
<link rel="stylesheet" type="text/css" href="GiveView.css">
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
		<li><a  id='topbar' href="Home.jsp">Home</li>
		<li><a id='topbar' href="About.jsp">Contact Us</li>
		<li><a id='topbar' href="Logout.jsp">Logout</a></li>
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
	<a id='GiveView' href="viewcomplaint.jsp">View</a><br><br>
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
						String sql="select * from complaint where id='"+id+"'";
						Statement stmt=conn.createStatement();
						
						ResultSet rs=stmt.executeQuery(sql);
						if(rs.next()){
						out.print("<h1>Your complaint details:</h1>");
						 out.print("<table><tr><th>ID</th><th>COMPLAINTEE NAME</th><th>SUBJECT</th><th>LOCATION</th><th>SUBMITTED DATE</th><th>DESCRIPTION</th><th>MOBILE NUMBER</th><th>STATUS</th></tr>");
						
						out.print("<tr><td>"+rs.getString(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getString(3)+"</td> <td>"+rs.getString(4)+"</td><td>"+rs.getString(5).substring(0,11)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td>");
						String status="Not checked";	
						String s=(String)rs.getString(8);
						
						if(s.compareTo(status)==0){
								out.print("<td style='color:red'>"+rs.getString(8)+"</td></tr></table>");
							}
							else{
								out.print("<td style='color:green'>"+rs.getString(8)+"</td></tr></table>");
							}
						//out.println(rs.next());
						}
						else 
						/* <script type="text/javascript">
						  document.getElementById('nodata').innerHTML="NO DATA FROM THIS ID";
						</script>*/
							 out.println("NO DATA FROM THIS "+id+" ID\n");
						
						
						}
						catch(Exception e){
							System.out.println(e);
						}
				
%>
<br>
<a id='backbutton' href="viewcomplaint.jsp">Back</a>
</body>
</html>
