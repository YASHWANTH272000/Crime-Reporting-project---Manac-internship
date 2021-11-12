<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complaint form</title>
<link rel="stylesheet" type="text/css" href="GiveView.css">
<style type="text/css">
	label{
		padding: 10px;
		padding-right: 20px;

	}
	div{
		color: red;
		font-size: 20px;
		padding-right: 30px;
	}
</style>
</head>
<body>
	<ul>
		 <li><a id='topbar' href="loading.jsp">About Us</a></li>
		<li><a  id='topbar' href="Home.jsp">Home</li>
		<li><a id='topbar' href="loading.jsp">Contact Us</li>
		<li><a id='topbar' href="Login.jsp">Logout</a></li>
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
	<a id='GiveView' href="ViewThieves.jsp">Thieves Info</a><br><br>
	</fieldset>
	<br>
	<br>
	<br>
	<br>
	<br>
 <h1>COMPLAINT FORM </h1>

 <form action="complaintformdb.jsp" name="complaintform" onsubmit="return check()" method="post">
 	<fieldset>
 		<legend><h3>Complaint</h3></legend>
	
	<label for="name">Name</label>
 	<input type="text" name="name" id="name" autocomplete="off"><div id="Nerror"></div><br><br>
	
 	<label for="Subj">Subject</label>
 	<input type="text" name="subject" id="Subj" autocomplete="off"><div id="Serror"></div><br><br>
	
	
 	<label for="loc">Location</label>
 	<select name="Location" required="required" >
 		<option value="Bengaluru">Bengaluru</option>
 		<option value="Chikkballapur">Chikkballapur</option>
 		<option value="Belagavi">Belagavi</option>
 		<option value="Kolar">Kolar</option>
 		<option value="Mysuru">Mysuru</option>
 	</select> <div id="Lerror"></div><br><br>

 	<label for="Date">Date</label>
 	<input type="Date" name="date" id="Date"><div id="Dateerror"></div><br><br>

 	<label for="Description">Description</label>
 	<textarea name="description" id="Description"></textarea><div id="Derror"></div><br><br>

 	<!--  <label for="To">Send To</label>
 	<select name="To">
 		<option value="ACP">ACP</option>
 		<option value="SI">SI</option>
 		<option value="Police">Police</option>
 		<option value="AC">AC</option>	
 	</select> -->
 	
 	<label for="mobile">Mobile Number</label>
 	<input type="text" name="mobile" id="mobile" autocomplete="off"> <div id="MNerror"></div> <br><br>
 	
 	<input type="Submit" name="Submit" value="Send">
 	</fieldset>
 </form>
 <script type="text/javascript">
 	function check()
 	{	
 		if(document.complaintform.name.value==""){
 			//alert("hello");
 			document.getElementById("Nerror").innerHTML="Enter Name!!!!";
 			return false;
 		}
 		if(document.complaintform.subject.value==""){
 			//alert("hello");
 			document.getElementById("Serror").innerHTML="Enter subject!!!!";
 			return false;
 		}
 		if(document.complaintform.Location.value==""){
 			document.getElementById("Lerror").innerHTML="Enter Location!!!!";
 			return false;
 		}
 		if(document.complaintform.date.value==""){
 			document.getElementById("Dateerror").innerHTML="Enter Date!!!!";
 			return false;
 		}
 		if(document.complaintform.description.value==""){
 			document.getElementById("Derror").innerHTML="Enter Description!!!!";
 			return false;
 		}
 		if(document.complaintform.To.value==""){
 			document.getElementById("Terror").innerHTML="Enter officer!!!!";
 			return false;
 		}
 		if(document.complaintform.mobile.value==""){
 			//alert("hello");
 			document.getElementById("MNerror").innerHTML="Enter mobile number!!!!";
 			return false;
 		}

 		else
 			return true;
 	}
 </script>
</body>
</html>

