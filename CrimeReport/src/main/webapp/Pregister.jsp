<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>
<%
String Username=request.getParameter("name");
String pwd=request.getParameter("pwd");
String mail=request.getParameter("Email");

	String p1="jdbc:oracle:thin:@localhost:1521:xe";

	String p2="system";
	String p3="password";
	
	try{
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con=DriverManager.getConnection(p1,p2,p3);


System.out.println("Connection success");

String sql2="select * from registerpeople where email ='"+mail+"'";

Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(sql2);
	if(rs.next())
	{
	  
		if(rs.getString(3).equals(mail))
		{ 
			out.println("<h1 style=color:red>This mail is already Registered !!!! \t Try to Login</h1>");
			%>
			<jsp:include page="Register.jsp"/>
			
			<%
		}
		
	         
 	}
	else
	{
		String sqlL="insert into registerpeople values(?,?,?)";

		PreparedStatement p=con.prepareStatement(sqlL);
		p.setString(1,Username);
		p.setString(2,pwd);
		p.setString(3,mail);
		p.executeUpdate();
	
		out.println("<h1 style=color:red>Register succes</h1>");
		%>
		<jsp:include page="Login.jsp"/>
		
		<% 
	}

}
catch(Exception e)
	{
		System.out.println(e);
	}


%>


