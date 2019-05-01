<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Pet Shop_Admin_Page</title>

    <style>
     .im{
      width: 18px; 
      height: 15px; 
     }
     .logo_admin{
      height: 100px;
      width: 170px;
      padding-left: 70px;
     }
     
     .chart{
      height: 15px;
      width: 15px;
     }
     
    </style>
    <!-- 폰트 사용 -->
    <link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
   <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet"> 
    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">   
</head>
<body>
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/adminChoicePage">Pet Shop-Admin Page</a>
            </div>
            
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-fw"><img src="resources/img/bars-chart.png" class="chart"/></i> <i class="fa fa-caret-down"></i>
                    </a>
                    
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>매출 목표 달성 수</strong>
                                        <span class="pull-right text-muted">${result_money}% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                   
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${result_money}%">
                                            <span class="sr-only">${result_money}% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        
                        
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-fw"><img src="resources/img/admin.png" class="chart"/></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                    
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->
</div>
            <div class="navbar-default sidebar" role="navigation" style="margin-top: 0px;">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                         <img src="resources/img/logo.png" class="logo_admin"/>
                         
                        </li>
                        <li>
                            <a href="adminChoicePage_member"><i class="fa fa-fw "><img src="resources/img/member.png" class="im" style="height: 20px; width: 20px;"/></i>  회원 관리 </a>
                        </li>
                        <li>
                            <a href="email"><i class="fa fa-fw"><img src="resources/img/email.png" class="im" style="height: 20px; width: 20px;"/></i>  신상품 광고  </a>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="adminChoicePage_delete"><i class="fa fa-fw "><img src="resources/img/file.png" class="im" style="height: 20px; width: 20px;"/></i> 상품 관리 </a>
                        </li>
                        <li>
                            <a href="adminChoicePage_enrollment"><i class="fa fa-fw "><img src="resources/img/notes.png" class="im" style="height: 20px; width: 20px;"/></i> 상품 등록 </a>
                        </li>
                        <li>
                            <a href="adminChoicePage_request"><i class="fa fa-fw "><img src="resources/img/upload.png" class="im" style="height: 20px; width: 20px;"/></i> 상품  등록 요청 </a>
                        </li>
                        <li>
                            <a href="adminChoicePage_trash"><i class="fa fa-fw "><img src="resources/img/trash.png" class="im" style="height: 20px; width: 20px;"/></i> 휴지통 </a>
                        </li>
                        <!-- <li>
                            <a href="/"><i class="fa fa-fw "><img src="resources/img/foot.png" class="im" style="height: 20px; width: 20px;"/></i> UI Elements</a>
                            /.nav-second-level
                            
                        </li> -->
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        
        <div id="page-wrapper">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>