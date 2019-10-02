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
    
    <title>FoodTown | Menu</title>
    
    
    <c:import url="/css"></c:import>
    
</head>
<body class="wow-animation">
  <!-- Header-->
        <c:import url="/navbar"></c:import>
<!-- Cart and Reservation-->



        




   <!-- Food Menu -->
      <section class="jl-food-menu padding-top-20 padding-bottom-80 padding-sm-top-20 padding-sm-bottom-50">
<div class="container">
<div class="row justify-content-center margin-bottom-10">
<div class="col-md-8 text-center">
<div class="jl-headding-title">
<span class="jl-title-info">Always Tasty Food</span>
<h2 class="">Choose & enjoy</h2>
<span class="jl-headding-separator"></span> 
<div class="jl-heading-desc">
           Our menu offers you the best foods with best prices. Enjoy!  </div>
</div>
</div>
</div>

<div class="row">
<div class="col-md-12">
  <ul class="jl-food-nav-tab nav nav-tabs margin-bottom-30">    
    <li class="nav-item"><a data-toggle="tab" href="#menu1" class="active"><i class="foodicon-burger"></i>Menu</a></li>
  
  </ul>

 

<div class="tab-content jl-tab-content">
      <div id="menu1" class="tab-pane active">
         <div class="jl-food-carousel slick-slider" data-arrows="true" data-loop="true" data-dots="true" data-swipe="true" data-items="1" data-xs-items="1" data-sm-items="2" data-md-items="3" data-lg-items="3" data-xl-items="5">
      <c:if test="${not empty fooddata }">
			<c:forEach items="${fooddata }" var="item">
			
      <div class="col-md-4 jl-item-carousel wow fadeInUp">
        <figure><img src="${item.foodimage }" alt=""></figure>
        <div class="caption">
        
                        <h6><a class="link link-default" href='<s:url value="/detay/${item.foodid }"></s:url>'>${item.foodname }</a></h6>
                        <p class="text-italic">
                        ${item.foodtext }
                        
                        </p>
                        <p class="price">$${item.foodprice }</p><a class="btn margin-top-15" href='<s:url value="/detay/${item.foodid }"></s:url>'>Order Now</a>
                      </div>
                  </div>
                   </c:forEach>
                  </c:if>
                 
                  
         
      </div>
</div>

</div>
</div>
</div>
</div>
    </section>





     <c:import url="/js"></c:import>
<c:import url="/footer"></c:import>
   
    <div id="go-top"><i class="fas fa-arrow-up"></i></div>
        
             <script src='<s:url value="resources/site/js/scripts.js"></s:url>'> </script>
	<script src='<s:url value="resources/site/js/custom.js"></s:url>' ></script>
</body>
</html>