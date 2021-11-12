<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Alerts</title>
</head>
<style type="text/css">
	body{
	background-color: whitesmoke;
}
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
		align:center;
		width: 50%;
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
		a{
		 
		 margin-left:335px;
		}

		}
</style>

<%@page import="java.sql.*" %>
<% 
						
						String id=request.getParameter("id");
				
						String p1="jdbc:oracle:thin:@localhost:1521:xe";
						String p2="system";
						String p3="password";
						try{
						Class.forName("oracle.jdbc.driver.OracleDriver");
						Connection conn=DriverManager.getConnection(p1,p2,p3);
						System.out.println("alerts Connection success");
						String date=(new java.util.Date()).toLocaleString().substring(1,11);
						String sql="select * from alerts where alertdate='"+date+"'";
						
						Statement stmt=conn.createStatement();
						
						ResultSet rs1=stmt.executeQuery(sql);
						if(rs1.next()){
						out.println("<center><h2>Today's Alerts</h2>");
						out.println("<table ><tr><th>Alert's</th></tr>");
						while(rs1.next()){
							
				
							out.println("<tr><td><b>"+rs1.getString(1)+"</td>");
						
							//out.println(",	"+rs1.getString(2));
						}
						out.println("</table></center>");
						}else
						{
							out.println("<center><h2>No Alerts</h2>");
						}
						}
						catch(Exception e){
							System.out.println(e);
							
						}
%>
<body>
<br>
<a id='backbutton' href="GiveViewComplaint.jsp">Back</a>
</body>
</html>