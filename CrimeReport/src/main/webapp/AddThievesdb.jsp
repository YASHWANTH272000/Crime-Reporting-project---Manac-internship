<%@page import="oracle.net.aso.p"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!-- upload cos.jar file to lib folder to execute MultiReportRequest -->
   <%@page import="com.oreilly.servlet.MultipartRequest"%>
   <%@page import="java.sql.*" %>
   <%@page import="java.io.*" %>
     <%@page import="javax.servlet.http.*" %>
     <%@page import="javax.servlet.annotation.*" %>
     <%@page import="javax.servlet.annotation.MultipartConfig"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
<%	
try{
	Part part=request.getPart("images");
	//String root=getServletContext().getRealPath("images");
	//MultipartRequest mr= new MultipartRequest(request,root);
	//out.println("success");
	String Username=request.getParameter("name");
	String pwd=request.getParameter("pwd");
	String mail=request.getParameter("Email");

		String p1="jdbc:oracle:thin:@localhost:1521:xe";

		String p2="system";
		String p3="password";
		
		//try{
	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection con=DriverManager.getConnection(p1,p2,p3);


	System.out.println("Connection success");
	
	String sql="insert into addthieves values(?)";

	PreparedStatement p=con.prepareStatement(sql);
	InputStream is = part.getInputStream();
	
	
	p.setBlob(1,is);
	out.println("ImAGE ADDED");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
%>

</body>
</html>