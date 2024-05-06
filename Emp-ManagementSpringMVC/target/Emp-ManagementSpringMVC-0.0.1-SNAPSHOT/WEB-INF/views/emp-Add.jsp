<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
th, td {
	padding: 15px;
	 border: 1px solid black;
	 text-align: center; 
	 font-weight:bold
	 border-width:4px
}

table {
	border: double;
	border-radius: 5px;
	            border-collapse: collapse; 
	            
}

body {
	background-color: #fb607f   ;
}

h1, h2{
font-family:Arial, sans-serif;
}

div h1 a {
font-family:verdana;
color:#1c87c9;
font-weight:normal;
}

table tr td input {
	padding: 5px;
	margin: 8px 0;
	outline: black;
	border: black;
}

input:focus, input:active {
	border-color: transparent;
	border-bottom: 2px solid #1c87c9;
}

.form-submit-button {
background: blue;
color: white;
border-style: outset;
border-color: #0066A2;
height: 40px;
width: 90px;
font: bold15px arial,sans-serif;
text-shadow: black;
border-radius: 5px;
}
</style>

<title>Employee-Page</title>
</head>
<body>

	<div align="center">
	
		<h4 align="center">
			<a style="color:green" href="list">click to See Details</a>
		</h4>
		<hr>

		<h2>Add Employee</h2>
		<form:form action="processAddEmployee" modelAttribute="employee">
			<table>
				<tr>

					<td><label for="name">Name:</label> &nbsp;&nbsp;</td>

					<td><input type="text" id="name" name="name"
						placeholder="Enter name"></td>
				</tr>



				<tr>

					<td><label for="address">Address:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="address" name="address"
						placeholder="Enter address"></td>

				</tr>



				<tr>
					<td><label for="phone">Phone:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="phone" name="phone"
						placeholder="Enter phone no."></td>
				</tr>


				<tr>
					<td><label for="salary">Salary:</label> &nbsp;&nbsp;</td>
					<td><input type="number" id="salary" name="salary"
						placeholder="Enter salary"></td>
				</tr>
			</table>
			

			<br>
			<br>

			<input class="form-submit-button" type="reset" value="Restart"> &nbsp;&nbsp;&nbsp; 
		 <input class="form-submit-button" type="submit" value="Submit">
		</form:form>
	</div>

</body>
</html>