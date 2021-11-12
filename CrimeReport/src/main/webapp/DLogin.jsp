

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
body{
	background-color: whitesmoke;
}

	#submit{
	 text-decoration: none;
	 color: red;
	 border: 1px solid black;
	 padding-left: 10px;
	 padding-right: 10px;
	 border-top-left-radius: 10px;
	 border-bottom-right-radius: 10px;
	 background-color: yellow;
	 font-size: 15px;

	}
	
	#submit:hover{
		background-color:lightyellow;
		font-size:20px;
	}
	label, #ip {
		font-size: 30px;
	}
	#Errorname,#Errorpwd{
			color: red;
			font-size: 20px;
	}
	fieldset{
		width: 40%;

	}

</style>
<script type="text/javascript">
	
	function check(){
		if(document.Departmentlogin.UN.value=="")
		{
			document.getElementById("Errorname").innerHTML="Enter Username !!!!!";
			//alert("hello");
			return false;
		}
		
		if(document.Departmentloginform.pwd.value=="")
		{
			document.getElementById("Errorpwd").innerHTML="Enter password !!!!!";
			//alert("hello");
			return false;
		}
		
		
		else
			return true;
	}
	</script>
</head>
<body>
	<center>
	<fieldset >
		<legend><h1> Login </h1></legend>
	<form action="DLogindb.jsp" name="Departmentlogin" onsubmit="return check()" method="post">
	<label for="UN">UserName</label> 
	<input type="text" name="UN" > <div id="Errorname"></div><br><br>
	<label for="pwd">Password</label> 
	<input type="password" name="pwd"><div id="Errorpwd"></div><br><br>
	<label for="loc">Department</label>
 	<select name="Location"id='loc' required="required" >
 		<option value="Bengaluru">Bengaluru</option>
 		<option value="Chikkballapur">Chikkballapur</option>
 		<option value="Belagavi">Belagavi</option>
 		<option value="Kolar">Kolar</option>
 		<option value="Mysuru">Mysuru</option>
 	</select> <div id="Lerror"></div><br><br>


<br><br>
<input id="submit" type="submit" value="Login">
</form>
<br><br>
</fieldset>
</center>


</body>
</html>
