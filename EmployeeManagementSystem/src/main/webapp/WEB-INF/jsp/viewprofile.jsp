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
<h1>My Profile</h1>
</center>
<table border="2" width="100%" cellpadding="2" class="table table-dark">
<tr><th>Employee id</th><th>Firstname</th><th>Lastname</th><th>Gender</th><th>Salary</th><th>Department</th><th>Role</th><th>Phone</th><th>Email</th><th>Address</th></tr>
<tr>
<td>${emp.getEid()}</td>
<td>${emp.getFirstname()}</td>
<td>${emp.getLastname()}</td>
<td>${emp.getGender()}</td>
<td>\$${emp.getSalary()}
<td>${emp.getDepartment()}</td>
<td>${emp.getRole()}</td>
<td>${emp.getPhone()}</td>
<td>${emp.getEmail()}</td>
<td>${emp.getAddress()}</td>
</tr>
</table>

<center>
<c:url var="url" value='/viewprofile/updateprofile/${emp.getEid()}'/>
<a class="button button-primary" href="${url}">Update Profile</a>
<center>
</body>
</html>