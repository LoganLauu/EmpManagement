<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-image: url("data:image/jpeg;base64,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");
  background-repeat: no-repeat;
  background-size: cover; 
}
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</style>

<body>

<div class="w3-bar w3-border w3-light-grey" >
<div class="center">
  <a class="w3-bar-item w3-button" href="index.jsp"><i class="fa fa-fw fa-home"></i>Home</a>
  <a class="w3-bar-item w3-button" href="contactus" target="iframe_a">Contact Us</a>
  <a class="w3-bar-item w3-button" href="aboutus" target="iframe_a">About Us</a>
</div> 
  <a class="w3-bar-item w3-button w3-green w3-right" onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><i class="fa fa-fw fa-user"></i>Login</a>
</div>

<center>
<div class="iframe_a">
<iframe src="slideshow.jsp" name="iframe_a" height="90%" width="50%" title="iframe" frameBorder="0"></iframe>
</div>
</center>



<div id="id01" class="modal">
  
<form class="modal-content animate" action="loginProcess" method="post">

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" id="username" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" id="password" required>
        
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
  
  
 
</div>

<script type="text/javascript">
  if (top.location.href != self.location.href)
	  top.location.href = self.location.href.post; 
</script>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</body>

</html>
