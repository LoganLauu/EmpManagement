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

<div class="container">  


<h1>Update Profile</h1>
<c:url var="url" value='/viewprofile/updateprofile/${emp.getEid()}'/>

<form:form id="updateForm" modelAttribute="empmanagementuser" method ="post" action ="${url}">

<div class="form-group">

Employee id
<form:input path="eid" class="form-control" id="eid" placeholder="Employee id"  value="${emp.getEid()}" readonly="true"/>
</div>

<div class="form-group">
First Name
<form:input path="firstname" class="form-control" id="firstname" placeholder="First Name" value="${emp.getFirstname()}" readonly="true"/>
</div>

<div class="form-group">
Last Name
<form:input path="lastname" class="form-control" id="lastname" placeholder="Last Name" value="${emp.getLastname()}" readonly="true"/>
</div>

<div class="form-group">
Gender
<form:input path="gender" class="form-control" id="gender" placeholder="Gender" value="${emp.getGender()}" readonly="true"/>
</div>

<div class="form-group">
Department
<form:input path="department" class="form-control" id="department" placeholder="Department" value="${emp.getDepartment()}" readonly="true"/>
</div>

<div class="form-group">
Role
<form:input path="role" class="form-control" id="role" placeholder="Role" value="${emp.getRole()}" readonly="true"/>
</div>

<div class="form-group">
Salary
<form:input path="salary" class="form-control" id="salary" placeholder="Salary" value="${emp.getSalary()}" readonly="true"/>
</div>

<div class="form-group">
Phone
<form:input path="phone" class="form-control" id="phone" placeholder="Phone Number" value="${emp.getPhone()}"/>
<form:errors path="phone" style="color:red"/>
<p style="color:red;"> ${phonemsg} </p>

</div>

<div class="form-group">
Email
<form:input path="email" class="form-control" id="email" placeholder="Email Address" value="${emp.getEmail()}"/>
<form:errors path="email" style="color:red"/>
<p style="color:red;"> ${emailmsg} </p>


</div>

<div class="form-group">
Address
<form:input path="address" class="form-control" id="address" placeholder="Address" value="${emp.getAddress()}"/>
<form:errors path="address" style="color:red"/>

</div>
<br><br>
<form:button id="update" name="update" class="btn btn-primary" onclick="return confirm('Confirm Update?')">Update</form:button>
</form:form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
</body>
</html>