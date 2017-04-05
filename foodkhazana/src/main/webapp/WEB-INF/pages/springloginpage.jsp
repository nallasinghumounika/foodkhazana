<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="links.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
form {
    border: 0px solid #f1f1f1;
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


video#bgvid { 
    position: fixed;
    top: 50%;
    left: 50%;
    min-width: 50%;
    min-height: 50%;
    width: auto;
    height: auto;
    z-index: -100;
    -ms-transform: translateX(-50%) translateY(-50%);
    -moz-transform: translateX(-50%) translateY(-50%);
    -webkit-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
    background: url(clothing.jpg) no-repeat;
    background-size: cover; 
    opacity:0.4
    
}
</style>
</head>
<body background="resources/images/login.jpg">
<video autoplay loop muted poster="b.jpg" id="bgvid">
    <source src="resources/images/vedios/b1.mp4" type="video/mp4">
    </video>
<nav class="navbar navbar-inverse navbar-fixed-top">
   <div class="container">
     
     <ul class="nav navbar-nav">
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"href="#">Welcome</a>
     <ul class="dropdown-menu">
     <li><a href="home">Home</a></li>
      <li><a href="#">About Us</a></li>
       <li><span class="glyphicon glyphicon-earphone"></span><a href="#">Contact Us</a></li>
       </ul>
       </li>
       </ul>
        <ul class="nav navbar-nav  navbar-right">
   <li><a href="reqForLoginPage"><span class="glyphicon glyphicon-user"></span>Login</a></li>
   <li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
   </ul>
   
   </div>

   </nav>
<br><br><br><br><br>
${message1}
${error}
${logout}
<br>
 <div class="container-fluid" align="center">
<form action="j_spring_security_check" method="POST" style="color: black">
<div class="imgcontainer">
<h2><span class="glyphicon glyphicon-lock" align="center" style="color:green">LOGIN</span></h2>
  </div>

<label for="userid" style="color:midnightblue"><h4><b>Enter User ID</b></h4></label>
 <div class="form-group"><b><input type="text" name ="j_userid" style="background-color:silver; opacity:0.7"/></b></div>

<label for="password" style="color:midnightblue"><h4><b>Enter Password</b></h4></label>
<div class="form-group"><b><input type="password" name ="j_password" style="background-color:silver; opacity:0.7"/></b></div>

<button type="submit">Login</button>
<br>
<input type="checkbox" checked="checked" style="color:black">Remember me
   
    <div class="container"  >
    <div class="col-sm-4" style="background:transparent; border:none">
    </div>
<div class="col-sm-4" style="background-color:#f1f1f1" >
     <p><button type="button" class="cancelbtn">Cancel</button>
    <!-- <span class="psw"> -->Forgot <a href="#">password?</a><!-- </span> -->
  </p>
    </div>
    </div>
</form>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>