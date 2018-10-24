<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html> 
<head>
  <meta charset="utf-8"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><tiles:getAsString name="title" /></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <tilesx:useAttribute id="stylesheets" name="stylesheets" classname="java.util.List" />
    <tilesx:useAttribute id="javascripts" name="javascripts" classname="java.util.List" />	
    <c:forEach var="css" items="${stylesheets}">
    <link rel='stylesheet' type='text/css' href='<c:url value="${css}"/>'>
    </c:forEach> 
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
          
</head>  
<body class="hold-transition skin-blue sidebar-mini">
    
    <div class="wrapper">
        <header id="header" class="main-header">
        
            <tiles:insertAttribute name="header" />
        </header>
     
        <aside id="sidemenu" class="main-sidebar">
           
            <tiles:insertAttribute name="menu" />
        </aside>
             
       <!-- <section id="site-content" >-->
            <tiles:insertAttribute name="body" />
       <!-- </section>-->
         
       <footer id="footer" class="main-footer">
            <tiles:insertAttribute name="footer" />
        </footer>
              <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
              <!-- Create the tabs -->
              <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
                <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
              </ul>
              <!-- Tab panes -->
              <div class="tab-content">
                <!-- Home tab content -->
                <div class="tab-pane active" id="control-sidebar-home-tab">
                  <h3 class="control-sidebar-heading">Recent Activity</h3>
                  <ul class="control-sidebar-menu">
                    <li>
                      <a href="javascript::;">
                        <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                        <div class="menu-info">
                          <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                          <p>Will be 23 on April 24th</p>
                        </div>
                      </a>
                    </li>
                  </ul><!-- /.control-sidebar-menu -->

                  <h3 class="control-sidebar-heading">Tasks Progress</h3>
                  <ul class="control-sidebar-menu">
                    <li>
                      <a href="javascript::;">
                        <h4 class="control-sidebar-subheading">
                          Custom Template Design
                          <span class="label label-danger pull-right">70%</span>
                        </h4>
                        <div class="progress progress-xxs">
                          <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                        </div>
                      </a>
                    </li>
                  </ul><!-- /.control-sidebar-menu -->

                </div><!-- /.tab-pane -->
                <!-- Stats tab content -->
                <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div><!-- /.tab-pane -->
                <!-- Settings tab content -->
                <div class="tab-pane" id="control-sidebar-settings-tab">
                  <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>
                    <div class="form-group">
                      <label class="control-sidebar-subheading">
                        Report panel usage
                        <input type="checkbox" class="pull-right" />
                      </label>
                      <p>
                        Some information about this general settings option
                      </p>
                    </div><!-- /.form-group -->
                  </form>
                </div><!-- /.tab-pane -->
              </div>
            </aside><!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>          
        </div>
    <c:forEach var="script" items="${javascripts}">
        <script src='<c:url value="${script}"/>'></script>
    </c:forEach>            
</body>
</html>