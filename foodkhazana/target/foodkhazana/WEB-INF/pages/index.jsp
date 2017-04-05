<%@ include file="links.jsp"%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	body{
		background-size:contain;
		background-repeat:no-repeat;
		background-attachment: fixed;
		background-size:100% 100%;
	}

.c1{
	color:"green";
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


.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 50%;
      height:400px;
      margin: auto;
  }

</style>

  </head>

<body>
<video autoplay loop muted poster="b.jpg" id="bgvid">
    <source src="resources/images/vedios/index.mp4" type="video/mp4">
    </video>

<nav class="navbar navbar-inverse navbar-fixed-top">
 <div class="container-fluid">
<%-- <div class="navbar-header>
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
 --%>   <ul class="nav navbar-nav">
   <li href="#"style="color:white">  <img class="img-circle"src="resources/images/f.png" width=50 height=50/>oodKhazana</a></li>
   <li class="active"><a href="home"><span class="glyphicon glyphicon-home" style="color:white"></span>Home</a></li>
   <li><a href="#">About Us</a></li>
   <li><a href="#"> <span class="glyphicon glyphicon-earphone" style="color:white"></span>Contact Us</a></li>
   
   </ul>
   
   <ul class="nav navbar-nav  navbar-right">
   <li><a href="reqspringloginpage"><span class="glyphicon glyphicon-user"></span>SpringLogin</a></li>
   <li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
   </ul>
   </div>
   </nav>
   <br><br>
 <h2 style="color: green">Order delicious food online!</h2>

<!-- <div class="col-sm-4"></div> --> 

<div class="container-fluid" style="background-image: transparent">

<div class="col-sm-12">
	<!-- <div class="row"> -->
		

<!--   coraousel starts -->



<!-- <div class="container"> -->
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="resources/images/carousel/th1.jpg" alt="food" width="250" height="250">
        <div class="carousel-caption">
          <h3>indian foodKhazana</h3>
          <p>yummy yummy masala dosa.create</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/carousel/paner.jpg" alt="food" width="460" height="340">
        <div class="carousel-caption">
          <h3>indian  foodKhazana</h3>
          <p>yummy yummy panner curry</p>
        </div>
      </div>
    
      <div class="item">
        <img src="resources/images/carousel/ch.jpg" alt="food" width="460" height="340">
        <div class="carousel-caption">
          <h3>indian  foodKhazana</h3>
          <p>spicy masala chicken curry</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/carousel/ll6.jpg" alt="food" width="460" height="340">
        <div class="carousel-caption">
          <h3>indian  foodKhazana</h3>
          <p>spicy grilld paneer</p>
        </div>
      </div>
      
      <div class="item">
        <img src="resources/images/carousel/c.jpg" alt="Food" width="460" height="340">
        <div class="carousel-caption">
          <h3>indian  foodKhazana</h3>
          <p>chicken biryani</p>
        </div>
      </div>
       <div class="item">
        <img src="resources/images/carousel/ic4.jpg" alt="Food" width="460" height="340">
        <div class="carousel-caption">
          <h3>indian  foodKhazana</h3>
          <p>vennela with chocolate flavour icecream</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
  
  
<!-- </div> -->

<!--   coraousel endss -->

</div> <!--   row endss -->
</div> <!--   container endss -->


<div class="container">
<div class="row" >

	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail" style="background-color:transparent; border-radius:8px; padding:5px; border-style: double;"> 
		 <img src="resources/images/carousel/manch.jpg" style="width:220px; height:200px;"/>
		 <p style="color: green" align="center">veg manchuria</p>
	  </div>
		</div>
			<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail"style="background-color:transparent; border-radius:8px; padding:5px; border-style: double;"> 
		 <img src="resources/images/carousel/san1.jpg" style="width:220px; height:200px;"/>
		 <p style="color: green" align="center">veg sandwich </p>
	  </div>
		</div>
	
	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px">
		<div class="thumbnail"style="background-color:transparent; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/carousel/burgure.jpg" style="width:220px; height:200px;"/>
		 <p style="color: green" align="center">veg burger</p>
		
		</div>
		</div>
		
		
	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px">
		<div class="thumbnail"style="background-color:transparent; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/carousel/nd1.jpg" style="width:220px; height:200px;"/>
		 <p style="color: green" align="center">veg noodles</p>
		
		</div>
		</div>
		
	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px">
		<div class="thumbnail"  style="background-color:transparent; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/carousel/rol.jpg" style="width:220px; height:200px;"/>
		 <p style="color: green" align="center">veg roll</p>
		
		</div>
		</div>
		
		
	<div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px">
		<div class="thumbnail"  style="background-color:transparent; border-radius:8px; padding:5px; border-style: double">
		 <img src="resources/images/carousel/pizza.jpg" style="width:240px; height:200px;"/>
		 <p style="color: green" align="center">veg chees pizza</p>
		
		</div>
			
	
	
	</div>




</div> 
</div>
<br>
<div class="container">
<div class="row" >

<c:forEach var="ps" items="${psdata}">
<div class="col-sm-3 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div  class="thumbnail image-card" style="height: 370px;background-color:transparent;border:3px solid green; border-radius:8px; padding:3px; border-style: none; text-align:center; font-size:18px; font-style:bold"> 
		 <img id="boxshadow" src="resources/images/products/${ps.productid}.jpg" style="width:220px; height:200px;" class="img-rounded"/>
		 <b style="color:green">
		 <br>Name : ${ps.productname} 
		 <br>Supplier : ${ps.suppliername}
		 <br>Price : ${ps.productsupplierprice}
 

</b>
</div>
</div>
</c:forEach>
</div>
</div>
<%@ include file="footer.jsp"%>
</body>

</html>