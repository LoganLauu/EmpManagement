<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<style>
body {
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: 100%;
 }
  div {
	padding: 10px;
	text-align:left;
	font-size:400%;
	font-family: 'Brush Script MT', cursive;
}
 
</style>

<body onload='changeimage(5);'>

<script type='text/javascript'>
var imageID=0;
function changeimage(every_seconds){
    //change the image
    if(!imageID){
        document.body.style.backgroundImage = "url('https://uschamber-co.imgix.net/https%3A%2F%2Fs3.us-east-1.amazonaws.com%2Fco-assets%2Fassets%2Fimages%2Fteam-meeting3.jpg?auto=compress%2Cformat&crop=focalpoint&fit=crop&fp-x=0.5&fp-y=0.5&h=415&q=88&w=622&s=74224701576ca2f473993d6a30a43cac')";
    	imageID++;
    }
    else{if(imageID==1){
        document.body.style.backgroundImage ="url('https://www.thebalancesmb.com/thmb/jA-LDdXYaWmYbZXx88tivlsjy3w=/2140x1204/smart/filters:no_upscale()/Employees-3117af3d30fa438bb6dd3ad4141a8b4c.jpg')";
        imageID++;
    }else{if(imageID==2){
        document.body.style.backgroundImage = "url('https://www.insureon.com/-/media/blog/posts/2021/photo_group-of-employees-working-on-project.png?h=370&iar=0&w=750&rev=3faabd3c0f7c4e11966caaa037fa4fc8')";
        imageID=0;
        
    }}}
    //call same function again for x of seconds
    setTimeout("changeimage("+every_seconds+")",((every_seconds)*1000));
}
</script>
</body>

</html>