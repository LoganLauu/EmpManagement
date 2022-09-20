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
<c:url var="url" value="updateemp"/>
<h1>Change Password</h1>
<form:form id="updateForm" modelAttribute="empmanagementuser" method ="post" action ="${url}">

<div class="form-group">
Employee id
<form:input path="eid" class="form-control" id="eid" placeholder="Employee id"  value="${emp.getEid()}" readonly="true"/>
</div>

<div class="form-group">
Username
<form:input path="username" class="form-control" id="firstname" placeholder="Username" value="${emp.getUsername()}" readonly="true"/>
<form:errors path="username" style="color:red"/>

</div>

<div class="form-group">
New password
<form:input type="password" path="password" class="form-control" id="password" placeholder="New password" />
<form:errors path="password" style="color:red"/>

</div>


<form:button id="update" name="update" class="btn btn-primary" onclick="return confirm('Confirm Update Login Details?')">Update</form:button>
</form:form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
</body>
</html>