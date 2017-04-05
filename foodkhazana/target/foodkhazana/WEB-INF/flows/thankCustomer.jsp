<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../pages/links.jsp" %>
</head>
<body>
<nav class="navbar navbar-inverse  navbar-fixed-top">
  <div class="container">
   
    <ul class="nav navbar-nav">

<%-- <c:url value="/resources/images/products/${ps.productid}.jpg" var="url"></c:url>
		 <img id="boxshadow" src="${url}" style="width:220px; height:200px;" class="img-rounded"/>
 --%>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      <c:url value="/resources/images/users/${userimage}.jpg" var="m"></c:url>
      <img class="img-circle" src="${m}" height="30" width="30"/>Welcome ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqEditProfilePage?uid=${loginuserid}">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="j_spring_security_logout">Logout</a></li>
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
	     <ul class="dropdown-menu">
	     <c:url value="/reqDisplayProductsUser" var="mr"></c:url>
          <li><a href="${mr}">Display All products</a></li>
          <li><a href="#">Display wishlist</a></li>          
        </ul>
      </li>  
     
        <li><a href="#">Orders</a></li>
     <c:url value="/reqDisplayCart" var="url"></c:url>
        <li><a href="${url}"> <span class="glyphicon glyphicon-shopping-cart"></span>${cartsize}</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</nav>

<br>
<div class="container-wrapper">
<div class="container">
<section>
<div class="jumbotron">
<div class="container">
<h1>Thank you for your business!</h1>

<p>Your order will be shipped in two business days!</p>
</div>
</div>
</section>

<section class="container">
<p><a href="reqDisplayProductsUser"  class="btn btn-default">OK</a></p>
</section>
</div>
</div>
</body>
</html>