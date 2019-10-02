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
          

               
        
        <div class="container">
        <div class="row">
        	<div class="col-sm-6">
        	<h1>Add Admin/User</h1>
	        
	        <div class="card card-primary">
              <div class="card-header">
                <h2 class="card-title"></h2>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action='<s:url value="/admin/adminInsert"></s:url>' method="post" role="form">
                <div class="card-body">
                
                <div class="form-group">
                    <label for="exampleInputName">Name and Surname</label>
                    <input name="aname" type="text" class="form-control" id="exampleInputName" placeholder="Enter Name">
                  </div>
                
                  <div class="form-group">
                    <label for="exampleInputEmail1">Mail</label>
                    <input name="amail" type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input name="adminpassword" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                  </div>
                  <div class="form-group">
                    
                    <input name="apass" type="hidden" class="form-control" id="exampleInputPassword1" placeholder="Password" value="adminpassword">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Role</label>
                    <select class="form-control form-control-sm" name="role">
  <option>Admin</option>
  <option>User</option>
</select>
                  </div>
                  
                  <button type="submit" class="btn btn-primary">Add</button>
                </div>
                </form>
                </div>
                
                
                </div>

                
              
            
        	
        	<div class="col-sm-6">
        	<h1>Admin List</h1>
        	<div class="card" >
              <div class="card-header" >
                <h3 class="card-title"></h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table style="width:500" class="table table-bordered" >
                  <thead>                  
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Name</th>
                      <th>Mail</th>
                      <th>Role</th>
                      <th style="width: 200px">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                  <c:if test="${ not empty ls }">
                  	<c:forEach items="${ls }"  var="item" >
                    <tr>
                      <td>${item.aid }</td>
                      <td>${item.aname }</td>
                      <td>${item.amail }</td>
                       <td>${item.role }</td>
                      <td>
                      	<a href='<s:url value="/admin/deleteAdmin/${ item.aid }"></s:url>' style="font-size: 13px" class="btn btn-danger"  >Delete</a>
                      	<a href='<s:url value="/admin/updateAdmin/${ item.aid }"></s:url>' style="font-size: 13px"class="btn btn-info"  >Update</a>
                      </td>
                    </tr>
                    </c:forEach>
                  </c:if>
                    
                    
                    
                  </tbody>
                </table>
              </div>
             
            </div>
        	
        	</div>
        	</div>
        	</div>
        	</div>
        </div>
        </div>
          
          
        
      </div>
      </div>
    </section>
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
