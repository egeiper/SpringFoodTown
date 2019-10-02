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
    
    <title>FoodTown | Register</title>
    
    
    <c:import url="/css"></c:import>
    
</head>
<body class="wow-animation">
    <c:import url="/navbar"></c:import>
  <br>
<div class="row">
  
<div class="col-sm-4"></div>
<div class="col-sm-4">
<div align="center">
  <h3><span class="badge badge-danger">Sign Up</span></h3>
</div>

</div>
<div class="col-sm-4"></div>
</div>




<section class="jl-page-content margin-60 margin-sm-50">
  <div class="container">
  
 
  
 
  
  <div class="row">
    <div class="col-md-12">
<div class="login-form">
                <form action="registerform" method="post" onSubmit="return checkPassword(this)">
                    <div class="login-form-body">
                        <div class="form-gp">
                            <label for="email">Name and Surname</label>
                            <input name="username" type="text" id="username">
                            <i class="ti-email"></i>
                        </div>
                        <div class="form-gp">
                            <label for="email">Email address</label>
                            <input name="usermail" type="email" id="email">
                            <i class="ti-email"></i>
                        </div>
                        <div class="form-gp">
                            <label for="password">Password</label>
                            <input name="userpassword" type="password" id="password">
                            <i class="ti-lock"></i>
                        </div>
                        
                        <div class="row margin-bottom-30 rmber-area">
                            <div class="col-12">
                                
                            </div>
                        </div>
                        <div class="submit-btn-area">
                            <input type="submit" value="Register" class="btn btn-primary" style="background-color:blue"/>
                            <div class="login-other row margin-30">
                                <div class="col-6">
                                   
                                </div>
                                <div class="col-6">
                                    
                                </div>
                            </div>
                        </div>
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
        
             <script src='<s:url value="resources/site/js/scripts.js"></s:url>'> </script>
	<script src='<s:url value="resources/site/js/custom.js"></s:url>' ></script>
</body>
</html>