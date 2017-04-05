<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="links.jsp" %>
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
	</style>
</head>

 
<body background="resources/images/lk.jpg">
<nav class="navbar navbar-inverse  navbar-fixed-top">
  <div class="container">
   
    <ul class="nav navbar-nav">

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle"src="resources/images/users/${userimage}.jpg" height="30" width="30"/>Welcome ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqEditProfilePage?uid=${loginuserid}">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="j_spring_security_logout">Logout</a></li>
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayProductsUser">Display All products</a></li>
          <li><a href="#">Display wishlist</a></li>          
        </ul>
      </li>  
     
        <li><a href="#">Orders</a></li>
     
        <li><a href="#"> <span class="glyphicon glyphicon-shopping-cart"></span>  0</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</nav>

<br><br><br>
<img src="resources/images/products/${prdid}.jpg" style="width:320px;height:200px:"/>${productsname }<br>
<div class="conatiner-fluid">
<table class="table table-bordered">
<thead>
<tr>
<th>SUPPLIER NAME</th><th>SUPPLIER PRICE</th><th>SUPPLIER STOCK</th>
</tr>
</thead>

<c:forEach var="prd" items="${suppliers}">
<tr>
<td>${prd.suppliername}</td>
<td>${prd.productsupplierprice}</td>
<td>${prd.productsupplierstock}</td>
</tr>
</c:forEach>

</table>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>