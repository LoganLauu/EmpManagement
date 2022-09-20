<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
</head>
<body>
<center>
<h1>Employee List</h1>
</center>
<table border="2" width="100%" cellpadding="2" class="table table-dark">
<tr><th>Id</th><th>Firstname</th><th>Lastname</th><th>Gender</th><th>Department</th><th>Role</th><th>Phone</th><th>Email</th><th>Address</th><th>Update</th><th>Delete</th></tr>
<c:forEach var="emp" items="${list}">   
<tr>
<td>${emp.eid}</td>
<td>${emp.firstname}</td>
<td>${emp.lastname}</td>
<td>${emp.gender}</td>
<td>${emp.department}</td>
<td>${emp.role}</td>
<td>${emp.phone}</td>
<td>${emp.email}</td>
<td>${emp.address}</td>
<td><a href="updateemp/${emp.eid}">Update</a></td>
<td><a href="deleteemp/${emp.eid}" onclick="return confirm('Confirm Delete?')">Delete</a></td>  
</tr>
</c:forEach>  
</table>

<script>

</script>
</body>
</html>