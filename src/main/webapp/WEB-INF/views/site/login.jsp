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
    
    <title>FoodTown | Login</title>
    
    
    <c:import url="/css"></c:import>
    
</head>
<body class="wow-animation">
  <c:import url="/navbar"></c:import>
<!-- Cart and Reservation-->



<section class="jl-page-content margin-100 margin-sm-50">
  <div class="container">
  <div class="row">
    <div class="col-md-12">
<div class="login-form">
                <form action="login" method="post">
                  
			<input name="usermail" type="email" class="form-control" placeholder="E-mail"/>
			<br>
			<input name="userpassword" type="password" class="form-control" placeholder="Password" />
			
			<label>
			 <span class="input">
          <input name="remember_me" value="on" type="checkbox" checked type="hidden" style="opacity:0"> <a style="font-family:Arial; color:black" ></a>
        </span>
        </label>
        <br>
			<button type="submit" class="btn btn-success">Log In</button>
			
			
                        <div class="form-footer text-center margin-top-30">
                            <p class="text-muted">Don't have an account? <a href="register.html">Sign up</a></p>
                        </div>
                        </form>
                    </div>
               
            </div>
    </div>
    </div>
     
    </section>




     <c:import url="/js"></c:import>
<c:import url="/footer"></c:import>
   
    <div id="go-top"><i class="fas fa-arrow-up"></i></div>
        
            
</body>
</html>