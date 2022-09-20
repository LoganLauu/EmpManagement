<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>  

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
<center>
<h1>Add New Employee</h1>
</center>
<form:form method ="post" modelAttribute="addemployee" action ="addemp">

<div class="form-group">
<form:input path="firstname" class="form-control" id="firstname" placeholder="First Name" autocomplete="off"/>
<form:errors path="firstname" style="color:red"/>
</div>

<div class="form-group">
<form:input path="lastname" class="form-control" id="lastname" placeholder="Last Name" autocomplete="off"/>
<form:errors path="lastname" style="color:red"/>
</div>

<div class="form-group">
<form:input path="salary" class="form-control" id="salary" placeholder="Salary" autocomplete="off"/>
<form:errors path="salary" style="color:red"/>
</div>

<div class="form-group">
<form:input path="department" class="form-control" id="department" placeholder="Department" autocomplete="off"/>
<form:errors path="department" style="color:red"/>
</div>

<div class="form-group">
<form:input path="role" class="form-control" id="role" placeholder="Role" autocomplete="off"/>
<form:errors path="role" style="color:red"/>
</div>

<center>
<form:label path="gender">
Male
<form:radiobutton path="gender" value="M" />
<span></span>
Female
<form:radiobutton path="gender" value="F" />
<span></span>
</form:label>
<form:errors path="gender" style="color:red"/>

<br><br>

<form:button id="add" name="add" class="btn btn-primary">Add</form:button>
</form:form>
</div>

</center>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>  
</body>
</html>