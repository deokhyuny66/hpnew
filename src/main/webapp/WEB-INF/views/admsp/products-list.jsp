<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
	String[] cduArray = null;
	cduArray = new String[] {"1.5HP / 왕복동 / 단상", "2HP / 왕복동 / 단상"};
	System.out.println(cduArray[1]);
%>            
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>쿨리닉 관리 화면(AI)</title>

    <!-- Custom fonts for this template -->
    <link href="/assets/vendor/admsp/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/assets/css/admsp/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="/assets/vendor/admsp/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="/assets/css/admsp/admsp.css?ver=3" rel="stylesheet">
    <style>
    div.table-responsive>div.dataTables_wrapper>div.row {
    	padding-left: 20px !important;
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
                <div class="sidebar-brand-text mx-3">COOLINIC AI.<sup>CALC</sup></div>
            </a>
			
            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>
            
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
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
                    <h1 class="h3 mb-2 text-gray-800">제품 관리 테이블</h1>
                    <p class="mb-4">자동견적서의 제품과 가격을 관리하고 변경합니다.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4 fixed-table-container">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">항목</h6>
                        </div>
                        <div class="card-body fixed-table-body">
                            <div class="table-responsive item itemss"> 
                                <table class="table table-bordered w-auto itemz" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th colspan="1" style="text-align:center;">고유정보</th>
                                        	<th colspan="3" style="text-align:center;">콘덴샤 유니트</th>
                                        	<th colspan="3" style="text-align:center;">쿨러</th>
                                        	<th colspan="3" style="text-align:center;">콘트롤</th>
                                        	<th colspan="3" style="text-align:center;">팽창밸브</th>
                                        	<th colspan="3" style="text-align:center;">전자밸브</th>
                                        	<th colspan="3" style="text-align:center;">고압배관</th>
                                        	<th colspan="3" style="text-align:center;">저압배관</th>
                                        	<th colspan="3" style="text-align:center;">고압보온재</th>
                                        	<th colspan="3" style="text-align:center;">저압보온재</th>
                                        	<th colspan="3" style="text-align:center;">콤프전원선</th>
                                        	<th colspan="3" style="text-align:center;">히터전원선</th>
                                        	<th colspan="3" style="text-align:center;">유니트조작 보조선 1</th>
                                        	<th colspan="3" style="text-align:center;">유니트조작 보조선 2</th>
                                        	<th colspan="3" style="text-align:center;">쿨러조작 보조선 1</th>
                                        	<th colspan="3" style="text-align:center;">쿨러조작 보조선 2</th>
                                        	<th colspan="3" style="text-align:center;">MANDAYS 1</th>
                                        	<th colspan="3" style="text-align:center;">MANDAYS 2</th>
                                        	<th colspan="3" style="text-align:center;">MANDAYS 3</th>
                                        	<th colspan="3" style="text-align:center;">MANDAYS 4</th>
                                        </tr>
                                        <tr>
                                        	<th style="position: sticky;left: 0; top: 0;z-index: 10;">평수</th>
                                            
                                            <th>제품</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>총 배관거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>총 배관거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>총 배관거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>총 배관거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>Man</th>
                                            <th>Day</th>
                                            <th>인건비</th>
                                            
                                            <th>Man</th>
                                            <th>Day</th>
                                            <th>인건비</th>
                                            
                                            <th>Man</th>
                                            <th>Day</th>
                                            <th>인건비</th>
                                            
                                            <th>Man</th>
                                            <th>Day</th>
                                            <th>인건비</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    	<tr>
                                        	<th colspan="1" style="text-align:center;">고유정보</th>
                                        	<th colspan="3" style="text-align:center;">콘덴샤 유니트</th>
                                        	<th colspan="3" style="text-align:center;">쿨러</th>
                                        	<th colspan="3" style="text-align:center;">콘트롤</th>
                                        	<th colspan="3" style="text-align:center;">팽창밸브</th>
                                        	<th colspan="3" style="text-align:center;">전자밸브</th>
                                        	<th colspan="3" style="text-align:center;">고압배관</th>
                                        	<th colspan="3" style="text-align:center;">저압배관</th>
                                        	<th colspan="3" style="text-align:center;">고압보온재</th>
                                        	<th colspan="3" style="text-align:center;">저압보온재</th>
                                        	<th colspan="3" style="text-align:center;">콤프전원선</th>
                                        	<th colspan="3" style="text-align:center;">히터전원선</th>
                                        	<th colspan="3" style="text-align:center;">유니트조작 보조선 1</th>
                                        	<th colspan="3" style="text-align:center;">유니트조작 보조선 2</th>
                                        	<th colspan="3" style="text-align:center;">쿨러조작 보조선 1</th>
                                        	<th colspan="3" style="text-align:center;">쿨러조작 보조선 2</th>
                                        	<th colspan="3" style="text-align:center;">MANDAYS 1</th>
                                        	<th colspan="3" style="text-align:center;">MANDAYS 2</th>
                                        	<th colspan="3" style="text-align:center;">MANDAYS 3</th>
                                        	<th colspan="3" style="text-align:center;">MANDAYS 4</th>
                                        </tr>
                                        <tr>
                                            <th>평수</th>
                                            
                                            <th>제품</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>수량</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>총 배관거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>총 배관거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>총 배관거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>총 배관거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>제품</th>
                                            <th>거리</th>
                                            <th>금액</th>
                                            
                                            <th>Man</th>
                                            <th>Day</th>
                                            <th>인건비</th>
                                            
                                            <th>Man</th>
                                            <th>Day</th>
                                            <th>인건비</th>
                                            
                                            <th>Man</th>
                                            <th>Day</th>
                                            <th>인건비</th>
                                            
                                            <th>Man</th>
                                            <th>Day</th>
                                            <th>인건비</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
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
                                            <td>	  
                                            	<select name="cduSelect${statusNo.index}" id="cduSelect${statusNo.index}" onchange="checkerCDUSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${cduEntitylist}" varStatus="statusNm">	
											    	<option value="${data.pid}" <c:if test="${data.cdu eq 'TEST'} ">selected</c:if>>${data.cdu}</option><%-- 이 PID로 Query 조회 함 --%>
													<!-- calcSettingEntity -->   
												</c:forEach>
												</select>
												<p>Label Text[${statusNo.index}]</p>
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
                                            
                                            <!-- COOLER -->                                          	
                                            <td>	  
                                            	<select name="coolerSelect${statusNo.index}" id="coolerSelect${statusNo.index}" onchange="checkerCOOLERSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${coolerEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'COOLERP001'}">selected</c:if>>${data.cooler}</option><%-- 이 PID로 Query 조회 함 --%>
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
                                            
                                            <!-- Controll -->                                          	
                                            <td>	  
                                            	<select name="controllSelect${statusNo.index}" id="controllSelect${statusNo.index}" onchange="checkerCONTROLLSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${controllEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'CONTP001'}">selected</c:if>>${data.controll}</option><%-- 이 PID로 Query 조회 함 --%>
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
                                            
                                            <!-- ExValve -->                                          	
                                            <td>	  
                                            	<select name="exvalveSelect${statusNo.index}" id="exvalveSelect${statusNo.index}" onchange="checkerEXVALVESelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${exvalveEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'EXVAP001'}">selected</c:if>>${data.exvalve}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="exvalveSelectCnt${statusNo.index}" id="exvalveSelectCnt${statusNo.index}" onchange="checkerEXVALVECntSelectFn(this.id)">
                                            	<c:forEach var="exvalveSelcnt" begin="1" end="10">
												    <option value="${exvalveSelcnt}">${exvalveSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="exvalveUnitPrice${statusNo.index}" id="exvalveUnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subexvalveBtn${statusNo.index}" id="subexvalveBtn${statusNo.index}" onclick="exvalveBtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allexvalveBtn${statusNo.index}" id="allexvalveBtn${statusNo.index}" onclick="allexvalveBtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- ElecValve -->                                          	
                                            <td>	  
                                            	<select name="elecvalveSelect${statusNo.index}" id="elecvalveSelect${statusNo.index}" onchange="checkerELECVALVESelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${elecvalveEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'ELECVAP001'}">selected</c:if>>${data.elecvalve}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="elecvalveSelectCnt${statusNo.index}" id="elecvalveSelectCnt${statusNo.index}" onchange="checkerELECVALVECntSelectFn(this.id)">
                                            	<c:forEach var="elecvalveSelcnt" begin="1" end="10">
												    <option value="${elecvalveSelcnt}">${elecvalveSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="elecvalveUnitPrice${statusNo.index}" id="elecvalveUnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subelecvalveBtn${statusNo.index}" id="subelecvalveBtn${statusNo.index}" onclick="elecvalveBtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allelecvalveBtn${statusNo.index}" id="allelecvalveBtn${statusNo.index}" onclick="allelecvalveBtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- OPassis1 -->                                          	
                                            <td>	  
                                            	<select name="opassis1Select${statusNo.index}" id="opassis1Select${statusNo.index}" onchange="checkerOPASSISSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${opassisEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'OPP001'}">selected</c:if>>${data.opassis}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="opassis1SelectCnt${statusNo.index}" id="opassis1SelectCnt${statusNo.index}" onchange="checkerOPASSISCntSelectFn(this.id)">
                                            	<c:forEach var="opassisSelcnt" begin="15" end="370" step="5">
												    <option value="${opassisSelcnt}">${opassisSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="opassis1UnitPrice${statusNo.index}" id="opassis1UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subopassis1Btn${statusNo.index}" id="subopassis1Btn${statusNo.index}" onclick="opassis1BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allopassis1Btn${statusNo.index}" id="allopassis1Btn${statusNo.index}" onclick="allopassis1BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- OPassis2 -->                                          	
                                            <td>	  
                                            	<select name="opassis2Select${statusNo.index}" id="opassis2Select${statusNo.index}" onchange="checkerOPASSISSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${opassisEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'OPP001'}">selected</c:if>>${data.opassis}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="opassis2SelectCnt${statusNo.index}" id="opassis2SelectCnt${statusNo.index}" onchange="checkerOPASSISCntSelectFn(this.id)">
                                            	<c:forEach var="opassisSelcnt" begin="15" end="370" step="5">
												    <option value="${opassisSelcnt}">${opassisSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="opassis2UnitPrice${statusNo.index}" id="opassis2UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subopassis2Btn${statusNo.index}" id="subopassis2Btn${statusNo.index}" onclick="opassis2BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allopassis2Btn${statusNo.index}" id="allopassis2Btn${statusNo.index}" onclick="allopassis2BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- OPassis3 -->                                          	
                                            <td>	  
                                            	<select name="opassis3Select${statusNo.index}" id="opassis3Select${statusNo.index}" onchange="checkerOPASSISSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${opassisEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'OPP001'}">selected</c:if>>${data.opassis}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="opassis3SelectCnt${statusNo.index}" id="opassis3SelectCnt${statusNo.index}" onchange="checkerOPASSISCntSelectFn(this.id)">
                                            	<c:forEach var="opassisSelcnt" begin="15" end="370" step="5">
												    <option value="${opassisSelcnt}">${opassisSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="opassis3UnitPrice${statusNo.index}" id="opassis3UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subopassis3Btn${statusNo.index}" id="subopassis3Btn${statusNo.index}" onclick="opassis3BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allopassis3Btn${statusNo.index}" id="allopassis3Btn${statusNo.index}" onclick="allopassis3BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- OPassis4 -->                                          	
                                            <td>	  
                                            	<select name="opassis4Select${statusNo.index}" id="opassis4Select${statusNo.index}" onchange="checkerOPASSISSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${opassisEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'OPP001'}">selected</c:if>>${data.opassis}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="opassis4SelectCnt${statusNo.index}" id="opassis4SelectCnt${statusNo.index}" onchange="checkerOPASSISCntSelectFn(this.id)">
                                            	<c:forEach var="opassisSelcnt" begin="15" end="370" step="5">
												    <option value="${opassisSelcnt}">${opassisSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="opassis4UnitPrice${statusNo.index}" id="opassis4UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subopassis4Btn${statusNo.index}" id="subopassis4Btn${statusNo.index}" onclick="opassis4BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allopassis4Btn${statusNo.index}" id="allopassis4Btn${statusNo.index}" onclick="allopassis4BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- OPassis5 -->                                          	
                                            <td>	  
                                            	<select name="opassis5Select${statusNo.index}" id="opassis5Select${statusNo.index}" onchange="checkerOPASSISSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${opassisEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'OPP001'}">selected</c:if>>${data.opassis}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="opassis5SelectCnt${statusNo.index}" id="opassis5SelectCnt${statusNo.index}" onchange="checkerOPASSISCntSelectFn(this.id)">
                                            	<c:forEach var="opassisSelcnt" begin="15" end="370" step="5">
												    <option value="${opassisSelcnt}">${opassisSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="opassis5UnitPrice${statusNo.index}" id="opassis5UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subopassis5Btn${statusNo.index}" id="subopassis5Btn${statusNo.index}" onclick="opassis5BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allopassis5Btn${statusNo.index}" id="allopassis5Btn${statusNo.index}" onclick="allopassis5BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- OPassis6 -->                                          	
                                            <td>	  
                                            	<select name="opassis6Select${statusNo.index}" id="opassis6Select${statusNo.index}" onchange="checkerOPASSISSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${opassisEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'OPP001'}">selected</c:if>>${data.opassis}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="opassis6SelectCnt${statusNo.index}" id="opassis6SelectCnt${statusNo.index}" onchange="checkerOPASSISCntSelectFn(this.id)">
                                            	<c:forEach var="opassisSelcnt" begin="15" end="370" step="5">
												    <option value="${opassisSelcnt}">${opassisSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="opassis6UnitPrice${statusNo.index}" id="opassis6UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subopassis6Btn${statusNo.index}" id="subopassis6Btn${statusNo.index}" onclick="opassis6BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allopassis6Btn${statusNo.index}" id="allopassis6Btn${statusNo.index}" onclick="allopassis6BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- OPassis7 -->                                          	
                                            <td>	  
                                            	<select name="opassis7Select${statusNo.index}" id="opassis7Select${statusNo.index}" onchange="checkerOPASSISSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${opassisEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'OPP001'}">selected</c:if>>${data.opassis}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="opassis7SelectCnt${statusNo.index}" id="opassis7SelectCnt${statusNo.index}" onchange="checkerOPASSISCntSelectFn(this.id)">
                                            	<c:forEach var="opassisSelcnt" begin="15" end="370" step="5">
												    <option value="${opassisSelcnt}">${opassisSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="opassis7UnitPrice${statusNo.index}" id="opassis7UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subopassis7Btn${statusNo.index}" id="subopassis7Btn${statusNo.index}" onclick="opassis7BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allopassis7Btn${statusNo.index}" id="allopassis7Btn${statusNo.index}" onclick="allopassis7BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- OPassis8 -->                                          	
                                            <td>	  
                                            	<select name="opassis8Select${statusNo.index}" id="opassis8Select${statusNo.index}" onchange="checkerOPASSISSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${opassisEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'OPP001'}">selected</c:if>>${data.opassis}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="opassis8SelectCnt${statusNo.index}" id="opassis8SelectCnt${statusNo.index}" onchange="checkerOPASSISCntSelectFn(this.id)">
                                            	<c:forEach var="opassisSelcnt" begin="15" end="370" step="5">
												    <option value="${opassisSelcnt}">${opassisSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="opassis8UnitPrice${statusNo.index}" id="opassis8UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subopassis8Btn${statusNo.index}" id="subopassis8Btn${statusNo.index}" onclick="opassis8BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allopassis8Btn${statusNo.index}" id="allopassis8Btn${statusNo.index}" onclick="allopassis8BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- OPassis9 -->                                          	
                                            <td>	  
                                            	<select name="opassis9Select${statusNo.index}" id="opassis9Select${statusNo.index}" onchange="checkerOPASSISSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${opassisEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'OPP001'}">selected</c:if>>${data.opassis}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="opassis9SelectCnt${statusNo.index}" id="opassis9SelectCnt${statusNo.index}" onchange="checkerOPASSISCntSelectFn(this.id)">
                                            	<c:forEach var="opassisSelcnt" begin="15" end="370" step="5">
												    <option value="${opassisSelcnt}">${opassisSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="opassis9UnitPrice${statusNo.index}" id="opassis9UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subopassis9Btn${statusNo.index}" id="subopassis9Btn${statusNo.index}" onclick="opassis9BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allopassis9Btn${statusNo.index}" id="allopassis9Btn${statusNo.index}" onclick="allopassis9BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- OPassis10 -->                                          	
                                            <td>	  
                                            	<select name="opassis10Select${statusNo.index}" id="opassis10Select${statusNo.index}" onchange="checkerOPASSISSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${opassisEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'OPP001'}">selected</c:if>>${data.opassis}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="opassis10SelectCnt${statusNo.index}" id="opassis10SelectCnt${statusNo.index}" onchange="checkerOPASSISCntSelectFn(this.id)">
                                            	<c:forEach var="opassisSelcnt" begin="15" end="370" step="5">
												    <option value="${opassisSelcnt}">${opassisSelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="opassis10UnitPrice${statusNo.index}" id="opassis10UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="subopassis10Btn${statusNo.index}" id="subopassis10Btn${statusNo.index}" onclick="opassis10BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allopassis10Btn${statusNo.index}" id="allopassis10Btn${statusNo.index}" onclick="allopassis10BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- Mandays1 -->                                          	
                                            <td>	  
                                            	<select name="manday1Select${statusNo.index}" id="manday1Select${statusNo.index}" onchange="checkerMANDAYSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${mandaysEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'MANP001'}">selected</c:if>>${data.manday}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="omanday1SelectCnt${statusNo.index}" id="manday1SelectCnt${statusNo.index}" onchange="checkerMANDAYCntSelectFn(this.id)">
                                            	<c:forEach var="mandaySelcnt" begin="1" end="50" step="1">
												    <option value="${mandaySelcnt}">${mandaySelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="manday1UnitPrice${statusNo.index}" id="manday1UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="submanday1Btn${statusNo.index}" id="submanday1Btn${statusNo.index}" onclick="manday1BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allmanday1Btn${statusNo.index}" id="allmanday1Btn${statusNo.index}" onclick="allmanday1BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- Mandays2 -->                                          	
                                            <td>	  
                                            	<select name="manday2Select${statusNo.index}" id="manday2Select${statusNo.index}" onchange="checkerMANDAYSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${mandaysEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'MANP001'}">selected</c:if>>${data.manday}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="omanday2SelectCnt${statusNo.index}" id="manday2SelectCnt${statusNo.index}" onchange="checkerMANDAYCntSelectFn(this.id)">
                                            	<c:forEach var="mandaySelcnt" begin="1" end="50" step="1">
												    <option value="${mandaySelcnt}">${mandaySelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="manday2UnitPrice${statusNo.index}" id="manday2UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="submanday2Btn${statusNo.index}" id="submanday2Btn${statusNo.index}" onclick="manday2BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allmanday2Btn${statusNo.index}" id="allmanday2Btn${statusNo.index}" onclick="allmanday2BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- Mandays3 -->                                          	
                                            <td>	  
                                            	<select name="manday3Select${statusNo.index}" id="manday3Select${statusNo.index}" onchange="checkerMANDAYSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${mandaysEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'MANP001'}">selected</c:if>>${data.manday}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="omanday3SelectCnt${statusNo.index}" id="manday3SelectCnt${statusNo.index}" onchange="checkerMANDAYCntSelectFn(this.id)">
                                            	<c:forEach var="mandaySelcnt" begin="1" end="50" step="1">
												    <option value="${mandaySelcnt}">${mandaySelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="manday3UnitPrice${statusNo.index}" id="manday3UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="submanday3Btn${statusNo.index}" id="submanday3Btn${statusNo.index}" onclick="manday3BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allmanday3Btn${statusNo.index}" id="allmanday3Btn${statusNo.index}" onclick="allmanday3BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                            <!-- Mandays4 -->                                          	
                                            <td>	  
                                            	<select name="manday4Select${statusNo.index}" id="manday4Select${statusNo.index}" onchange="checkerMANDAYSelectFn(this.id,'${base.pntid}')">
                                            	<c:forEach var="data" items="${mandaysEntitylist}">
												    <option value="${data.pid}" <c:if test="${data.pid eq 'MANP001'}">selected</c:if>>${data.manday}</option><%-- 이 PID로 Query 조회 함 --%>
												</c:forEach>
												</select>
                                            </td>
                                            <td>	                                            	
                                            	<select name="omanday4SelectCnt${statusNo.index}" id="manday4SelectCnt${statusNo.index}" onchange="checkerMANDAYCntSelectFn(this.id)">
                                            	<c:forEach var="mandaySelcnt" begin="1" end="50" step="1">
												    <option value="${mandaySelcnt}">${mandaySelcnt}</option>
												</c:forEach>
												</select>
                                            </td>
                                            <td>
                                            	<input type="text" value="0" name="manday4UnitPrice${statusNo.index}" id="manday4UnitPrice${statusNo.index}" disabled><br/>
                                            	<input type="button" value="변경" class="btnWitch" name="submanday4Btn${statusNo.index}" id="submanday4Btn${statusNo.index}" onclick="manday4BtnFn(${statusNo.index})">
                                            	<input type="button" class="success" value="적용" style="float:right;" name="allmanday4Btn${statusNo.index}" id="allmanday4Btn${statusNo.index}" onclick="allmanday4BtnFn(this.id,${statusNo.index})">
                                            </td>
                                            
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div> <!-- End. Div -->
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
    <script src="/assets/js/admsp/admspjs.js"></script>
    
    <script src="/assets/vendor/admsp/jquery/jquery.js"></script>
    <script src="/assets/vendor/admsp/jquery/jquery.min.js"></script>
    <!--  script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script -->
    <script src="/assets/vendor/admsp/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    <!-- Core plugin JavaScript-->
    <script src="/assets/vendor/admsp/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/assets/js/admsp/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/assets/vendor/admsp/datatables/jquery.dataTables.min.js"></script>
    <script src="/assets/vendor/admsp/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/assets/js/admsp/demo/datatables-demo.js"></script>
    
</body>

</html>