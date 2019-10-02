<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>


 <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href='<s:url value="/admin/dashboard"></s:url>' class="brand-link-center">
      
       <img src="../../../foodtown/resources/site/img/foodtownlogo.png" height="80px" width="250px" class="center"/>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
     
       
       
		  
      

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item" >
                <a href='<s:url value="/admin/dashboard"></s:url>' class="nav-link   " >
                  <i class="nav-icon far fa-circle text-light" ></i>
                  <p>Dashboard</p>
                </a>
              </li>
          <li class="nav-item has-treeview menu-open">
            <a href='<s:url value="/admin/productlist"></s:url>' class="nav-link  ">
              <i class="nav-icon fas fa-tachometer-alt" ></i>
              <p>
                Products
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/productlist"></s:url>' class="nav-link ${link == 'productlist'? 'active':'' } " >
                  <i class="far fa-circle nav-icon"></i>
                  <p>Product List</p>
                </a>
              </li>
              <li class="nav-item">
                <a href='<s:url value="/admin/addproduct"></s:url>' class="nav-link ${link == 'addproduct'? 'active':'' } " >
                  <i class="far fa-circle nav-icon" ></i>
                  <p>Add Product</p>
                </a>
              </li>
              </ul>
            
              </ul>
              
          
           <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item has-treeview menu-open">
            <a href='<s:url value="/admin/customerlist"></s:url>' class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt" ></i>
              <p>
                Customers
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/customerlist"></s:url>' class="nav-link ${link == 'customerlist'? 'active':'' } " >
                  <i class="far fa-circle nav-icon"></i>
                  <p>Customer List</p>
                </a>
              </li>
              <li class="nav-item">
                <a href='<s:url value="/admin/addcustomer"></s:url>' class="nav-link ${link == 'addcustomer'? 'active':'' } " >
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Customer </p>
                </a>
              </li>
              </ul>
               </li>
              </ul>
               <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <li class="nav-item has-treeview menu-open">
            <a href='<s:url value="/admin/bloglist"></s:url>' class="nav-link  ">
              <i class="nav-icon fas fa-tachometer-alt" ></i>
              <p>
                Blogs
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href='<s:url value="/admin/bloglist"></s:url>' class="nav-link ${link == 'bloglist'? 'active':'' } " >
                  <i class="far fa-circle nav-icon"></i>
                  <p>Blog List</p>
                </a>
              </li>
              <li class="nav-item">
                <a href='<s:url value="/admin/addblog"></s:url>' class="nav-link ${link == 'addblog'? 'active':'' } " >
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Blog </p>
                </a>
              </li>
              </ul>
               </li>
              </ul>
          <ul class="nav nav-pills nav-sidebar flex-column"  role="menu" data-accordion="false">
         
              <li class="nav-item">
                <a href='<s:url value="/admin/messagelist"></s:url>' class="nav-link ${link == 'messagelist'? 'active':'' } ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Message List </p>
                </a>
              </li>
               <li class="nav-item">
                <a href='<s:url value="/admin/orderlist"></s:url>' class="nav-link ${link == 'orderlist'? 'active':'' } ">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Order List </p>
                </a>
              </li>
           <li class="nav-item">
            <a href='<s:url value="/admin/exit"></s:url>' class="nav-link" style="background-color:#C73838">
              <i class="nav-icon far fa-circle text-light"></i>
              <p class="text">Exit</p>
            </a>
          </li>
          </ul>
          
        
       
          
          
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>