  <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="en">

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


<div class="jl_logo"><a href='<s:url value="/"></s:url>'><img src="resources/site/img/foodtownlogo.png" height="500px" width="200px" alt=""></a></div>
<!-- Menu-->
<div class="navigation_wrapper header-nav navbar-collapse collapse"  id="navbarMobile">
<ul id="mainmenu" class="jl_main_menu">
<li class="menu"><a href='<s:url value="/"></s:url>'>Homepage</a>
<li class="menu"><a href='<s:url value="/menu"></s:url>'>Our Menu</a>
<li class="menu"><a href='<s:url value="/blogscreen"></s:url>'>Blog</a>
<li class="menu"><a href='<s:url value="/contactus"></s:url>'>Contact Us</a>

<div class="jl-header-left">




        </div>
  
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