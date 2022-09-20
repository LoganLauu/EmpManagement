<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<html>
<head>
<title>Login Portal</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- CSS only -->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

</head>

<body onload="func('${message}')">

<script>
function func(message) {
	if (message != "") {
		alert(message);
	}
}
</script>

<div class="container">
<h1>Login Form</h1>

<form:form id="loginForm" modelAttribute="login" action="loginProcess" method="get">


Admin <form:radiobutton path="accountType" value="admin" name="optradio"/>
Employee <form:radiobutton path="accountType" value="employee" name="optradio"/><br>
<form:errors path="accountType" style="color:red"/>

<br><br>
<div class="form-group">
<form:input path="username" placeholder="Enter Username" class="form-control"/>
<form:errors path="username" style="color:red"/>
</div>
<br><br>

<div class="form-group">
<form:password id="password-field" path="password" placeholder="Enter Password" class="form-control"/>
<form:errors path="password" style="color:red" />
</div>

<br><br>

<td><form:button id="login" name="login" class="btn btn-default">Login</form:button></td>
</form:form>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  



</body>
</html>