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
	<style>
	
#boxshadow {
    position: relative;
    -moz-box-shadow: 1px 2px 4px rgba(0, 0, 0,0.5);
    -webkit-box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
    box-shadow: 10px 20px 10px rgba(0, 0, 0, .5);
    padding: 1px;
    /* background: white; */
}
#boxshadow img {
    width: 100%;
    border: 1px solid #8a4419;
    border-style: inset;
}


#boxshadow::after {
    content: '';
    position: absolute;
    z-index: -1; /* hide shadow behind image */
    -webkit-box-shadow: 0 15px 20px rgba(0, 0, 0, 0.3);
    -moz-box-shadow: 0 15px 20px rgba(0, 0, 0, 0.3);
    box-shadow: 0 15px 20px rgba(0, 0, 0, 0.3);                
    width: 70%; 
    left: 15%; /* one half of the remaining 30% */
    height: 100px;
    bottom: 0;
}
.zoom-effect-container {
   /*  float: left;
    position: relative; 
    width: 640px;
    height: 360px;
    mardgin: 0 auto;
    overflow: hidden; */
}

.image-card {
 
  top: 0;
  left: 0;
}

.image-card img {
  -webkit-transition: 0.8s ease;
  transition: 0.8s ease;
}

.zoom-effect-container:hover .image-card img {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}



</style>



</head>

<body background="resources/images/us2.jpg">

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

<br><br><br>

${cartmessage}
<br><br><br>
<div class="container">
<div class="row" >

<c:forEach var="ps" items="${psdata}">
<div class="col-sm-3 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div  class="thumbnail image-card" style="height: 370px;background-color:transparent;border:3px solid green; border-radius:8px; padding:3px; border-style: none; text-align:center; font-size:18px; font-style:bold"> 
		 <c:url value="/resources/images/products/${ps.productid}.jpg" var="url"></c:url>
		 <img id="boxshadow" src="${url}" style="width:220px; height:200px;" class="img-rounded"/>
		 <b style="color:green">
		 <br>Name : ${ps.productname} 
		 <br>Supplier : ${ps.suppliername}
		 <br>Price : ${ps.productsupplierprice}
		 
		  <c:if test="${ps.productsupplierstock >= 8}">
		 		<b><br>Stock : ${ps.productsupplierstock}</b>
		  </c:if>  
		   <c:if test="${ps.productsupplierstock < 8}">
		 		<b style="color:yellow"><br>Out of stock</b>
		  </c:if> 
		  <br>
		  <a href="reqAllSuppProducts?pid=${ps.productid}">All Suppliers</a> 
		   <c:if test="${ps.productsupplierstock >= 8}">
		 <br> 
		 </b>
		 <c:url value="/reqAddItemToCart/${ps.psid}" var="a"></c:url>
		 <form action="${a}">
		  <select name="qty" id="qty">
      	<option value="1">1</option>
      	<option value="2">2</option>
      	<option value="3">3</option>
      	<option value="4">4</option>
      	<option value="5">5</option>
      		
      	</select>
		<button type="submit" class="btn btn-warning btn-large"> 
         <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
         </button>  
		  </form>
		  
		 </c:if>
		 	
		</div>
		
		</div>
		
</c:forEach>

</div> <!--  row closing -->

</div> <!--  container closing -->
<%@ include file="footer.jsp"%>
</body>
</html>