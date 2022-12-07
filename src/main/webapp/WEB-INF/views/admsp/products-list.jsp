<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Tables</title>

    <!-- Custom fonts for this template -->
    <link href="/assets/vendor/admsp/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/assets/css/admsp/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="/assets/vendor/admsp/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <style>
    	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
    	* {
    		font-family: 'Noto Sans KR', sans-serif !important;
    	}
    	
    	/* 버튼 색상 */
    	:root {
		  --button-color: #ffffff;
		  --button-bg-color: #4e73df;
		  --button-hover-bg-color: #025ce2;
		}
	    input[type='button'] {
		  -webkit-appearance: none;
		  -moz-appearance: none;
		  appearance: none;
		  background: var(--button-bg-color);
		  color: var(--button-color);
		  margin: 0;
		  padding: 0.5rem 1rem;
		  text-decoration: none;
		  border: none;
		  border-radius: 4px;
		  display: inline-block;
		  width: auto;
		  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
		  cursor: pointer;
		  transition: 0.5s;
		}
		.success {
		  --button-bg-color: #28a745;
		  --button-hover-bg-color: #218838;
		}
		
		/* INPUT 모양 */
		.item input[type='text'], .item select {
		    align-items: center;
		    justify-content: space-between;
		    border-radius: 10px;
		    border: 1px solid rgba(69, 94, 234, 0.3);
		    cursor: pointer;
		    height: 35px;
		    font-size: 13px;
		    margin-bottom: 5px;
		}
		
    	/* 페이지네이션 위치 */
   	  	#dataTable_paginate {
	   		position:fixed;
	   		top:757px;
	   		right:44px;
	   	}
    
   		/* 테이블 스크롤 열 고정 */
		table tbody td {
	   		min-width: 100px;
	   	}
	   	table{
		  border-collapse: separate;
		  border-spacing: 0;
		  width: 800px;
		  font-color: #000 !important;
		}
		table th{
		  background-color: #888; 
		  height: 10px; 
		  color: #fff;
		  border-right: 1px solid #f6f6f6; 
		  border-bottom: 1px solid #f6f6f6;
		}
		table th:last-child{
		  border-right: 0;
		}
		/*sticky 적용*/
		table th:first-child{
		  position: -webkit-sticky; 
		  position: sticky; 
		  left: 0;
		}
		table td{
		  background-color: #fff; 
		  border-right: 1px solid #f6f6f6; 
		  border-bottom: 1px solid #f6f6f6;
		  padding: 5px;
		  font-size: 13px !important;
		  color: #000 !important;
		  /* text-align: center; */
		}
		table.table-bordered.dataTable tbody th, table.table-bordered.dataTable tbody td {
		    /* border-bottom-width: 0; */
		}
		/*sticky 적용*/
		table td:first-child{
		  background-color: #c8c8c8;
		  position: -webkit-sticky; 
		  position: sticky; 
		  left: 0;
		}
		table td:last-child{
		  border-right: 0;
		}
		
		.btnWitch {
			position:relative;
			left:63px;
		}
    </style>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admsp/index">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="/admsp/index">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>설정</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">A.I 자동견적서 데이터 설정</h6>
                        <a class="collapse-item" href="/admsp/products-list">데이터 설정</a>
                        <a class="collapse-item" href="/admsp/cdu-list">콘덴샤 유니트</a>
                        <a class="collapse-item" href="/admsp/cooler-list">쿨러</a>
                        <a class="collapse-item" href="/admsp/controll-list">콘트롤</a>
                        <a class="collapse-item" href="/admsp/exvalve-list">팽창밸브</a>
                        <a class="collapse-item" href="/admsp/elecvalve-list">전자밸브</a>
                        <a class="collapse-item" href="/admsp/opassis-list">동배관</a>
                        <a class="collapse-item" href="/admsp/mandays-list">MANDAYS</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Utilities</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="/admsp/utilities-color">Colors</a>
                        <a class="collapse-item" href="/admsp/utilities-border">Borders</a>
                        <a class="collapse-item" href="/admsp/utilities-animation">Animations</a>
                        <a class="collapse-item" href="/admsp/utilities-other">Other</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Addons
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Pages</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="/admsp/login">Login</a>
                        <a class="collapse-item" href="/admsp/register">Register</a>
                        <a class="collapse-item" href="/admsp/forgot-password">Forgot Password</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="/admsp/404">404 Page</a>
                        <a class="collapse-item" href="/admsp/blank">Blank Page</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="/admsp/charts">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Charts</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="/admsp/tables">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="/assets/img/admsp/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler Â· 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="/assets/img/admsp/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun Â· 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="/assets/img/admsp/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez Â· 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog Â· 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle"
                                    src="/assets/img/admsp/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Products Tables</h1>
                    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
                        For more information about DataTables, please visit the <a target="_blank"
                            href="https://datatables.net">official DataTables documentation</a>.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4 fixed-table-container" >
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                        </div>
                        <div class="card-body fixed-table-body">
                            <div class="table-responsive item">
                                <table class="table table-bordered w-auto" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th colspan="1" style="text-align:center;">고유정보</th>
                                        	<th colspan="3" style="text-align:center;">콘덴샤 유니트</th>
                                        	<th colspan="3" style="text-align:center;">쿨러</th>
                                        	<th colspan="3" style="text-align:center;">콘트롤</th>
                                        </tr>
                                        <tr>
                                        	<th style="position: sticky;left: 0; top: 0;z-index: 10;">평수</th>
                                            
                                            <th>콘덴샤유니트</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>쿨러</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>콘트롤</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    	<tr>
                                        	<th colspan="1" style="text-align:center;">고유정보</th>
                                        	<th colspan="3" style="text-align:center;">콘덴샤 유니트</th>
                                        	<th colspan="3" style="text-align:center;">쿨러</th>
                                        	<th colspan="3" style="text-align:center;">콘트롤</th>
                                        </tr>
                                        <tr>
                                            <th>평수</th>
                                            
                                            <th>콘덴샤유니트</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>쿨러</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>콘트롤</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<form action="/admsp/products-list" name="prdForm" id="prdForm" method="post">
                                    		<!-- BASE -->
	                                        <c:forEach var="base" items="${calcBaseEntity}" begin="0" varStatus="statusNo">
	                                        <tr>
	                                            <td>
	                                            	<div style="display:none !important;">${base.pntid}<input type="hidden" value="${base.pntid}" name="base_pntid${statusNo.index}" id="base_pntid${statusNo.index}"></div>
	                                            	<div>
	                                            		${base.returns_py}평<br/>${base.temper_type}
	                                            		<input type="hidden" value="${base.returns_py}" name="base_py${statusNo.index}" id="base_py${statusNo.index}">
	                                            		<input type="hidden" value="${base.temper_type}" name="base_type${statusNo.index}" id="base_type${statusNo.index}">
	                                            	</div>
	                                            </td>
	                                            
	                                            <!-- CDU -->
	                                            <form action="/admsp/productsRq" name="ajaxCduReqForm" id="ajaxCduReqForm" method="post">                                          	
	                                            <td>	  
	                                            	<select name="cduSelect${statusNo.index}" id="cduSelect${statusNo.index}" onchange="checkerCDUSelectFn(this.id,'${base.pntid}')">
	                                            	<c:forEach var="data" items="${cduEntitylist}">
													    <option value="${data.pid}">${data.cdu}</option><%-- 이 PID로 Query 조회 함 --%>
													</c:forEach>
													</select>
	                                            </td>
	                                            <td>	                                            	
	                                            	<select name="cduSelectCnt${statusNo.index}" id="cduSelectCnt${statusNo.index}" onchange="checkerCDUCntSelectFn(this.id)">
	                                            	<c:forEach var="cduSelcnt" begin="1" end="10">
													    <option value="${cduSelcnt}">${cduSelcnt}</option>
													</c:forEach>
													</select>
	                                            </td>
	                                            <td>
	                                            	<input type="text" value="0" class="cduUnitDS" name="cduUnitPrice${statusNo.index}" id="cduUnitPrice${statusNo.index}" disabled><br/>
	                                            	<input type="button" value="변경" class="btnWitch" name="subcduBtn${statusNo.index}" id="subcduBtn${statusNo.index}" onclick="cduBtnFn(${statusNo.index})">
	                                            	<input type="button" class="success" value="적용" style="float:right;" name="allcduBtn${statusNo.index}" id="allcduBtn${statusNo.index}" onclick="allcduBtnFn(this.id,${statusNo.index})">
	                                            </td>
	                                            </form>
	                                            
	                                            <!-- COOLER -->
	                                            <form action="/admsp/productsRq" name="ajaxCoolerReqForm" id="ajaxCoolerReqForm" method="post">                                          	
	                                            <td>	  
	                                            	<select name="coolerSelect${statusNo.index}" id="coolerSelect${statusNo.index}" onchange="checkerCOOLERSelectFn(this.id,'${base.pntid}')">
	                                            	<c:forEach var="data" items="${coolerEntitylist}">
													    <option value="${data.pid}">${data.cooler}</option><%-- 이 PID로 Query 조회 함 --%>
													</c:forEach>
													</select>
	                                            </td>
	                                            <td>	                                            	
	                                            	<select name="coolerSelectCnt${statusNo.index}" id="coolerSelectCnt${statusNo.index}" onchange="checkerCOOLERCntSelectFn(this.id)">
	                                            	<c:forEach var="coolerSelcnt" begin="1" end="10">
													    <option value="${coolerSelcnt}">${coolerSelcnt}</option>
													</c:forEach>
													</select>
	                                            </td>
	                                            <td>
	                                            	<input type="text" value="0" name="coolerUnitPrice${statusNo.index}" id="coolerUnitPrice${statusNo.index}" disabled><br/>
	                                            	<input type="button" value="변경" class="btnWitch" name="subcoolerBtn${statusNo.index}" id="subcoolerBtn${statusNo.index}" onclick="coolerBtnFn(${statusNo.index})">
	                                            	<input type="button" class="success" value="적용" style="float:right;" name="allcoolerBtn${statusNo.index}" id="allcoolerBtn${statusNo.index}" onclick="allcoolerBtnFn(this.id,${statusNo.index})">
	                                            </td>
	                                            </form>
	                                            
	                                            <!-- Controll -->
	                                            <form action="/admsp/productsRq" name="ajaxControllReqForm" id="ajaxControllReqForm" method="post">                                          	
	                                            <td>	  
	                                            	<select name="controllSelect${statusNo.index}" id="controllSelect${statusNo.index}" onchange="checkerCONTROLLSelectFn(this.id,'${base.pntid}')">
	                                            	<c:forEach var="data" items="${controllEntitylist}">
													    <option value="${data.pid}">${data.controll}</option><%-- 이 PID로 Query 조회 함 --%>
													</c:forEach>
													</select>
	                                            </td>
	                                            <td>	                                            	
	                                            	<select name="controllSelectCnt${statusNo.index}" id="controllSelectCnt${statusNo.index}" onchange="checkerCONTROLLCntSelectFn(this.id)">
	                                            	<c:forEach var="controllSelcnt" begin="1" end="10">
													    <option value="${controllSelcnt}">${controllSelcnt}</option>
													</c:forEach>
													</select>
	                                            </td>
	                                            <td>
	                                            	<input type="text" value="0" name="controllUnitPrice${statusNo.index}" id="controllUnitPrice${statusNo.index}" disabled><br/>
	                                            	<input type="button" value="변경" class="btnWitch" name="subcontrollBtn${statusNo.index}" id="subcontrollBtn${statusNo.index}" onclick="controllBtnFn(${statusNo.index})">
	                                            	<input type="button" class="success" value="적용" style="float:right;" name="allcontrollBtn${statusNo.index}" id="allcontrollBtn${statusNo.index}" onclick="allcontrollBtnFn(this.id,${statusNo.index})">
	                                            </td>
	                                            </form>
	                                        </tr>
	                                        </c:forEach>
                                     	</form>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">Ã</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="/admsp/login">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/assets/vendor/admsp/jquery/jquery.min.js"></script>
    <script src="/assets/vendor/admsp/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="/assets/vendor/admsp/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/assets/js/admsp/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/assets/vendor/admsp/datatables/jquery.dataTables.min.js"></script>
    <script src="/assets/vendor/admsp/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/assets/js/admsp/demo/datatables-demo.js"></script>
	<script>
     /* CDU */
	 var cduChecker;
     var pntid_val;
     var cduCntChecker;
     var cduUnitPirce_val;
     
     function checkerCDUSelectFn(clicked,pntids){
    	 cduChecker = clicked;
    	 pntid_val = pntids;
     }
     
     function checkerCDUCntSelectFn(clicked){
    	 cduCntChecker = clicked;
     }
     
    /* CDU Btn Onclick Eventer */ 
    function cduBtnFn(cnt){
     	cduUnitPriceId = $("#cduUnitPrice"+cnt).attr("id");
     	
		var cdu_checker = "#"+cduChecker+" option:selected";
    	var cdu_cntChecker = "#"+cduCntChecker+" option:selected";
    	var pid = $(cdu_checker).val();
    	var cdu_ctn = $(cdu_cntChecker).val();
    	var param = {"pid":pid, "cdu_ctn":cdu_ctn};
       	 $.ajax({
       			anyne:true,
       			type:'POST',
       			contentType: 'application/json',
       			
       			data: JSON.stringify(param),
       			url:"/admsp/productsAjax",
       			
       			dataType: "text",
       			success : function(data) {
       				if(cdu_ctn == "undefined" || cdu_ctn == null || cdu_ctn == ""){
       					cdu_ctn = 1;
       				}else {
       					
       				}
       				$("#"+cduUnitPriceId).val(data*cdu_ctn);  
       			},
       			error: function(jqXHR, textStatus, errorThrown) {
       				alert("한번 재선택 해주세요.");
       			}
       		});
    }
    
    function allcduBtnFn(btnId, cnt) {
    	/* id값 가져오기 */
		var cdu_checker = "#"+cduChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var cdu_val = $(cdu_checker).text();
		var cduUnitPrice_temp = $("#cduUnitPrice"+cnt).attr("id");
		
		/* 실제 값 가져오기 */
		var cduUnitPrice_val = $("#"+cduUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
		var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "cdu":cdu_val, "cdu_unit_price":cduUnitPrice_val};
      	 $.ajax({
      			anyne:true,
      			type:'POST',
      			contentType: 'application/json',
      			
      			data: JSON.stringify(params),
      			url:"/admsp/productsAllAjax",
      			
      			dataType: "text",
      			success : function(data) {
      				alert("변경이 완료되었습니다.");
      			},
      			error: function(jqXHR, textStatus, errorThrown) {
      				alert("Error.");
      			}
      		});
    }
    
    
    
    /* COOLER */
	var coolerChecker;
    var coolerCntChecker;
    var coolerUnitPirce_val;
    
    function checkerCOOLERSelectFn(clicked,pntids){
   	 coolerChecker = clicked;
   	 pntid_val = pntids;
    }
    
    function checkerCOOLERCntSelectFn(clicked){
   	 coolerCntChecker = clicked;
    }
    
   /* CDU Btn Onclick Eventer */ 
   function coolerBtnFn(cnt){
    	coolerUnitPriceId = $("#coolerUnitPrice"+cnt).attr("id");
    	
		var cooler_checker = "#"+coolerChecker+" option:selected";
	   	var cooler_cntChecker = "#"+coolerCntChecker+" option:selected";
	   	var pid = $(cooler_checker).val();
	   	var cooler_ctn = $(cooler_cntChecker).val();
	   	var param = {"pid":pid, "cooler_ctn":cooler_ctn};
      	 $.ajax({
      			anyne:true,
      			type:'POST',
      			contentType: 'application/json',
      			
      			data: JSON.stringify(param),
      			url:"/admsp/coolerAjax",
      			
      			dataType: "text",
      			success : function(data) {
      				if(cooler_ctn == "undefined" || cooler_ctn == null || cooler_ctn == ""){
      					cooler_ctn = 1;
      				}else {
      					
      				}
      				$("#"+coolerUnitPriceId).val(data*cooler_ctn);  
      			},
      			error: function(jqXHR, textStatus, errorThrown) {
      				alert("한번 재선택 해주세요.");
      			}
      		});
   }
   
   function allcoolerBtnFn(btnId, cnt) {
   	/* id값 가져오기 */
		var cooler_checker = "#"+coolerChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var cooler_val = $(cooler_checker).text();
		var coolerUnitPrice_temp = $("#coolerUnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var coolerUnitPrice_val = $("#"+coolerUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
		var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "cooler":cooler_val, "cooler_unit_price":coolerUnitPrice_val};
     	 $.ajax({
     			anyne:true,
     			type:'POST',
     			contentType: 'application/json',
     			
     			data: JSON.stringify(params),
     			url:"/admsp/coolerAllAjax",
     			
     			dataType: "text",
     			success : function(data) {
     				alert("변경이 완료되었습니다.");
     			},
     			error: function(jqXHR, textStatus, errorThrown) {
     				alert("Error.");
     			}
     		});
   }
   
   
   /* Controll */
   var controllChecker;
   var controllCntChecker;
   var controllUnitPirce_val;
   
   function checkerCONTROLLSelectFn(clicked,pntids){
  	 controllChecker = clicked;
  	 pntid_val = pntids;
   }
   
   function checkerCONTROLLCntSelectFn(clicked){
  	 controllCntChecker = clicked;
   }
   
  /* Controll Btn Onclick Eventer */ 
  function controllBtnFn(cnt){
   	controllUnitPriceId = $("#controllUnitPrice"+cnt).attr("id");
   	
		var controll_checker = "#"+controllChecker+" option:selected";
	   	var controll_cntChecker = "#"+controllCntChecker+" option:selected";
	   	var pid = $(controll_checker).val();
	   	var controll_ctn = $(controll_cntChecker).val();
	   	var param = {"pid":pid, "controll_ctn":controll_ctn};
     	 $.ajax({
     			anyne:true,
     			type:'POST',
     			contentType: 'application/json',
     			
     			data: JSON.stringify(param),
     			url:"/admsp/controllAjax",
     			
     			dataType: "text",
     			success : function(data) {
     				if(controll_ctn == "undefined" || controll_ctn == null || controll_ctn == ""){
     					controll_ctn = 1;
     				}else {
     					
     				}
     				$("#"+controllUnitPriceId).val(data*controll_ctn);  
     			},
     			error: function(jqXHR, textStatus, errorThrown) {
     				alert("한번 재선택 해주세요.");
     			}
     		});
  }
  
  function allcontrollBtnFn(btnId, cnt) {
  	/* id값 가져오기 */
		var controll_checker = "#"+controllChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var controll_val = $(controll_checker).text();
		var controllUnitPrice_temp = $("#controllUnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var controllUnitPrice_val = $("#"+controllUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
		var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "controll":controll_val, "controll_unit_price":controllUnitPrice_val};
    	 $.ajax({
    			anyne:true,
    			type:'POST',
    			contentType: 'application/json',
    			
    			data: JSON.stringify(params),
    			url:"/admsp/controllAllAjax",
    			
    			dataType: "text",
    			success : function(data) {
    				alert("변경이 완료되었습니다.");
    			},
    			error: function(jqXHR, textStatus, errorThrown) {
    				alert("Error.");
    			}
    		});
  }
	</script>
</body>

</html>