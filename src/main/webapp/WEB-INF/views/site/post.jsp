<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    
    <title>FoodTown | Home</title>
	<link href="/foodtown/resources/site/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="/foodtown/resources/site/css/style.css" rel="stylesheet" type="text/css"/>
	<link rel="icon" href="/foodtown/resources/site/img/favicon.png" type="image/x-icon">

    <!-- Header-->
  
     <!-- Header-->
        <!-- Header-->
        <header>
          <div class="jl_blank_nav"></div>
          <div class="jl-menu-wrapper jl_menu_sticky jl_stick" align="left">        
           <div class="container">
  <div class="row">
<div class="col-md-12">
<div class="jl_header_wrapper">
<!-- nav toggle button -->
            <button class="navbar-toggler collapsed navicon justify-content-end" type="button" data-toggle="collapse" data-target="#navbarMobile" aria-controls="navbarMobile" aria-expanded="false">
            <span></span>
            <span></span>
            <span></span>
          </button>
<!-- Logo-->


<div class="jl_logo"><a href='<s:url value="/"></s:url>'><img src="/foodtown/resources/site/img/foodtownlogo.png" alt=""></a></div>
<!-- Menu-->
<div class="navigation_wrapper header-nav navbar-collapse collapse"  id="navbarMobile">
<ul id="mainmenu" class="jl_main_menu">
<li class="menu"><a href='<s:url value="/"></s:url>'>Homepage</a>
<li class="menu"><a href='<s:url value="/menu"></s:url>'>Our Menu</a>
<li class="menu"><a href='<s:url value="/blogscreen"></s:url>'>Blog</a>
<li class="menu"><a href='<s:url value="/contactus"></s:url>'>Contact Us</a>

<div class="jl-header-left">




  
<li class="menu-item"><button type="button" style="background-color:green" class="btn btn-success" ><a href='<s:url value="/order"  ></s:url>' style="color:white; ">Cart</a></button></li>
<li class="menu-item"><button type="button" class="btn btn-warning" ><a href='<s:url value="${ us!=null ? '/' :'/login' }" ></s:url>'style=color:white>Log In</a></button></li>
<li class="menu-item"><button type="button" class="btn btn-warning" ><a href='<s:url value="/exit" ></s:url>' style="color:white">Log Out</a></button></li>
        
        
      



</ul>
</div>

<!-- Cart and Reservation-->

        
       
  

        

</div>

</div>
	

</div>
</div>
  </div>
  
 
</header>
</head>
<body>
  


<div class="container">

    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-8">

        <!-- Title -->
        <h2 class="mt-4">${PostGoster.posttitle}</h2>

        <!-- Author -->
        <p class="lead">
          by ${PostGoster.postauthor}
        </p>

        <hr>

        <!-- Date/Time -->
        <p>${PostGoster.postdate}</p>

        <hr>

        <!-- Preview Image -->
        <img class="img-fluid rounded" src="${PostGoster.postimage}" alt="">

        <hr>

        <!-- Post Content -->
        <p class="lead">${PostGoster.posttext}</p>
        
        <p>${PostGoster.posttextparagraph1}</p>
        
        <p>${PostGoster.posttextparagraph2}</p>

        <hr>
        
        </div>
        </div>
        </div>
        

<script type="text/javascript" src="foodtown/resources/site/js/scripts.js">
	
	</script>
	<script type="text/javascript" src="foodtown/resources/site/js/custom.js">
	
	</script>
     
    <div id="go-top"><i class="fas fa-arrow-up"></i></div>
        
      
</body>
       <footer>
           <div class="jl-footer-wrapper padding-top-60 padding-bottom-10">
           <div class="container">
  <div class="row">
    <!-- About Us-->
    <div class="col-md-4 margin-bottom-50">
<div class="footer-widget-area">
<div class="footer-about">
  <img src="resources/site/img/foodtownlogo.png" alt="">
              <p>
                 All Rights Reserved - 2019. This site was created by Yalçın Ege İper
              </p>              
            </div>

<div class="jl-social-about">
<ul>
<li>
<a href="https://www.twitter.com/egeiper"><img src="/foodtown/resources/site/img/twitter.png" width="27px"></a>
<li>
<li>
<a href="https://www.instagram.com/egeiper23"><img src="/foodtown/resources/site/img/instagram.png" width="27px"></a>
<li>
<li>
<a href="https://www.facebook.com/egeiper"><img src="/foodtown/resources/site/img/facebook.png" width="23px"></a>
<li>
</ul>
</div>

</div>
      </div>
      <!-- Contact Info-->
      <div class="col-md-4 margin-bottom-50">        
        <div class="footer-widget-area">
          <h3 class="header-widget">Contact info</h3>
        
        <ul class="contact-list">
          
          <li><i class="ti-email"></i><span class="txt"><strong> Email: </strong><br> egeiper@hotmail.com</span></li>
        </ul>
      </div>
      </div>
      <!-- Follow Us-->
      <div class="col-md-4 margin-bottom-50">
<div class="footer-widget-area">
<h3 class="header-widget">Follow Us</h3>
            <div class="jl-instagram">
              <a href="https://www.instagram.com/foodtown4/">                
                  <span class="instagram-content">
                <img src="/foodtown/resources/site/img/01.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="https://www.instagram.com/foodtown4/">
                <span class="instagram-content">
                <img src="/foodtown/resources/site/img/02.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="https://www.instagram.com/foodtown4/">
                <span class="instagram-content">
                <img src="/foodtown/resources/site/img/03.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="https://www.instagram.com/foodtown4/">
                <span class="instagram-content">
                <img src="/foodtown/resources/site/img/04.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="https://www.instagram.com/foodtown4/">
                <span class="instagram-content">
                <img src="/foodtown/resources/site/img/05.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="https://www.instagram.com/foodtown4/">
                <span class="instagram-content">
                <img src="/foodtown/resources/site/img/06.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="https://www.instagram.com/foodtown4/">
                <span class="instagram-content">
                <img src="/foodtown/resources/site/img/07.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
              <a href="https://www.instagram.com/foodtown4/">
                <span class="instagram-content">
                <img src="/foodtown/resources/site/img/08.jpg" alt="">
                <i class="fab fa-instagram"></i>
              </span>
              </a>
            </div>
          </div>
      </div>
      
      </div>
      </div>
    </div>
    <div class="jl-footer-copyright padding-30">
    <div class="container">
  <div class="row">
    <div class="col-md-12">
      <p class="copyright"></p>
      
    </div>
      </div>
    </div>
    </div>
    </footer>

		


</html>