<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  

<style>
body{
color:white;
background-image: url("https://c4.wallpaperflare.com/wallpaper/722/525/100/silhouette-photo-of-three-near-mountain-hehuanshan-hehuanshan-wallpaper-preview.jpg");
backround-repeat:no-repeat;
background-size:cover;
background-position:center;
}
</style>
</head>
<body>


Welcome ${username}

<nav class="navbar navbar-inverse">  
  <div class="container-fluid">  
    <div class="navbar-header">  
      <a class="navbar-brand">MP</a>  
    </div>  
    <ul class="nav navbar-nav">  
      <li class="active"><a href="viewallemp" target="iframe_a">View All Employee</a></li>  
      <li><a href="addemp" target="iframe_a">Add Employee</a></li>  
    </ul>  
    <ul class="nav navbar-nav navbar-right">  
      <li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>  
    </ul>  
  </div>  
</nav>  

<center>
<iframe src="" name="iframe_a" height="750px" width="1250px" title="iframe"frameBorder="0"></iframe>
</center>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  


</body>
</html>