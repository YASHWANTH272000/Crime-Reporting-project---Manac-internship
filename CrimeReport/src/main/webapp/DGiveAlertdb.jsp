<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserted</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
String alert=request.getParameter("alert");


	String p1="jdbc:oracle:thin:@localhost:1521:xe";

	String p2="system";
	String p3="password";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");

		Connection con=DriverManager.getConnection(p1,p2,p3);


		System.out.println("Connection success");
		String date=(new java.util.Date()).toLocaleString().substring(1,11);
		String sql="insert into alerts values(?,?)";
		PreparedStatement p=con.prepareStatement(sql);
		p.setString(1,alert);
		p.setString(2, date);
		p.executeUpdate();
		
		
		out.println("<h1>alert as been sent!!!!!!\n\n</h1> ");
	}catch(Exception e ){
		System.out.println(e);
	}
	%>
	

</body>
</html>
