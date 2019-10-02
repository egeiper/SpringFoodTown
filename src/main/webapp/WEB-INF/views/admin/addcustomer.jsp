<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>FoodTown | Admin Panel</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <c:import url="/admin/css"></c:import>
  

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  
 <c:import url="/admin/header"></c:import>
 <c:import url="/admin/menu"></c:import>

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Customer List</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>${foodcount}</h3>

                <p>Product List</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href='<s:url value="/admin/productlist"></s:url>' class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>${ordercount }</h3>

                <p>Order List</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href='<s:url value="/admin/orderlist"></s:url>' class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>${usercount }</h3>

                <p>Customer List</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href='<s:url value="/admin/customerlist"></s:url>' class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
           <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>${messagecount }</h3>

                <p>Message List</p>
              </div>
              <div class="icon">
                <i class="ion ion-ios-email"></i>
              </div>
              <a href='<s:url value="/admin/messagelist"></s:url>' class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          

               
    
          
          
        
      </div>
      </div>
          
</section>
               
   	<div class="row justify-content-center">
		<div class="col-12 col-md-8 col-lg-6 pb-5">


                    <!--Form with header-->

                    <form action="addcustomer" method="post">
                        <div class="card border-primary rounded-0">
                            <div class="card-header p-0">
                                <div class="bg-info text-white text-center py-2">
                                    <h3><i class="fas fa-users"></i> Add Customer</h3>
                                    
                                </div>
                            </div>
                            <div class="card-body p-3">

                                <!--Body-->
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fas fa-info"></i></div>
                                        </div>
                                        <input name="username" type="text" class="form-control" id="nombre" name="nombre" placeholder="Name and Surname" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fas fa-info"></i></div>
                                        </div>
                                        <input name="usermail" type="text" class="form-control" id="nombre" name="email" placeholder="E-Mail Address" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group mb-2">
                                        <div class="input-group-prepend">
                                            <div class="input-group-text"><i class="fas fa-info"></i></div>
                                        </div>
                                        <input name="userpassword"  type="password" class="form-control" placeholder="Password" required>
                                    </div>
                                </div>
                                 

                                <div class="text-center">
                                    <input type="submit" value="Add" class="btn btn-info btn-block rounded-0 py-2" style="background-color:green">
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
    
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<c:import url="/admin/js"></c:import>

</body>
</html>
