<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
$(document).ready(function(){
	var searchCondition='${searchCondition}';
	$('.table').DataTable({
		"lengthMenu" : [[5,10,15,-1],[5,10,15,"All"]],
		"oSearch":{"sSearch":searchCondition}
		
	})	
});

</script>
<style>
	body{
		background-size:contain;
		background-repeat:no-repeat;
		background-attachment: fixed;
		background-size:100% 100%;
	}



</style>
</head>
<body background="resources/images/us5.png">
<nav class="navbar navbar-inverse  navbar-fixed-top">
  <div class="container">
   
    <ul class="nav navbar-nav">

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle"src="resources/images/users/${userimage}.jpg" height="30" width="30"/>Welcome ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqEditProfilePage?uid=${loginuserid}">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="home">Logout</a></li>
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayprodcutsAdmin">Display All products</a></li>
          <li><a href="reqProductdetails">Add Product</a></li>          
        </ul>
      </li>  
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Suppliers<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplaysuppliersAdmin">Display All suppliers</a></li>
          <li><a href="reqSupplierform">Add Supplier</a></li>          
        </ul>
      </li>  
     
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ProductSupplier<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayXps">Display All ProductSuppliers</a></li>
          <li><a href="reqAddProSupForm">Add ProductSupplier</a></li>          
        </ul>
      </li>  
     
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="reqForSignupPage">About Us</a></li>
      <li><a href="reqForLoginPage">  Contact Us</a></li>
    </ul>
  </div>
</nav>
<br><br><br><br>


<br><br>
<%-- ${xpsdata} --%>
<div class="container">
<table border ="0" class="table table-stripped fixed_headers" style="font-weight:bold"  >
<thead>

<tr style="background:rgba(60,60,90,1);color:white;table-layout: fixed;">
<th style="text-align:center">Product ID</th>
<th style="text-align:center">Supplier ID</th>
<th style="text-align:center">XPS ID</th>
<th style="text-align:center">Price</th>
<th style="text-align:center">Stock</th>
<th style="text-align:center">Is Available</th>

<th style="text-align:center">Manage</th>
</tr>
</thead>

<tbody>
<c:forEach var="xps" items="${xpsdata}">
<tr style="text-align:center;background-color:transparent">
<td style="vertical-align: middle;font-weight:bold;color:blue"><img style="border-radius:15px" src="resources/images/products/${xps.productid}.jpg" height="70" width="90" />  ${xps.productid}</td>
<td style="vertical-align: middle;font-weight:bold;color:blue"><img style="border-radius:15px" src="resources/images/suppliers/${xps.supplierid}.jpg" height="70" width="90" />  ${xps.supplierid}</td>
<td style="vertical-align: middle;font-weight:bold;color:blue">${xps.psid}</td>
<td style="vertical-align: middle;font-weight:bold;color:blue">${xps.productsupplierprice}</td>
<td style="vertical-align: middle;font-weight:bold;color:blue">${xps.productsupplierstock}</td>
<td style="vertical-align: middle;font-weight:bold;color:blue">${xps.isproductsupplieravailable}</td>

<td style="vertical-align: middle"><a href="reqEditXmapPage?psid=${xps.psid}" > <span class="glyphicon glyphicon-pencil btn btn-warning btn-large"></span></a> / 
<a href="reqDeleteXmap_product_Supplier?psid=${xps.psid}"> <span class="glyphicon glyphicon-trash btn btn-warning btn-large"></span></a> </td>

</tr>

</c:forEach>
</table>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>