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
    
    <title>FoodTown | Contact Us</title>
    
    
    <c:import url="/css"></c:import>
    
</head>
<body class="wow-animation">
  <!-- Header-->
     <c:import url="/navbar"></c:import>


<div class="container">
   
	<div class="row justify-content-center">
		<div class="col-12 col-md-8 col-lg-6 pb-5">


                    <!--Form with header-->

                    <form action="contactus" method="post">
                        <div class="card border-primary rounded-0">
                            <div class="card-header p-0">
                                <div class="bg-info text-white text-center py-2">
                                    <h3><i class="fa fa-envelope"></i> Contact Us</h3>
                                    <p class="m-0">Your complaints and suggestions are valuable to us</p>
                                </div>
                            </div>
                            <div class="card-body p-3">

                                <!--Body-->
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-user text-info"></i></div>
                                        </div>
                                        <input name="namesurname" type="text" class="form-control" id="nombre" name="nombre" placeholder="Name and Surname" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-envelope text-info"></i></div>
                                        </div>
                                        <input name="mail" type="email" class="form-control" id="nombre" name="email" placeholder="Mail Address" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fa fa-comment text-info"></i></div>
                                        </div>
                                        <textarea name="message" class="form-control" placeholder="Message" required></textarea>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <input type="submit" value="Send" class="btn btn-info btn-block rounded-0 py-2" style="background-color:green">
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
                    <!--Form with header-->


                </div>
	</div>
</div>


     <c:import url="/js"></c:import>
<c:import url="/footer"></c:import>
    <div id="go-top"><i class="fas fa-arrow-up"></i></div>
        
            
</body>
</html>