<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="links.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
form {
    border: 2px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 20%;
    padding: 8px 12px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 5px 8px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 20%;
}

.cancelbtn {
    width: auto;
    padding: 3px 5px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 10%;
    border-radius: 8%;
}

.container {
    padding: 8px;
}

span.psw {
    float: right;
    padding-top: 14px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 100px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<style>
	body{
		background-size:contain;
		background-repeat:no-repeat;
		background-attachment: fixed;
		background-size:100% 100%;
	}



</style>
</head>
<body background="resources/images/k3.jpg">
<nav class="navbar navbar-inverse">
   <div class="container">
     
     <ul class="nav navbar-nav">
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"href="#">Welcome Admin..</a>
     <ul class="dropdown-menu">
     <li><a href="home">Home</a></li>
      <li><a href="#">About Us</a></li>
       <li><a href="#">Contact Us</a></li>
       </ul>
       </li>
       </ul>
        <ul class="nav navbar-nav  navbar-right">
   <li><a href="reqForLoginPage"><span class="glyphicon glyphicon-user"></span>Login</a></li>
   <li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
   </ul>
   
   </div>

   </nav>


<br>
${message1}
<br>
 <div class="container-fluid" align="center">
<form:form commandName="userObject" action="reqLoginCheck">
<div class="imgcontainer">
  <img src="resources/images/p.jpg" class="img-circle" alt="adm1" width="230" height="210">
  </div>
 
<label for="userid" style="color: green" >Enter User ID</label>
<div class="form-group"> <form:input path="userid" style="background-color:silver"/></div>
<br>
<label for="password" style="color: green">Enter password</label>
<div class="form-group"> <form:password path="password" style="background-color:silver"/></div>
<br>
<button type="submit">Login</button>
<br>
<input type="checkbox" checked="checked"> Remember me
    

 <br>   
    <div class="container"  >
    <div class="col-sm-4">
    </div>
<div class="col-sm-4" style="background-color:#f1f1f1" >
     <p><button type="button" class="cancelbtn">Cancel</button>
    <!-- <span class="psw"> -->Forgot <a href="#">password?</a><!-- </span> -->
  </p>
    </div>
    </div>
</form:form>
</div>
</body>
</html>