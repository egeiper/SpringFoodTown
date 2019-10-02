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

  <!-- Content Wrapper. Contains page content -->
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
    <section class="content">
    <table class="table table-bordered shop-cart margin-bottom-50">
      <thead>
         <tr>
              <th class="product-name text-center">User ID</th>
          <th class="product-price text-center">Name and Surname</th>
       
            <th class="product-price text-center">User Mail</th>
            <th class="product-price text-center">User Password</th>
            <th class="product-price text-center">Action</th>
           
         </tr>
      </thead>
      <tbody>
<c:if test="${not empty customerlist }">
		  	<c:forEach items="${customerlist }" var="item">
         <tr class="cart_item">
         <td class="product-name"><h5>${item.userid }</h5></td>
            <td class="product-name"><h5>${item.username }</h5></td>
            
            <td class="product-price"> <span class="Price-amount">${item.usermail }</span></td>
             <td class="product-price"> <span class="Price-amount">${item.userpassword }</span></td>
           
           <td>
                      	<a href='<s:url value="/admin/deletecustomer/${ item.userid }"></s:url>' style="font-size: 13px" class="btn btn-danger"  >Delete</a>
                      	
                      </td>
       
          
          </tr>

         </c:forEach>
		 </c:if>
		
      </tbody>
       
   </table>

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
