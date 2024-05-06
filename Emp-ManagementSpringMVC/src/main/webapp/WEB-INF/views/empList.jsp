<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show Emp-list-Page</title>
<style type="text/css">
    .tg  {border-collapse:collapse;border-spacing:1;border-style:outset;border-width:5px;border-color:black;margin-left: auto;
    margin-right: auto; border-radius:10px;}
    .tg td{text-align:center; font-family:Verdana, sans-serif;font-size:16px;padding:10px 5px;border-style:outset;border-width:4px;overflow:hidden;word-break:normal;border-color:black;color:#333;background-color:null;}
      .tg th {
        font-family:  'Helvetica Neue';
        font-size: 24px;
        font-weight: bold;
        padding: 17px 7px;
        border-style: outset;
        border-width: 4px;
        overflow: hidden;
        word-break: normal;
        border-color: black;
        color: hsl(120deg, 100%, 22.61%); /* Change the color to red */
        background-color: null;
    }
    /* .tg .tg-4eph{background-color:#f9f9f9} */
    body {background-color:yellow}
    h4 a {font-family:Arial, sans-serif;font-size:18px; color:red;font-weight:normal; }
    h3 {font-family:Arial, sans-serif;}
    
      h1 {
            text-align: center;
font-family: 'Helvetica Neue';
            font-size: 36px;
            font-weight: bold;
            background-image: linear-gradient(to right,#0074D9, #3D9970); /* Pink color gradient */
            -webkit-background-clip: text; /* Clip the background to the text */
            color: blue; /* Make the text transparent to reveal the gradient */
        }
</style>



</head>
<body>
<!-- <h1 align="center">Employee List</h1> -->

<h4 align="center"><a href="addEmployee">click here to Add-EmpRecords</a></h4>
<!-- <h4 align="center"><a href="addEmployee">Add new Employee</a></h4> -->






<c:if test="${!empty listEmployee}">
<!-- <h4 align="center"><a href="addEmployee">AddRecords</a></h4> -->

<h1  align="center">Employee List</h1>
	<table class="tg">
	
	<tr>
		<th width="80">Employee ID</th>
		<th width="120">Employee Name</th>
		<th width="120">Employee Address</th>
		<th width="120">Employee Phone</th>
		<th width="120">Employee Salary</th>
		<th width="60">Action1</th>
		<th width="60">Action2</th>
	</tr>
	<c:forEach items="${listEmployee}" var="employee">
		<tr>
			<td>${employee.id}</td>
			<td>${employee.name}</td>
			<td>${employee.address}</td>
			<td>${employee.phone}</td>
			<td>${employee.salary}</td>
			<td><a href="<c:url value='/edit/${employee.id}' />" >Update</a></td>
			<td><a href="<c:url value='/remove/${employee.id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>