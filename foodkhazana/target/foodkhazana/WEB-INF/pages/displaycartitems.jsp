<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="links.jsp" %>
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




<!--  <script>



var app = angular.module('myApp', []);

function MyController($scope, $http) {

	  $scope.sortType     = 'name'; // set the default sort type
	  $scope.sortReverse  = false;  // set the default sort order
	  $scope.searchDeviceName   = '';     // set the default search/filter term

        $scope.getCartItems = function() {
                $http({
                        method : 'GET',
                        url : 'getCartItemsData?cartid=${cartid}'
                }).success(function(data, status, headers, config) {
                        $scope.cartitems = data; alert(data);
                }).error(function(data, status, headers, config) {
                        
                });

        };
};

</script>!-->
</head>
<body  background="resources/images/us.jpg" style="background-repeat:no-repeat">
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
     <c:url value="/reqDisplayCart" var="url"></c:url>
        <li><a href="${url}"> <span class="glyphicon glyphicon-shopping-cart"></span>${cartsize}</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</nav>

<br><br><br><br>

<div class="container">
<div class="row" align="right">
<div class="col-md-2" style=" background-color:transparent; border:none">
<c:url value="/reqClearCart/${customerid}" var="und"></c:url>
<a href="${und}" style="color:yellow;" class="btn btn-warning btn-large">Clear Cart</a>
</div>
 <div class="col-xs-6 col-md-12"> 
 <b>Order Total : ${grandtotal}</b>
 <br>
 <c:url value="/order/${customer.cart.cartid}" var="url"></c:url>
 <a href="${url}" style="color:yellow" class="btn btn-warning btn-large">Check Out</a>
 </div>
 </div>
 
 
</div>
 
 <div class ="container">
 
 	<table border ="0" class="table table-stripped fixed_headers" style="font-weight:bold"  >
<thead>
<tr style="background-color:transprent;color:blue;table-layout: fixed;">
<th style="text-align:center">Product</th>
<th style="text-align:center">Supplier</th>
<th style="text-align:center">Quantity</th>
<th style="text-align:center">Price</th>
<th style="text-align:center">Item wise Total</th>
<th style="text-align:center">Option</th>
</tr>
</thead>

<tbody>
<c:forEach var="cartitem" items="${cartitems}">
<tr style="text-align:center;background="color:transparent">

<td style="vertical-align: middle;font-weight:bold;color:white">
<c:url value="/resources/images/products/${cartitem.xmap_product_supplier.productid}.jpg" var="n"></c:url>
<img style="border-radius:15px" src="${n}" height="120" width="150" /></td>

<td style="vertical-align: middle;font-weight:bold;color:white">
<c:url value="/resources/images/suppliers/${cartitem.xmap_product_supplier.supplierid}.jpg" var="d"></c:url>
<img style="border-radius:15px" src="${d}" height="120" width="150" /></td>

<td style="vertical-align: middle;font-weight:bold;color:white">${cartitem.quantity}</td>
<td style="vertical-align: middle;font-weight:bold;color:white">${cartitem.xmap_product_supplier.productsupplierprice}</td>
<td style="vertical-align: middle;font-weight:bold;color:white">${cartitem.itemwisetotal}</td>
<td style="vertical-align: middle;"> 
 <c:url value="/reqDeleteCartItem/${cartitem.cartitemid}" var="url"></c:url>
<a href="${url}" style="color:yellow;font-weight:bold" class="btn btn-warning btn-large">Delete</a>

</td>

</tr>
</c:forEach>
</tbody>


</table>
 
 
 
 </div>

<br><br>

</body>
<html>