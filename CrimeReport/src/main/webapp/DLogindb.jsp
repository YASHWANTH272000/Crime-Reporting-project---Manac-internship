<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%@page import="java.sql.*" %>

<%
String Username=request.getParameter("UN");
String pwd=request.getParameter("pwd");
String loc=request.getParameter("Location");




//System.out.println(Username);

	String p1="jdbc:oracle:thin:@localhost:1521:xe";
	String p2="system";
	String p3="password";
	try{
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con=DriverManager.getConnection(p1,p2,p3);
System.out.println("Connection success");
String sqlL="select * from department where PWD ='"+pwd+"'";

Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(sqlL);

if(rs.next())
{
	  
	if(rs.getString(1).equalsIgnoreCase(Username) && (rs.getString(2).equalsIgnoreCase(pwd)) && (rs.getString(3).equalsIgnoreCase(loc)) )
	{ 
		//System.out.println("<a href='complaintform.jsp'>login sucess</a>");
		//System.out.println(loc);
		//System.out.println(rs.getString(3));
		%>
		 <jsp:forward page="DGiveViewComplaint.jsp"/>
		
		<% 
	}
	else
	{
		out.println("<h4 style=color:red>Check your Username, Password and Department !!!!!</h4>");
		
		 %>
		 <jsp:include page="DLogin.jsp"/>
		 <%
	}
	         
 }
else{
	out.print("<h4 style=color:red>Check your Password !!!!!</h4>");
	
	 %>
	 <jsp:include page="DLogin.jsp"/>
	 <%
}


}
	catch(Exception e){
		System.out.println(e);
	}

%>
