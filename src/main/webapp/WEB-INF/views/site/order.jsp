<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import=" com.works.foodtown.OrderController"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script>

	</script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    
    <title>FoodTown | Order</title>
    
    
   <link href="/foodtown/resources/site/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="/foodtown/resources/site/css/style.css" rel="stylesheet" type="text/css"/>
	<link rel="icon" href="/foodtown/resources/site/img/favicon.png" type="image/x-icon">
    
</head>
<body class="wow-animation">
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

<section class="jl-page-content margin-40 margin-sm-50">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
      
   <table class="table table-bordered shop-cart margin-bottom-50">
      <thead>
         <tr>
          
            <th class="product-name text-center">Product</th>
            <th class="product-price text-center">Price</th>
            <th class="product-price text-center">Status</th>
              <th class="product-price text-center">Delete</th>
         </tr>
      </thead>
      <tbody>
<c:if test="${not empty cartdata }">
		  	<c:forEach items="${cartdata }" var="item">
         <tr class="cart_item">
            
            <td class="product-name"><h5>${item.foodname }</h5></td>
            
            <td class="product-price"> <span class="Price-amount">$${item.foodprice }</span></td>
            <td class="product-price"> <span class="Price-amount">${item.foodstatus }</span></td>
           <td class="product-price"><a onclick="return alt1();" href='<s:url value="/delete/${item.cartid}"></s:url>' class="btn btn-danger">Delete</a></td>
       
          
          </tr>

         </c:forEach>
		 </c:if>
		 <tr class="cart_item">
		 <td class="totalprice"><h6>Total Price: $${total}</h6></td>
          </tr>
      </tbody>
       
   </table>



      </div>
        </div>
        </div>
</section>
<div class="row">
<div class="col-sm-2"></div>
<div class="col-sm-2">
 
</div>
<div class="col-sm-8"></div>
</div>
<br>
<div class="container">
   
	<div class="row justify-content-center">
		<div class="col-12 col-md-8 col-lg-6 pb-5">

          <form onsubmit="return alert('Your order has received!');" action='<s:url value="/order"></s:url>' method="post">
          
                        <div class="card border-primary rounded-0">
                            <div class="card-header p-0">
                                <div class="bg-info text-white text-center py-2">
                                    <h3><i class="fa fa-envelope"></i> Details</h3>
                                    <p class="m-0">Final step to your delicious food!</p>
                                </div>
                            </div>
                            <div class="card-body p-3">

                                <!--Body-->
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                        </div>
                                        <input name="fullname" type="text" class="form-control" placeholder="Full Name"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                                        </div>
                                        <input name="address" type="text" class="form-control" placeholder="Address" />
                                    </div>
                                </div>
								<c:if test="${not empty cartdata }">
		  	<c:forEach items="${cartdata }" var="item">
                                        <input name="foodname" type="hidden" value="${item.foodname }">
                                    
                                </c:forEach>
                                </c:if>
								
                                        <input name="foodstatus" value="Ready to Deliver" required="required"  type="hidden" class="form-control" >
                                    
								<div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                                        </div>
                                        <input name="phonenumber" type="text" class="form-control" placeholder="Phone Number" />
                                    </div>
                                </div>
								
								
                                      
                                   
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                                        </div>
                                        <textarea name="note" class="form-control" placeholder="Message" ></textarea>
                                    </div>
                                </div>
                                <input name="totalprice" type="hidden" value="${total }">

                                <div class="text-center">
                                    <input type="submit" value="Order"  class="btn btn-info btn-block rounded-0 py-2" style="background-color:green">
                                </div>
                                 <div class="row">
                                 <div class="col-sm-4"></div>
                                 <div class="col-sm-4">
                                 <script>

</script>
</div>
<div class="col-sm-4"></div>
             </div>                  
                            </div>

                        </div>
                    </form>

</div>

                        </div>
                       
                         </div>

     
     
    <div id="go-top"><i class="fas fa-arrow-up"></i></div>
        
             <script src='<s:url value="resources/site/js/scripts.js"></s:url>'> </script>
	<script src='<s:url value="resources/site/js/custom.js"></s:url>' ></script>
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