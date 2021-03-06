<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="links.jsp" %>
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
<body background="resources/images/poo.jpg">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
      <a class="navbar-brand"></a>
     <ul class="nav navbar-nav">
      <li class="dropdown">
  <a class="dropdown-toggle" type="button" data-toggle="dropdown" href="#"><img class="img-circle"src="resources/images/users/${userimage}.jpg" height="30" width="30"/>Welcome ${username}<span class="caret"></span></a>
   <ul class="dropdown-menu">
    <li><a href="reqEditProfilePage?uid=${loginuserid}">Edit Profile</a></li>
    <li><a href="#">Change Password</a></li>
    <li><a href="j_spring_security_logout">Logout</a></li>
  </ul>
  </li>

	 <li class="dropdown">
      <li><a class="dropdown-toggle" type="button" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
    <ul class="dropdown-menu">
    <li><a href="reqDisplayprodcutsAdmin">Display Products</a></li>
    <li><a href="reqProductdetails">Add Products</a></li>
  	</ul>
      </li>
      
     <li class="dropdown">
     <li><a class="dropdown-toggle" type="button" data-toggle="dropdown" href="#">Suppliers<span class="caret"></span></a>
    <ul class="dropdown-menu">
    <li><a href="reqDisplaysuppliersAdmin">Display Suppliers</a></li>
    <li><a href="reqSupplierform">Add Suppliers</a></li>
      </ul>
     </li>
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ProductSupplier<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayXps">Display All ProductSuppliers</a></li>
          <li><a href="reqAddProSupForm">Add ProductSupplier</a></li>          
        </ul>
      </li>  
     
     
      <li class="dropdown">
     <li><a class="dropdown-toggle" type="button" data-toggle="dropdown" href="#">Users<span class="caret"></span></a>
    <ul class="dropdown-menu">
    <li><a href="#">Manage Users</a></li>
    <li><a href="#">Display Users</a></li>
      </ul>
     </li>
     </ul>
  
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</nav>
<br><br>
display suppliers admin
<div class="container">
<%-- ${suppliersData} --%>
<table border ="0" class="table table-stripped fixed_headers" style="font-weight:bold"  >
<thead>
<tr style="background:rgba(60,60,90,1);color:white;table-layout: fixed;">
<th style="text-align:center">Supplier ID</th>
<th style="text-align:center">Supplier Logo</th>
<th style="text-align:center">Supplier Name</th>
<th style="text-align:center">Supplier Desc</th>
<th style="text-align:center">Supplier Availability</th>
<th style="text-align:center">Manage</th>
</tr>
</thead>

<tbody>
<c:forEach var="sup" items="${suppliers}">
<tr style="text-align:center;background-color:transparent">
<td style="vertical-align: middle;font-weight:bold;color:blue">${sup.supplierid}</td>
<td style="align:center"> <img style="border-radius:15px" src="resources/images/suppliers/${sup.supplierid}.jpg" height="120" width="150" /></td>
<td style="vertical-align: middle;font-weight:bold;color:blue">${sup.suppliername}</td>
<td style="vertical-align: middle;font-weight:bold;color:blue">${sup.supplierdesc}</td>
<td style="vertical-align: middle;font-weight:bold;color:blue">${sup.issupplieravailable}</td>
<td style="vertical-align: middle"><a href="reqEditSupplierPage?sid=${sup.supplierid}" > <span class="glyphicon glyphicon-pencil btn btn-warning btn-large"></span></a> / 
<a href="reqDeleteSupplier?sid=${sup.supplierid}"> <span class="glyphicon glyphicon-trash btn btn-warning btn-large"></span></a> </td>

</c:forEach>

</tbody>

</table>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>