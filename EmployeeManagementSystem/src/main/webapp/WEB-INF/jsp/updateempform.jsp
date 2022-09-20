<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<style>
span{
padding-left:15px;
}
</style>

<body>

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

<div class="container">  

<h1>Update Employee</h1>
<form:form id="updateForm" modelAttribute="empmanagementuser" method ="post" action ="updateemp">

<div class="form-group">
Employee id
<form:input path="eid" class="form-control" id="eid" placeholder="Employee id"  value="${emp.getEid()}" readonly="true"/>
</div>

<div class="form-group">
First Name
<form:input path="firstname" class="form-control" id="firstname" placeholder="First Name" value="${emp.getFirstname()}"/>
<form:errors path="firstname" style="color:red"/>

</div>

<div class="form-group">
Last Name
<form:input path="lastname" class="form-control" id="lastname" placeholder="Last Name" value="${emp.getLastname()}"/>
<form:errors path="lastname" style="color:red"/>

</div>

<div class="form-group">
Gender
<form:input path="gender" class="form-control" id="gender" placeholder="Gender" value="${emp.getGender()}" readonly="true"/>
</div>

<div class="form-group">
Department
<form:input path="department" class="form-control" id="department" placeholder="Department" value="${emp.getDepartment()}"/>
<form:errors path="department" style="color:red"/>

</div>

<div class="form-group">
Role
<form:input path="role" class="form-control" id="role" placeholder="Role" value="${emp.getRole()}"/>
<form:errors path="role" style="color:red"/>

</div>

<div class="form-group">
Salary
<form:input path="salary" class="form-control" id="salary" placeholder="Salary" value="${emp.getSalary()}"/>
<form:errors path="salary" style="color:red"/>

</div>

<div class="form-group">
Phone
<form:input path="phone" class="form-control" id="phone" placeholder="Phone Number" value="${emp.getPhone()}"/>
</div>

<div class="form-group">
Email
<form:input path="email" class="form-control" id="email" placeholder="Email Address" value="${emp.getEmail()}"/>
</div>

<div class="form-group">
Address
<form:input path="address" class="form-control" id="address" placeholder="Address" value="${emp.getAddress()}"/>
</div>
<br><br>

<form:button id="update" name="update" class="btn btn-primary" onclick="return confirm('Confirm Update?')">Update</form:button>
</form:form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
</body>
</html>