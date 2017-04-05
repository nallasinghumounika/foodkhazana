<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="links.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -100;
    -ms-transform: translateX(-50%) translateY(-50%);
    -moz-transform: translateX(-50%) translateY(-50%);
    -webkit-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
    background: url(clothing.jpg) no-repeat;
    background-size: cover; 
    
}
</style>

</head>
<body background="resources/images/kl4.jpg">
<video autoplay loop muted poster="b.jpg" id="bgvid">
    <source src="resources/images/vedios/adm.mp4" type="video/mp4">
    </video>
<nav class="navbar navbar-inverse">
   <div class="container">
     
     <ul class="nav navbar-nav">
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"href="#"><img class="img-circle" src="resources/images/users/${userimage}.jpg" height="30" width="30"/> Welcome ${userlogedin}<span class="caret"></span></a>
     <ul class="dropdown-menu">
     <li><a href="reqEditProfilePage?uid=${userimage}">Edit Profile</a></li>
      <li><a href="#">Change Password</a></li>
       <li><a href="j_spring_security_logout">Logout</a></li>
       </ul>
       </li>
       
        <li class="dropdown"><a class="dropdown-toggle"data-toggle="dropdown"href="#">Products<span class="caret"></span></a>
       <ul class="dropdown-menu">
     <li><a href="reqDisplayProductsUser">Display All products</a></li>
      <li><a href="#">Display Wishlist</a></li>
      </ul>
      </li>
       
         <li><a href="#">Orders</a></li>
         <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>0</a></li>
       
       
       
      
      </ul>
       <ul class="nav navbar-nav  navbar-right">
   <li><a href="reqForSignUpPage">About Us</a></li>
   <li><a href="reqForLoginPage">Contact Us</a></li>
   
   </ul>
   </div>
   </nav>
   <h2>User login successfully</h2>
<%@ include file="footer.jsp"%>
</body>
</html>