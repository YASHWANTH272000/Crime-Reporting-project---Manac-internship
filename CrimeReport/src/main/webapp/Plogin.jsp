<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*" %>

<%
String Username=request.getParameter("UN");
String pwd=request.getParameter("pwd");
//System.out.println(Username);

	String p1="jdbc:oracle:thin:@localhost:1521:xe";
	String p2="system";
	String p3="password";
	try{
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con=DriverManager.getConnection(p1,p2,p3);
System.out.println("Connection success");
String sqlL="select * from registerpeople where PWD ='"+pwd+"'";

Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(sqlL);

if(rs.next())
{
	  
	if(rs.getString(1).equals(Username) && (rs.getString(2).equals(pwd)))
	{ 
		//out.println("<a href='complaintform.jsp'>login sucess</a>");
		%>
		<jsp:forward page="GiveViewComplaint.jsp"/>
		
		<% 
	}
	else
	{
		out.println("<h4 style=color:red>Check your Username and Password !!!!!</h4>");
		
		 %>
		 <jsp:include page="Login.jsp"/>
		 <%
	}
	         
 }
else{
	out.print("<h4 style=color:red>Check your Password !!!!!</h4>");
	
	 %>
	 <jsp:include page="Login.jsp"/>
	 <%
}


}
	catch(Exception e){
		System.out.println(e);
	}

%>
