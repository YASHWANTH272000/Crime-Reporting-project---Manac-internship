<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<% 
String subject=request.getParameter("subject");
String name=request.getParameter("name");
String location=request.getParameter("Location");
String date=request.getParameter("date");
String description= request.getParameter("description");
String sendTo = request.getParameter("mobile");

String p1="jdbc:oracle:thin:@localhost:1521:xe";
String p2="system";
String p3="password";
int count=0;
	try{
		
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
 	Connection con =DriverManager.getConnection(p1,p2,p3);
 	System.out.println("Connection success");
 	String countSQL="select count(*) from Complaint";
 	Statement s=con.createStatement();
 	ResultSet rs=s.executeQuery(countSQL);
 	if(rs.next())
 	{
 		count=(rs.getInt(1));
 		count=count+1;
 		
 	}
 	String status="Not checked";
 	String sql="insert into Complaint values(?,?,?,?,?,?,?,?)";
 	System.out.println("hello");
 	PreparedStatement p=con.prepareStatement(sql);
 	p.setInt(1, count);
 	p.setString(2,name);
 	p.setString(3,subject);
 	p.setString(4,location);
 	p.setString(5,date);
 	p.setString(6,description);
 	p.setString(7,sendTo);
 	p.setString(8,status);
 	p.executeUpdate();
 	out.println("<h1>Complaint registered successfully </h1> ");
 	
 	out.println("You are registered compliant ID is \t" +count+ "\n\n ");
 	out.println("Please remember complaint ID for future reference");
 	count=0;
	}

	catch(Exception e){
		out.println(e);
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>success</title>
<link rel="stylesheet" type="text/css" href="GiveView.css">
<style type="text/css">
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
<br>
<br>
<br>
<a id='backbutton' href="GiveViewComplaint.jsp">Back</a>
</body>
</html>