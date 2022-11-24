<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en-US" dir="ltr">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>쿨리닉</title>
	<meta name="naver-site-verification" content="c4d160404d35b3dd58db99a616b868ef1d060812" />
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/img/favicons/logos.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/img/favicons/logos.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/img/favicons/logos.png">
    <link rel="shortcut icon" href="/assets/img/favicons/logos.ico">
    <link rel="manifest" href="/assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="/assets/img/favicons/logos.png">
    <meta name="theme-color" content="#ffffff">
    <meta name="description" content="콜드체인 전문 브랜드, 쿨리닉" />
	<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <link href="/assets/css/main/slides.css?ver=1" rel="stylesheet" type="text/css">  
    <link href="/assets/css/theme.css?ver=8" rel="stylesheet">
    <link href="/assets/lib/prismjs/prism.css?ver=1" rel="stylesheet">
    <link href="/assets/lib/loaders.css/loaders.min.css?ver=1" rel="stylesheet">
    <link href="/assets/css/detail/jquery.fancybox.min.css?ver=1" rel="stylesheet">
    <link href="/assets/css/detail/comm_detail.css?ver=1" rel="stylesheet">
    <link href="/assets/lib/remodal/remodal.css?ver=1" rel="stylesheet">
    <link href="/assets/lib/remodal/remodal-default-theme.css?ver=1" rel="stylesheet">
    <link href="/assets/lib/owl.carousel/owl.carousel.css?ver=1" rel="stylesheet">
    <link href="/assets/css/detail/lightbox.min.css?ver=2" rel="stylesheet">
    <link href="/assets/css/calc/commons.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/assets/css/calc/est.css?ver=3" rel="stylesheet" type="text/css">
    <link href="/assets/css/calc/comm_calc.css?ver=1" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=PT+Mono%7cPT+Serif:400,400i%7cLato:100,300,400,700,800,900" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    
    <style>
    * {
   		font-family: 'NanumSquareRound';
    }

    @font-face {
	    font-family: 'NanumSquareRound';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}

	@media screen and (max-width: 768px) {
		#loading {
		  	width: 100%;
		  	height: 100%;
		  	top: 0;
		  	left: 0;
		  	position: fixed;
		  	display: block;
		  	opacity: 0.6;
		  	background: #000;
		  	z-index: 99;
		  	text-align: center;
		}
		#loading > p {
	    	position: absolute;
	    	top: 57%;
	    	left: 35%;
	    	z-index: 101;
	    	font-color: #fff;
		}
		.popup_box{position: relative;top:50%;left:50%; border-radius: 2%;overflow: auto; overflow-x: hidden;width:335px;transform:translate(-50%, -50%);z-index:1002;box-sizing:border-box;background:#fff;box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);-webkit-box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);-moz-box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);}
		.popup_box .popup_cont {padding:30px;line-height:1.4rem;font-size:14px; }
	}
	@media screen and (min-width: 769px) {
		#loading {
		  	width: 80%;
		  	height: 100%;
		  	top: 0;
		  	left: 0;
		  	position: fixed;
		  	display: block;
		  	opacity: 0.6;
		  	background: #000;
		  	z-index: 99;
		  	text-align: center;
		}
		#loading > p {
	    	position: absolute;
	    	top: 57%;
	    	left: 43%;
	    	z-index: 101;
	    	font-color: #fff;
		}
		.popup_box{position: relative;top:50%;left:37%; overflow: auto; border-radius: 3%;width:375px;transform:translate(-50%, -50%);z-index:1002;box-sizing:border-box;background:#fff;box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);-webkit-box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);-moz-box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);}
		.popup_box .popup_cont {padding:50px;line-height:1.4rem;font-size:14px; }
	}
	
	#loading > img {
	  	position: absolute;
	  	top: 50%;
	  	left: 47%;
	  	z-index: 100;
	}

	/*popup*/
	.popup_layer {position:fixed;top:0;left:0;z-index: 10000; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.4); }
	/*컨텐츠 영역*/
	.popup_box .popup_cont h2 {padding:15px 0;color:#333;margin:0;}
	.popup_box .popup_cont p{ border-top: 1px solid #666;padding-top: 30px;}
	/*버튼영역*/
	.popup_box .popup_btn {display:table;table-layout: fixed;width:100%;height:70px;background:#ECECEC;word-break: break-word;}
	.popup_box .popup_btn a {position: relative; display: table-cell; height:70px;  font-size:17px;text-align:center;vertical-align:middle;text-decoration:none; background:#ECECEC;}
	.popup_box .popup_btn a:before{content:'';display:block;position:absolute;top:26px;right:29px;width:1px;height:21px;background:#fff;-moz-transform: rotate(-45deg); -webkit-transform: rotate(-45deg); -ms-transform: rotate(-45deg); -o-transform: rotate(-45deg); transform: rotate(-45deg);}
	.popup_box .popup_btn a:after{content:'';display:block;position:absolute;top:26px;right:29px;width:1px;height:21px;background:#fff;-moz-transform: rotate(45deg); -webkit-transform: rotate(45deg); -ms-transform: rotate(45deg); -o-transform: rotate(45deg); transform: rotate(45deg);}
	.popup_box .popup_btn a.close_day {background:#5d5d5d;}
	.popup_box .popup_btn a.close_day:before, .popup_box .popup_btn a.close_day:after{display:none;}
	/*오버레이 뒷배경*/
	.popup_overlay{position:fixed;top:0px;right:0;left:0;bottom:0;z-index:1001;;background:rgba(0,0,0,0.5);}
    </style>
  	</head>
<body onload="onload()">
    <main>
      
      <div id="preloader">
        <div class="loader"><span></span><span></span><span></span><span></span></div>
      </div>

      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="p-0" id="home">

        <div class="container-fluid p-0 minh-100vh">
          <div class="position-relative px-3 w-lg-50 position-lg-absolute" id="baseContent">
            <div class="row align-items-center minh-50vh justify-content-center minh-lg-100vh">
              <div>
				<img src="/assets/img/detail/headers/main02.jpg">	
              </div>
              <!--/.bg-holder-->
 
            </div>
          </div>
          <div class="position-relative w-lg-50 position-lg-fixed undefined" id="gridNav">
            <div class="row h-lg-100vh">
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="about">
                <div class="bg-holder" id="bg-holder-about">
                </div><!-- 회사소개 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="ai">
                <div class="bg-holder" id="bg-holder-ai">	
                </div><!-- AI 자동견적 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="coldroom">
                <div class="bg-holder" id="bg-holder-3years">
                </div>
              </div>
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="locationAS">
                <div class="bg-holder" id="bg-holder-contact"">
                </div><!-- 문의하기 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="traceabilityRMS">
                <div class="bg-holder" id="bg-holder-rms">
                </div><!-- RMS 이력추적 -->
                <!--/.bg-holder-->
              </div>
              <div class="col-6 col-sm-4 minh-25vh h-lg-50vh sidebar-item-wrapper py-5" data-content="smartADS">
                <div class="bg-holder" id="bg-holder-ads">
                </div><!-- ADS  -->
                <!--/.bg-holder-->
              </div>
            </div>
          </div>
        </div>
        <!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->


      <div class="page position-absolute t-0 w-100 slides horizontal simplifiedMobile animated" id="about">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-5 pt-lg-0">

	  <!-- 회사소개 -->
      <!-- <section> begin ============================-->
      <section class="py-0 overflow-hidden" id="digital-header" style="width:100%;height:5%;">
        	<div class="bg-holder digital-header" style="background-image:url(/assets/img/detail/headers/main02.jpg);" data-zanim-xs='{"delay":0,"animation":"zoom-out"}' data-zanim-trigger="scroll"></div>
        <!--/.bg-holder-->
        <div class="container" style="height:0px;">
          <div class="row min-vh-90 align-items-center py-8 justify-content-center text-center">
            <div class="col-lg-8 col-xl-7" data-zanim-timeline="{}" data-zanim-trigger="scroll">
               <h1 class="fs-3 fs-sm-4 fs-md-5 text-white parallax display-4" data-rellax-speed="4"><span class="overflow-hidden d-block"><span class="d-inline-block font-weight-black" style="margin-bottom:20px;font-family: 'OTWelcomeBA';margin-top:30px;" data-zanim-xs='{"delay":0.1}'> <!--  냉동공조 산업영역의 혁신을 더하다 -->  </span></span></span><span class="overflow-hidden d-block"><!-- <span class="d-inline-block font-weight-black text-underline mb-1" data-zanim-xs='{"delay":0.3}'>COOLINIC</span> --></span></h1>
            </div>
          </div><a class="indicator indicator-down" data-zanim-timeline='{"delay":1}' data-zanim-trigger="scroll" href="#target-down" data-fancyscroll="data-fancyscroll" data-offset="60"><span class="indicator-arrow indicator-arrow-one" data-zanim-xs='{"from":{"opacity":0,"y":15},"to":{"opacity":1,"y":-5,"scale":1},"ease":"Back.easeOut","duration":0.4,"delay":0.25}'></span><span class="indicator-arrow indicator-arrow-two" data-zanim-xs='{"from":{"opacity":0,"y":15},"to":{"opacity":1,"y":-5,"scale":1},"ease":"Back.easeOut","duration":0.4,"delay":0.5}'></span></a>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->

      <div id="target-down"></div>


	 <section class="border-top border-300" id="default-process">
	        <div class="container">
	           <div class="row justify-content-center text-center mb-6">
	            <div class="col-lg-6" style="margin-top: 7rem;">
	              <h2 class="fs-3 fs-sm-4 mb-3" style="font-size:2rem;">쿨리닉은 콜드체인<br/>전문 브랜드 입니다</h2>

	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/aboutdt-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>콜드체인 영역은 왜, 전문브랜드가 없을까요?</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    콜드체인 산업의 가장 큰 영역을 차지하는 콜드룸(저온저장고)는 
						인테리어 시장과 마찬가지로 소규모의 사업체가 주축을 이루고,
						업체마다 경력과 전문성. 일하는 방법과 노하우가 모두 다릅니다.<br/><br/>
						표준화 되어 있지 못하고, 소비자와 전문가의 정보 불균형으로 
						전형적인 레몬마켓으로 꼽힙니다.<br/><br/>
						50년의 짧은 기간동안 기술력은 성장했지만, 시스템은 부재합니다.<br/><br/>						
						레몬마켓의 문제점을 해결하고 기술력에 걸맞는 시스템이 필요합니다.<br/><br/>
						쿨리닉은 그렇게 시스템을 기반한 브랜드가 됩니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/aboutdt-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>수요와 공급의 해결, 플랫폼</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    플랫폼은 수요자와 공급자의 연결하여 불편함을 해결하고
						공급자에게는 일거리를 제공합니다.<br><br>
						하지만 전문분야는 더 신중해야 하죠.<br><br>
						물속의 문제는 물고기가 가장 잘 해결할 수 있듯
						전문분야의 문제는 전문가가 해결해야 합니다.<br><br>
						쿨리닉은 20년 이상의 콜드체인 전문가가 만든 전문영역의 플랫폼 입니다.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/aboutdt-030.png" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>일의 표준화, 기준을 제시합니다</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    50년의 짧은 콜드체인 시장은 아직 표준화 되지 못했고
						기준이 명확하지 못합니다.<br><br>
						쿨리닉은 룰에 따라 프로세스를 정립하고 표준화 합니다.<br><br>
						사람이 바뀌어도 품질이 같을 수 있도록 우리가 만든 룰과 기준을 지킵니다.<br><br>
						우리가 만드는 기준이 업계표준이 될 수 있다는 사명감으로 일합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/mice.png" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>독보적인 시스템을 더합니다</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
			    모바일로 목마름을 해결하는 시대에 살고 있습니다.<br><br>
						산업영역도 스마트하게 바뀔 수 있습니다.<br><br>
						쿨리닉은 콜드체인 산업에 IT를 융합해 체계적이고
						강력한 시스템을 제공합니다.<br><br>
						50년간 변함없는 방법과 방식을 바꿉니다.<br><br>
						익숙해진 불편함에 해결책을 제시합니다.<br><br>
						불편함은 해소될 수 있고 문제는 해결될 수 있습니다.
	                    </a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </section>




      <section class="text-center text-sans-serif" id="digital-features-1" style="margin-bottom:3.5rem;margin-top:3rem;">
	      <div>
		      <div>
            <div class="col-lg-9" style="max-width: 100%;">
		    	<h2 style="font-size:2rem;">쿨리닉의 독보적인 5가지 시스템을 확인해 보세요</h2>
            </div>
          </div>
          
        </div>
      </section>


      <section class="py-0 inner" id="default-cta-1" style="margin-bottom:5.5rem;">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay rounded" style="" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	          </div>
	          <div class="row justify-content-center text-center py-7">
	            <div class="col-lg-9 px-4">
	            
            <div class="col-lg-12 pr-lg-4 mb-6">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/calculate.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h2 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>콜드룸 자동 견적서</h2>
                    <hr class="hr-short" style="color:black; margin-left: 0;width:3.4rem;"/>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					저온설비는 예산 산정을 위해서는 견적이 필요하지만 그 견적을 받는 일은 꽤나 불편합니다.<br/><br/>
					업체마다 이야기도 다르고 판단하기 어렵습니다.<br/><br/>
					주문 제작 형태의 모든것들이 그렇듯 콜드룸(저온창고)의 견적을 받는건 꽤나 까다롭습니다.<br/><br/>
					쿨리닉의 자동 견적서는 빅데이터를 기반 알고리즘으로 견적을 산출합니다.<br/><br/>
					원하시는 사이즈와 온도대, 8가지의 요구 조건만 입력하면 견적을 확인할 수 있습니다.<br/><br/>
					20년의 기간 동안 제작 된 콜드룸의 면적, 온도 데이터를 기준으로 합니다.<br/><br/>
					콜드룸 제작의 기준, A.I. 자동 견적서를 확인해 보세요.
					</p>
                  </div>
                  <div>
	                  <a class="btn btn-secondary" href="https://coolinic.com/#ai">
	                  	A.I 자동견적서
	                  </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-6">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/warehouse.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h2 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>가치를 보관하는 금고, 콜드룸 제작</h2>
                    <hr class="hr-short" style="color:black; margin-left: 0;width:3.4rem;"/>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					쿨리닉이 만드는 콜드룸은 매뉴얼에 따라 제작 됩니다.<br/><br/>
					품질의 편차가 없도록 시공사만의 노하우나, 잔기술은 없습니다.<br/><br/>
					감리 시스템을 통해 설비를 점검하고 감독합니다. <br/><br/>
					그래서 우리는 국내 최대 워린티를 보장할 수 있습니다.
					</p>
                  </div>
                  <div>
	                  <a class="btn btn-secondary" href="https://coolinic.com/#coldroom">
	                  	콜드룸 제작
	                  </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-6">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/pin_drop.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h2 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>앞보다는 뒤를 보는 서비스, 위치기반 A/S 시스템</h2>
                    <hr class="hr-short" style="color:black; margin-left: 0;width:3.4rem;"/>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    평생의 사후관리를 보장합니다.<br><br>
					워런티 기간과 관계없이 고객의 수리할 권리를 존중 합니다.<br><br>
					최소 10년을 바라보고 선택한 콜드룸이니까요.<br><br>
					흔히들 설치 30% 사후관리가 70% 이라고 합니다.<br><br>
					쿨리닉이 위치기반 A/S 시스템을 가장 먼저 만든 이유 입니다.<br><br>
					대한민국 곳곳의 전문가들이 파트너로 함께 합니다. <br><br>
					콜드룸, 냉각기, 공조기 등 전문 분야로 나뉘어 긴급한 A/S에 빠르게 대응합니다.<br><br>
					언제 어디서든 걱정없는 A/S 서비스를 경험해 보세요.
                    </p>
                  </div>
                  <div>
	                  <a class="btn btn-secondary" href="https://coolinic.com/#locationAS">
	                  	위치기반 A/S</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-6">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/fact_check.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h2 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>70%의 사후관리를 위한 이력 추적 시스템 RMS</h2>
                    <hr class="hr-short" style="color:black; margin-left: 0;width:3.4rem;"/>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    콜드룸은 모두 주문제작이고 단점은 잊혀진다는 것입니다.<br/><br/>
					제품의 사양도, 옵션도, 시간이 지나면 잊혀집니다.<br/><br/>
					교체된 부품도, 고장의 이력도 관리되지 못하죠.<br/><br/>
					사후관리를 잘 하려면, 정보가 필요합니다.<br/><br/>
					쿨리닉의 RMS는 냉동기의 사양과 시공부터 폐기될때까지의 <br/><br/>
					모든 이력을 추적하고 관리에 활용합니다.<br/><br/>
					정보를 알면 A/S는 빨라지고, 비용은 줄어듭니다.<br/><br/>
					냉동기의 주민등록 번호 RMS로, 체계적인 냉동기 관리를 시작해 보세요.
                    </p>
                  </div>
                  <div>
	                  <a class="btn btn-secondary" href="https://coolinic.com/#traceabilityRMS">
	                  	RMS 자세히보기</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-6">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/update.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h2 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>콜드룸의 숙제 해결, 인공지능 제상 시스템 ADS</h2>
                    <hr class="hr-short" style="color:black; margin-left: 0;width:3.4rem;"/>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    콜드룸 내 제상의 문제는 모두의 골칫거리 입니다.<br><br>
					적상(얼음)으로 인한 냉동기 고장이나, 잦은 제상으로 인한 온도상승.<br><br>
					빈번한 제상은 온도가 올라가서 문제. <br><br>
					간헐적 제상은 적상이 많아져서 문제. <br><br>
					이러지도 저러지도 못하는 제상의 문제를 해결합니다.<br><br>
					ADS는 제상이 필요한 정확한 시점에, 제상을 수행합니다.<br><br>
					3년간의 연구로 최적의 인공지능 제상 시스템을 제공합니다.
                    </p>
                  </div>
                  <div>
	                  <a class="btn btn-secondary" href="https://coolinic.com/#smartADS">
	                  	ADS 자세히보기</a>
                  </div>
                </div>
              </div>
            </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section>

	      <!-- 제외 -->
      <!--section class="text-center bg-black text-sans-serif inner" id="digital-contact" style="padding-top:1.5rem;pdding-bottom:7.5rem;margin-top:7.5rem;background: rgba(0, 0, 0, 0.10) !important;">
        <div class="container">
          <form action="/contactProc" name="contactReqForm" id="contactReqForm" method="post" class="form text-left mt-6">
            <div class="row justify-content-center" style="padding-bottom:7.5rem;">
              <div class="col-lg-5">
                <div class="form-group mb-4"><label for="companyNM" class="text-700 font-weight-bold ls fs--1">상호</label>
                	<input id="companyNM" name="companyNM" class="fs-0 form-control border-800 bg-transparent" type="text" required="required" /></div>
                <div class="form-group mb-4"><label for="nameNM" class="text-700 font-weight-bold ls fs--1">성함</label>
                	<input id="nameNM" name="nameNM" class="fs-0 form-control border-800 bg-transparent" type="text" required="required" /></div>
                <div class="form-group mb-4"><label for="callNumber" class="text-700 font-weight-bold ls fs--1">연락처</label>
                	<input id="callNumber" name="callNumber" class="fs-0 form-control border-800 bg-transparent" type="text" required="required" /></div>
                <div class="form-group mb-4"><label for="emailNM" class="text-700 font-weight-bold ls fs--1">이메일</label>
                	<input id="emailNM" name="emailNM" class="fs-0 form-control border-800 bg-transparent" type="email" required="required" /></div>
                <div class="form-group mb-4"><label for="typeNM" class="text-700 font-weight-bold ls fs--1">고객구분</label>
                	<select id="typeNM" name="typeNM" class="fs-0 custom-select border-800 bg-transparent">
	                    <option selected="" selected disabled>고객구분 선택</option>
	                    <option value="일반고객">일반 고객</option>
	                    <option value="엔지니어">엔지니어</option>
	                    <option value="기업">기업</option>
                	</select>
                </div>
                <div class="form-group mb-4"><label for="contactType" class="text-700 font-weight-bold ls fs--1">문의유형</label>
                	<select id="contactType" name="contactType" class="fs-0 custom-select border-800 bg-transparent">
	                    <option selected="" selected disabled>문의유형 선택</option>
	                    <option value="일반문의">일반 문의</option>
	                    <option value="서비스 관련 문의">서비스 관련 문의</option>
	                    <option value="B2B제휴 신청 관련 문의">B2B제휴 신청 관련 문의</option>
                	</select>
                </div>
              </div>
              <div class="col-lg-5">
                <div class="form-group mb-4"><label for="contents" class="text-700 font-weight-bold ls fs--1">문의내용</label>
                <textarea name="contents" id="contents" class="fs-0 form-control border-800 bg-transparent" rows="11" required="required"></textarea></div>
              </div>
              <div class="col-lg-10 text-center">
                <div class="zform-feedback my-2"></div><input class="btn btn-danger" type="submit" value="문의 할게요" />
              </div>
            </div>
          </form>
        </div>
      </section-->
      



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="text-sans-serif inner" id="digital-socials" style="margin-bottom:8.5rem;">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-lg-4 pr-lg-6 ml-lg-auto mt-3 mt-lg-0">
              <h3 class="mb-3">COOLINIC</h3>
              <p class="text-700">주식회사 프리즈<br/>사업자등록번호 : 610-86-34238<br/><a href="/privacy-consent" class="text-700" style="text-decoration: none;color:black;">개인정보처리방침</a><br/>
              <a href="/terms-service" class="text-700" style="text-decoration: none;color:black;">이용약관</a></p>
             
            </div>
            <div class="col-lg-3 pr-lg-5  mt-6 mt-lg-0">
              <h4 class="mb-3">Find us</h4>
              <address class="text-700">경기도 화성시 기산로 43-2</address>
            </div>
            <div class="col-md-6 col-lg-4 mt-6 mt-lg-0">
              <h4 class="mb-3">Info</h4>
              <p class="mb-0"><span class="text-black">Tel: </span><a class="text-700" href="tel:+15771817">1577-1817</a></p>
              <p class="mb-0"><span class="text-black">Email: </span><a class="text-700" href="mailto:info@coolinic.com">info@coolinic.com</a></p>
            </div>
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->

            <footer class="page-footer" style="z-index:9999;">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/about-s.jpg);background-position: 0 27%; transform: scale(1.1);">
              </div>
              <!--/.bg-holder-->

              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
                    
                    
                    </div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/about-s.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">회사소개</h1>
            </div>
          </div>
        </div>
      </div>
      
      
      <!-- AI 자동견적 -->
      <div class="page position-absolute t-0 w-100" id="ai">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-5 pt-lg-0">

          <!-- ============================================-->
          <!-- <section> begin ============================-->
	      <section>
	      <div id="wrapsv">
			<header id="headersv" class="row_flex">
    			<h2>AI 자동견적 계산기</h2>
  			</header>
			
		  	<section id="sectionsv">
   			<form action="/ai-calc" name="rentalForm" id="rentalForm" method="post" onsubmit="return submitCheck();">
   			
   			<!-- container_content -->
   			<div class="container_content">
     			<div class="row_flex">
       				<!-- product_info -->
       				<div class="product_info">
         				<!-- product_size -->
	         				<div class="product_size product_info_item">
	      					<div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-30.png);"></div>
				                  <!--/.bg-holder-->
				                </div>
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-20.jpg);"></div>
				                  <!--/.bg-holder-->
				                </div>
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-10.jpg);"></div>
				                  <!--/.bg-holder-->
				                </div>
			                </div>
         				</div>
         				
       				</div>
       				
       				<div class="addition">
         				<!-- product_size -->
         				<div class="product_size product_info_item product_info_item_mobile">
       					<div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-30.png);"></div>
				                  <!--/.bg-holder-->
				                </div>
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-20.jpg);"></div>
				                  <!--/.bg-holder-->
				                </div>
				                <div class="min-vh-lg-100 py-9">
				                  <div class="bg-holder" style="border-radius:10px;background-image:url(/assets/img/detail/headers/header-10.jpg);"></div>
				                  <!--/.bg-holder-->
				                </div>
			                </div>
         				</div>

         				<div class="cont_box tab_common_cont">
              					<h3>저온창고의 정보를 입력해주세요.</h3>
              					<h6 style="padding-left: 10px;">저온창고의 정보 입력만으로 쉽게 자동 견적서를 확인하실 수 있습니다.</h6>
              					<div class="item">
                					<input type="text" id="wid" name="wid" placeholder="가로(mm)" onchange="inputValueWidChange();" required>
              						<div class="error-msg1" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: rgba(0,0,0,0.10);"></div>
              					</div>
              					<div class="item">
                					<input type="text" id="vert" name="vert" placeholder="세로(mm)" onchange="inputValueVertChange();" required>
                					<div class="error-msg2" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: rgba(0,0,0,0.10);"></div>
              					</div>
              					<div class="item">
                					<input type="text" id="heg" name="heg" placeholder="높이(mm)" onchange="inputValueHegChange();" required>
                					<div class="error-msg3" style="padding:5px 0 0 5px;font-size:12px;color:red;background-color: rgba(0,0,0,0.10);"></div>
              					</div>
              					<div class="item">
	              					<select id="store" name="store" required="required">
								      <option value="0" selected disabled>저장품목</option>
								      <option value="storelist01">어패류</option>
								      <option value="storelist02">화훼류</option>
								      <option value="storelist03">돈육</option>
								      <option value="storelist04">채소류</option>
								      <option value="storelist05">과실류</option>
								      <option value="storelist06">혼합류</option>
								      <option value="storelist07">기타</option>
								   </select>
              					</div>
              					<div class="item">
	              					<select id="temperture" name="temperture" required="required">
								      <option value="0" selected disabled>희망온도</option>
								      <option value="temp01">냉장(0 ~ 15℃)</option>
								      <option value="temp02">냉동(0 ~ -20℃)</option>
								      <option value="temp03">동결(-20 ~ -40℃)</option>
								      <option value="temp04">급속동결(-40 ~ -70℃)</option>
								   </select>
              					</div>
              					<div class="item">
	              					<select id="mtype" name="mtype" required="required">
								      <option value="0" selected disabled>출입구 형태</option>
								      <option value="mtype01">오버랩 도어(일반 도어 타입)</option>
								      <option value="mtype02">수동 슬라이드 편개(한쪽 열림)</option>
								      <option value="mtype03">수동 슬라이드 양개(양쪽 열림)</option>
								      <option value="mtype04">자동 슬라이드 편개(한쪽 열림)</option>
								      <option value="mtype05">자동 슬라이드 양개(양쪽 열림)</option>
								   </select>
              					</div>
              					<div class="item">
	              					<select id="msize" name="msize" required="required">
								      <option value="0" selected disabled>출입구 사이즈</option>
								      <option value="msize01">평수에 맞게 스탠다드 적용</option>
								      <option value="msize02">900 X 2100 X 100 (오버랩)</option>
								      <option value="msize03">1000 X 2100 X 100 (오버랩)</option>
								      <option value="msize04">1200 X 2400 X 100 (슬라이드 / 편개)</option>
								      <option value="msize05">1400 X 2600 X 100 (슬라이드 / 편개)</option>
								      <option value="msize06">2400 X 2600 X 100 (슬라이드 / 양개)</option>
								      <option value="msize07">2600 X 2800 X 100 (슬라이드 / 양개)</option>
								   </select>
								   <div class="alert-msg" style="padding:5px 0 0 5px;font-size:12px;color:#999;background-color: rgba(0,0,0,0.10);"></div>
              					</div>
              					<div class="item">
	              					<select id="purchese" name="purchese" required="required">
								      <option value="0" selected disabled>구매형태</option>
								      <option value="purchese01">구입</option>
								      <option value="purchese02">렌탈</option>
								   </select>
              					</div>
            				</div>
          			  <!--cont_box end-->
        		      </div>
        			  <!-- addition end -->
                </div>
            </div>	
            
            
   		  <!-- container_content end -->
      		  <footer class="footer" id="individually_footer">
        	      <div class="footer_cont">
          			  <!--calculator_box -->
          			  <div class="calculator_box">
            		      <div class="calculator_cont row_flex">
              			      
              				<!--calculator_cont01-->
              				<div id="btnloading" class="calculator_cont02 row_flex">
                				<input type="submit" id="btnSave" value="견적서 확인">
              				</div>
              				<!--calculator_cont02-->
            			</div>
            			<!--calculator_cont end-->
    
            			<div class="notice">
              				<p>기본 정보 입력만으로 스탠다드 견적 금액을 확인하실 수 있으며, 설치현장 환경에 따라 추가 비용이 발생할 수 있습니다.</p>
            			</div>
            			<!--notice-->
          			</div>
          			<!--calculator_box-->
        		</div>
      		</footer>
	    	</form>
		    </section>
			</div>
            </section>



<div class="popup_layer" id="popup_layer" style="display: none;">
  <div class="popup_box">
      <div style="height: 10px; width: 375px; float: top;">
        <a href="javascript:closePop();"><img src="/assets/img/detail/illustration/ic_close.svg" class="m_header-banner-close" width="30px" height="30px"></a>
      </div>
      <!--팝업 컨텐츠 영역-->
      <div class="popup_cont">
          <h5>A.I 자동견적서 시스템 점검 공지안내</h5>
          <p>
	  쿨리닉 홈페이지 방문 고객님께 안내드립니다.<br/><br/>
          	A.I 자동견적서 시스템 점검으로 해당  메뉴의 이용이 일시적으로
		중단되오니 양해부탁드립니다.<br><br>
		서비스 이용에 불편을 드려 대단히 죄송하며,
		보다 개선된 서비스를 위해 최선을 다하겠습니다.<br>
		감사합니다.<br><br>
		<b>COOLINIC.</b>
          </p>
      </div>
      <!--팝업 버튼 영역-->
      <div class="popup_btn" style="float: bottom;">
          <a href="javascript:closePop();">닫기</a>
      </div>
  </div>
</div>



            <footer class="page-footer">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/ai-s.jpg);background-position: 0 41%; transform: scale(1.1);">
              </div>
              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0"></div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/ai-s.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">자동견적</h1>
            </div>
          </div>
        </div>
      </div>
      
      <div class="page position-absolute t-0 w-100" id="coldroom">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-5 pt-lg-0" style="padding-bottom:0;padding-top: 0 !important;">

		      <!-- 3년의 워런티 -->
		      <section class="py-0" id="page-about">
		        <div class="container-fluid">
		          <div class="row">
		            <div class="col-lg-6 px-0 order-lg-2">
		              <div class="sticky-top vh-lg-100 py-1">
		                <div class="waranch" style="background-image:url(/assets/img/detail/coldroom-img.png);" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out-slide-left","delay":0.4}'></div>
		                <!--/.bg-holder-->
		              </div>
		            </div>
		            <div class="col-lg-6 bg-white py-6">
		              <div class="row h-100 align-items-center justify-content-center">
		              
		                <div class="col-lg-10">
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">
		                  <h4 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll" style="font-size:1.5rem;">
		                      A/S에 용의한 콜드룸을 만듭니다
		                  </h4>
		                  <br/><br/>
	                        콜드룸은 10년 이상을 사용하는 고객의 자산입니다.<br><br>
							더불어 온도 유지를 위해 1년 365일 24시간 가동되죠. <br><br>
							한번의 끝이 아닌 두고두고 잘 가동 되어야만 합니다.<br><br>
							그래서 쿨리닉의 설계팀은 안정적인 사용성에 최우선 순위를 둡니다.<br><br>
							고장이 났을때 잘 대응할 수 있는, 사후관리에 최적화된 콜드룸을 만듭니다.<br><br>
							시공팀마다 기술의 편차가 없도록, 원칙을 지키고 매뉴얼에 따릅니다.<br><br>
							매뉴얼에 이탈하지 않도록 감리 시스템을 통해 품질을 유지하는 것, 쿨리닉이 사후관리를 잘 할 수 있는 가장 좋은 방법입니다.
	                      
		                  </p>
		                  <div class="row mt-5">
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/safe.png" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/safety01.png" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                  </div>
		                  
		                  <!-- 이력추적으로 관리된다 -->
		                  <div style="margin-top:7.5rem;"><!-- class="mb-5" -->
		                    <div class="overflow-hidden">
		                      <blockquote class="blockquote text-center my-3 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
			                    <p class="blockquote-content" style="font-size:1.7rem;">
			                    기억력 좋은<br/>똑똑한 콜드룸
			                    </p>
			                  </blockquote>
		                    </div>
		                  </div>
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">
		                  <h4 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll" style="font-size:1.5rem;">
		                      언제가 될지 모르는 한번을 위해<br/>모두를 기록합니다
		                  </h4><br/>
		                  <br/>
	                      병원에서 우리의 병력을 기록하고 관리하듯 쿨리닉은 RMS로 냉동기의 이력을 관리 합니다.<br><br>
							RMS는 냉동기의 주민등록 번호로, 모든 데이터를 보관하는 쿨리닉의 냉동기 관리 시스템 입니다.<br><br>
							언제 벌어질지 모르는 냉동기 고장에 빠른 대응을 위해 정보를 추적하고 관리에 활용합니다.<br><br>
							모바일 앱으로 정보와 이력을 즉시 확인할 수 있고 그로인해 제품을 파악하는 시간과 부품을 준비하는 시간을 줄일 수 있습니다.<br><br>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							<h4>쿨리닉은 똑똑한 콜드룸을 만듭니다.</h4><br/><br/>
							
							<a class="btn btn-secondary" href="https://coolinic.com/#traceabilityRMS">
			                  	RMS 자세히보기
		                    </a>
		                  </p>
		                  <div class="row mt-5">
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/housedt-01.png" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/housedt-02.png" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                  </div>
		                  
		                  <!-- 2배의 보증기간 -->
		                  <div style="margin-top:7.5rem;">
		                    <div class="overflow-hidden">
		                      <blockquote class="blockquote text-center my-3 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
			                    <p class="blockquote-content" style="font-size:1.7rem;">
			                    더 안심할수 있도록,<br/>1년 보다는 2년
			                    </p>
			                  </blockquote>
		                    </div>
		                  </div>
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">
		                  <h4 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll" style="font-size:1.5rem;">
		                      책임감은 자신감으로부터,<br/>국내 최대 워런티를 보장합니다
		                  </h4>
		                  <br/><br/>
		                    새 제품은 고장나지 않습니다.<br><br>
							워런티가 지나면 약속이나 한듯 고장 나는 상황이 참 야속하기만 하죠.<br><br>
							쿨리닉의 국내 최대로 2년의 워런티를 보장합니다. <br><br>
							조금 더 안심할 수 있도록, 사후관리를 위한 시공과 독보적인 사후관리 시스템을 기반으로 국내 최대 워런티를 보장합니다.<br><br>
							냉동기는 마치 우리의 몸처럼 조금의 문제가 생겨도 멈추지 않고 가동됩니다. <br><br>
							데미지가 누적되기 전까지 확인이 어렵고, 새 제품은 생각보다 데미지에 강합니다.<br><br>
							설치보다 관리의 중요성을 강조하는 이유입니다.<br><br>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							<h4>콜드룸, 이젠 제품이 아닌 가치를 보관하세요.</h4>
		                  </p>
		                  <div class="row mt-5" style="margin-bottom: 7.5rem;">
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/2yeardt-01.png" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/safety.png" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                  </div>
		                  
		                  <div style="margin-top:7.5rem;">
		                    <div class="overflow-hidden">
		                      <blockquote class="blockquote text-center my-3 border p-5 px-xl-7 border-300 rounded" data-zanim-xs='{"delay":0.1}' data-zanim-trigger="scroll">
			                    <p class="blockquote-content" style="font-size:1.7rem;">
			                    SERVICE PROCESS
			                    </p>
			                  </blockquote>
		                    </div>
		                  </div>
		                  <p class="dropcap" data-zanim-xs='{"delay":0.5}' data-zanim-trigger="scroll">
		                  <h4 class="fs-4 fs-md-5 mb-0" data-zanim-xs='{"delay":0.4}' data-zanim-trigger="scroll" style="font-size:1.5rem;">
		                      쿨리닉의 모든 서비스는<br> 매뉴얼에 따라 체계적으로 진행 됩니다
		                  </h4>
		                  <br/><br/>
		                  	<h4>1. 자동견적서</h4>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							자동 견적서를 통해 1차 견적 후 상세견적서를 요청합니다.<br><br><br> 
							
							<h4>2. 담당 콜드매니저 배정</h4>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							콜드매니저가 전담 배정 됩니다.<br><br><br> 
							
							<h4>3. 내방 상담</h4>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							AI 견적서를 바탕으로 당일 상세 견적 확인 및 서비스에 대한 설명이 진행됩니다
							(가계약금 50만원으로 실측/디자인 미팅이 진행되며, 자료 제공및 최종견적 전까지 전액 환불 됩니다)<br><br><br>  
							
							<h4>4. 디자인 제공 및 최종 견적 </h4>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							3D 디자인 자료 및 최종 견적서가 제공 됩니다.<br><br><br>  
							
							<h4>5. 본 계약 체결</h4>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							최종 견적서에 안내 된 금액의 70% 입금하면 본 계약이 체결 됩니다
							(쿨리닉은 100% 세금계산서 및 현금영수증을 발급합니다)<br><br><br>  
							
							<h4>6. 쿨리닉 계정 개설</h4>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							사후관리 전용앱 ’쿨리닉’에서 시공 될 콜드룸 정보가 등록됩니다
							(추후 언제든 ‘쿨리닉앱’을 통해 콜드룸의 A/S 요청 또는 이력을 확인할 수 있습니다)<br><br><br>  
							
							<h4>7. 콜드룸 시공</h4>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							 콜드룸 시공 진행상황은 담당 콜드매니저와 소통할 수 있습니다.<br><br><br> 
							 
							 <h4>8. 감리 및 마감 미팅</h4>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							 매뉴얼에 따른 감리가 진행 되며, 시운전 온도 등 최종 점검합니다.<br><br><br> 
							 
							 <h4>9. 잔금 입금</h4>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							  총 잔금 확인 후 A/S 보증서를 전달합니다.<br><br><br> 
							  
							  <h4>10. 케어 시작</h4>
							<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
							  케어가 시작 됩니다.
		                  </p>
		                  <div class="row mt-5" style="margin-bottom: 7.5rem;">
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/imgq02.png" alt="" data-zanim-xs='{"delay":0.6,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                    <div class="col-6"><img class="rounded img-fluid" src="/assets/img/detail/imgq01.png" alt="" data-zanim-xs='{"delay":0.7,"animation":"zoom-in"}' data-zanim-trigger="scroll" /></div>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div><!-- end of .container-->
		      </section><!-- <section> close ============================-->
		      <!-- ============================================-->
		
		
		    <!--===============================================-->
		    <!--    Modal for language selection-->
		    <!--===============================================-->
		    <!-- Modal-->
		    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
		      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
		        <div class="modal-content bg-black">
		          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
		            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
		              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
		              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
		              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
		              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
		            </ul>
		          </div>
		        </div>
		      </div>
		    </div>

            <footer class="page-footer" style="z-index:9999;">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/warehouse-s.jpg);background-position: 0 27%; transform: scale(1.1);">
              </div>
              <!--/.bg-holder-->

              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
                    
                    
                    </div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/warehouse-s.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">저온저장고</h1>
            </div>
          </div>
          
        </div>
      </div>
      
      <!-- A/S요청 -->
      <div class="page position-absolute t-0 w-100" id="as">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-5 pt-lg-0">


		   <div class="stepContainer">
			    <div id="svg_wrap"></div>
			
			    <h1 class="steph1">간편 A/S 요청 서비스</h1>
			    <section class="stepSection selectSteps">
			      <p>A/S 신청<br/>RMS 번호로 쉽게 A/S 요청 하세요</p>
			      <input type="text" placeholder="2501-02-00052" />
			      <input type="radio" id="selectSteps1" name="1step"><label for="selectSteps1">A/S 요청하기</label>
			      <input type="radio" id="selectSteps2" name="1step"><label for="selectSteps2">일반 A/S 요청하기<br/>(RMS 번호가 없어요)</label>
			    </section>
			
			    <section class="stepSection selectSteps">
			      <p>서비스 구분 선택<br/>원하시는 서비스의 종류를 선택해 주세요</p>
			      <input type="radio" id="selectSteps3" name="2step"><label for="selectSteps3">냉동기 사업자 입니다.<br/>A/S를 요청 합니다.</label>
			      <input type="radio" id="selectSteps4" name="2step"><label for="selectSteps4">파트너 입니다.<br/>A/S 대행 요청 합니다.</label>
			      <input type="radio" id="selectSteps5" name="2step"><label for="selectSteps5">제조사 입니다.<br/>A/S 대행 요청 합니다.</label>
			    </section>
			
			    <section class="stepSection selectSteps">
			      <p>A/S 대행 유.무상 선택<br/>무상 : 대행 요청자에게 비용 청구 / 유상 : 현장에서 결제</p>
			      <input type="radio" id="selectSteps6" name="3step"><label for="selectSteps6">무상 A/S 기간입니다.</label>
			      <input type="radio" id="selectSteps7" name="3step"><label for="selectSteps7">유상 A/S 기간입니다.</label>
			    </section>
			
			    <section class="stepSection selectSteps">
			      <p>서비스 유형 선택<br/>긴급 : 2시간 이내 / 출장 및 진단비 100,000<br/>일반 : 일정 조율 / 출장 및 진단비 : 50,000</p>
			      <input type="radio" id="selectSteps8" name="4step"><label for="selectSteps8">긴급으로 A/S 요청합니다.</label>
			      <input type="radio" id="selectSteps9" name="4step"><label for="selectSteps9">긴급으로 A/S 요청합니다.</label>
			    </section>
			    
			    <section class="stepSection selectSteps">
			      <p>고장 제품 선택<br/>어떤 제품의 A/S가 필요하신가요?</p>
			      <input type="radio" id="selectSteps10" name="5step"><label for="selectSteps10">업소용 냉장고</label>
			      <input type="radio" id="selectSteps11" name="5step"><label for="selectSteps11">쇼케이스 류</label>
			    </section>
			    <section class="stepSection selectSteps">
			      <p>고장 증상 선택<br/>증상을 알면 A/S가 빨라집니다</p>
			      <input type="radio" id="selectSteps12" name="6step"><label for="selectSteps12">온도가 떨어지지 않아요</label>
			      <input type="radio" id="selectSteps13" name="6step"><label for="selectSteps13">기계가 작동하지 않아요 </label>
			    </section>
			    <section class="stepSection selectSteps">
			      <p>A/S 요청지 주소<br/>현장 주소를 입력해 주세요</p>
			      <input type="text" placeholder="우편번호" />
			      <input type="text" placeholder="주소지" />
			      <input type="text" placeholder="상세주소" />
			    </section>
			    
			    <section class="stepSection selectSteps">
			      <p>상호를 알려주세요<br/>간판명 또는 기업명을 알려주세요</p>
			      <input type="text" placeholder="상호 or 기업명" />
			    </section>
			    
			    <section class="stepSection selectSteps">
			      <p>그 외 참고사항 입력<br/>제품의 상세모델명 또는 참고사항을 남겨주세요</p>
			      <input type="text" placeholder="ex)pa-100이라고 표기되어 있음" />
			    </section>
			    <section class="stepSection selectSteps">
			      <p>전화번호 인증<br/>담당자님의 번호를 인증해 주세요</p>
			      <input type="text" placeholder="010 - 없이 숫자만 입면" />
			      <input type="text" placeholder="인증번호" />
			    </section>
			
			    <section class="stepSection">
			      <p>General condtitions</p>
			      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			    </section>
			
			    <div class="stepButton" id="prev">&larr; 이전</div>
			    <div class="stepButton" id="next">다음 &rarr;</div>
			    <div class="stepButton" id="submit">Agree and send application</div>
			</div>


            <footer class="page-footer">
              <div class="bg-holder"  style="background-image:url(/assets/img/sidebars/golden-s.jpg);background-position: 0 37%; transform: scale(1.1);">
              </div>
              <!--/.bg-holder-->

              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <!-- <div class="col-lg-6 text-lg-left">
                      <p class="fs--1 text-uppercase ls font-weight-bold mb-0">
                        Copyright &copy; 2018 Boots4&trade; inc.</p>
                    </div> -->
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
                      
                    </div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/golden-s.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">A/S</h1>
            </div>
          </div>
        </div>
      </div>
      <div class="page position-absolute t-0 w-100" id="traceabilityRMS">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-5 pt-lg-0">

		  <!-- 이력추적 RMS  -->
	      <!-- <section> begin ============================-->
	      <section class="py-0">
	        <div class="container-fluid">
	          <div class="row h-full border-bottom border-300">
	            <div class="col-lg-6 px-0 order-lg-2" data-zanim-lg='{"animation":"slide-left","delay":0.4}' data-zanim-trigger="scroll">
	              <div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/rms-header.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-6 bg-white py-7 py-md-10">
	              <div class="row align-items-center justify-content-center h-100">
	                <div class="col-lg-10 text-black text-center text-lg-left" data-zanim-timeline="{}" data-zanim-trigger="scroll">
	                  <div class="overflow-hidden">
	                    <h4 class="text-uppercase font-weight-normal ls text-white bg-dark p-1 rounded d-inline-block" data-zanim-xs='{"delay":0.1}'>THE &nbsp;COOLINIC</h4>
	                  </div>
	                  <div class="overflow-hidden">
	                    <h1 class="display-3 fs-5" data-zanim-xs='{"delay":0.2}' style="padding-top:5px;">
	                    <span style="font-size:3.3rem;">단 한번을</span><br /><span class="font-weight-light" style="font-size:3.3rem;">위한 기록</span></h1>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	<section class="border-top border-300" id="default-process">
	        <div class="container">
	          <div class="row justify-content-center text-center mb-6">
	            <div class="col-lg-6" style="margin-top: 7rem;">
	              <h2 class="fs-3 fs-sm-4 mb-3" style="font-size:2rem;">숫자만으로 요청되는<br/>빠른 A/S</h2>
	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7" style="padding-bottom: 7.5rem;">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center"><img class="img-fluid" src="/assets/img/detail/illustration/rmsdts-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>위치? 모델명? 사진?</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    어디있는지도 모르는 냉동기의 생소한 모델명을 불러줘야 하고, 
						때론 사진을 찍어서 전송을 하고 A/S를 요청합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/rmsdt-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-11">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>기억에 의존</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    고장 이력이나 이전에 조치받았던 내용을 떠올리며 이력을 설명 해야 하기도 하죠.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/rmsdt-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>체계 없는 A/S 요청</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    A/S 요청.. 왜 이렇게 할수밖에 없을까요?
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row overflow-hidden pb-1">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/rmsdta-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>12자리 숫자</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p style="margin-bottom:10rem;">
	                    RMS 바코드에 부착된 12자리 숫자만 불러주세요.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/rmsdt-05.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-300 border-lg-bottom py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">05</span>
	                    <h3>냉동기의 모든 정보 기억</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    냉동기의 사양, 주문 옵션, 시공정보와 고장 이력까지 기억합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row overflow-hidden pb-1">
	                <div class="col-lg-6 border-lg-right border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/rmsdt-06.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">06</span>
	                    <h3>냉동기기 이력추적관리 시스템, RMS</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    RMS는 현재 운용중인 콜드룸이나 냉동기에도, 
	                    신규로 제작되는 냉동기에도 모두 도입이 가능한 냉동기기 이력추적관리 시스템입니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section>
	
	
	
	<section id="default-services">
        <div class="container">
          <div class="row justify-content-center inner">
            <div class="col-12 mb-5 mb-md-7 text-center" style="margin-top: 7rem;">
              <h2 class="fs-3 fs-sm-4" style="font-size:2rem;"><span>제대로 관리 하고싶은 분들을 위합니다</span></h2>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/corporate_fare.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>체계적으로 냉동기를 관리하고 싶은 기업</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    남들과 차별화와 경쟁력을 갖추고 싶은 시공 및 수리업체에 권합니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/construction.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>유지보수 전문 업체</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    차별화 된 경쟁력으로 무장할 수 있는 똑똑한 RMS를 권합니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->
      </section>
      
      
      
     <section class="bg-white py-6 py-md-8 inner" id="default-why-us">
	        <div class="container">
	          <div class="row align-items-center justify-content-center">
	            <div class="col-12 mb-2 mb-lg-5 text-center">
	              <h2 class="fs-3"><span style="font-size:1.5rem;">정보를 확인하고 미리 준비하면<br/>A/S는 46% 빨라집니다</span></h2>
	            </div>
	          </div>
	          <div class="row align-items-center justify-content-center">
	           
	            <div class="col-sm-8 col-lg-4 mt-4 mt-lg-0 px-lg-4"><img class="w-100 rounded" src="/assets/img/detail/46rms.png" alt="" data-zanim-xs='{"animation":"zoom-out","delay":0.1}' data-zanim-trigger="scroll" /></div>
	            <div class="col-sm-8 col-lg-4 mt-5 mt-lg-0 pl-lg-3 pl-xl-4">
	              <div class="overflow-hidden">
	                <h4 class="mb-3" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">걱정없는 사후관리</h4>
		            <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	              </div>
	              <div class="overflow-hidden">
	                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll">
	                  이 냉동기가 언제 시공 되었는지<br/>
		              어떤 고장 이력이 있는지<br/>
		              어떻게 수리 되었는지<br/>
		              모든 이력을 똑똑하게 기억합니다.
	                </p>
	              </div>
	            </div>
	          </div>
	        </div>
	      </section>
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      
	
	 <section class="py-0 inner" id="default-cta-1">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay rounded" style="" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>

	          </div>
	          <div class="row justify-content-center text-center py-7">
	            <div class="col-lg-9 px-4">
	            
	            
	        <div class="col-12 mb-5 mb-md-7 text-center">
              <h2 class="fs-3 fs-sm-4"><span style="font-size:2rem;text-decoration:underline;text-underline-position:under;">이렇게 바뀔꺼에요</span></h2>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/memory.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>모든정보 기억</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					시스템 도입 시 모든 정보는 RMS에 기억 됩니다. 
					</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/constructiona.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>수리정보 기록</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					점검 또는 고장으로 인한 수리 정보는 RMS에 기록 됩니다.
					</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/database.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>정보유지</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    공무팀이 바뀌어도, 관리자가 바뀌어도, RMS 정보는 바뀌지 않아요.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/warehouse.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>다수관리 용이</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    다수의 냉동기가 있을수록 관리의 효과는 커집니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/all_inbox.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>쿨리닉 케어</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    병원에서 우리의 병력을 기록하고 관리하듯 냉동기의 모든 이력을 기록하고 보관합니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	     
	
	    <!--===============================================-->
	    <!--    Modal for language selection-->
	    <!--===============================================-->
	    <!-- Modal-->
	    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
	        <div class="modal-content bg-black">
	          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
	            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
	              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
	              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
	            </ul>
	          </div>
	        </div>
	      </div>
	    </div>

            <footer class="page-footer">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/rms-s.jpg);background-position: 0 37%; transform: scale(1.1);">
              </div>
              <!--/.bg-holder-->

              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
                    </div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/rms-s.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">RMS</h1>
            </div>
          </div>
        </div>
      </div>
      
      
      <div class="page position-absolute t-0 w-100" id="smartADS">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-5 pt-lg-0">
          
          	  <!-- 스마트제상 ADS  -->
		     <!-- <section> begin ============================-->
	      <section class="py-0">
	        <div class="container-fluid">
	          <div class="row h-full border-bottom border-300">
	            <div class="col-lg-6 px-0 order-lg-2" data-zanim-lg='{"animation":"slide-left","delay":0.4}' data-zanim-trigger="scroll">
	              <div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/ads.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-6 bg-white py-7 py-md-10">
	              <div class="row align-items-center justify-content-center h-100">
	                <div class="col-lg-10 text-black text-center text-lg-left" data-zanim-timeline="{}" data-zanim-trigger="scroll">
	                  <div class="overflow-hidden">
	                    <h4 class="text-uppercase font-weight-normal ls text-white bg-dark p-1 rounded d-inline-block" data-zanim-xs='{"delay":0.1}'>THE &nbsp;COOLINIC</h4>
	                  </div>
	                  <div class="overflow-hidden">
			  <h1 class="display-3 fs-5" data-zanim-xs='{"delay":0.2}' style="padding-top:5px;">
	                <span style="font-size:3.3rem;">직접 보는</span><br /><span class="font-weight-light" style="font-size:3.3rem;">스마트 ADS</span></h1>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
		   <section class="bg-white py-6 py-md-8 inner" id="default-why-us">
		        <div class="container">
		          <div class="row align-items-center justify-content-center">
		            <div class="col-12 mb-2 mb-lg-5 text-center">
		              <h2><span style="font-size:2rem;">하루에 6번 따뜻한 콜드룸</span></h2>
		            </div>
		          </div>
		          <div class="row align-items-center justify-content-center">
		           
		            <div class="col-sm-8 col-lg-4 mt-4 mt-lg-0 px-lg-4"><img class="w-100 rounded" src="/assets/img/detail/46andper.png" alt="" data-zanim-xs='{"animation":"zoom-out","delay":0.1}' data-zanim-trigger="scroll" /></div>
		            <div class="col-sm-8 col-lg-4 mt-5 mt-lg-0 pl-lg-3 pl-xl-4">
		              <div class="overflow-hidden">
		                <h3 class="mb-3" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">콜드룸 증발기는요</h3>
			            <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
		              </div>
		              <div class="overflow-hidden">
		                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll">
		                하루 평균 4 ~ 6번정도의 횟수로 혹여 생겼을지 
		                모를 증발기의 상(얼음)을 제거하는 작업(제상 작업)을 합니다.
		                <br/><br/>
						대부분 히터를 이용해서 제상 작업 하고, 콜드룸의 온도를 상승 시키며,
						온도상승은 보관 제품의 품질을 떨어트립니다.
						<br/><br/>
						<b>상의 유무를 정확히 확인하여 제상 작업을 수행할 수 있다면, 온도 편차는 최소화 하고 품질은 상승합니다.</b>
		                </p>
		              </div>
		            </div>
		          </div>
		        </div>
		      </section>
	
	
	      <section class="border-top border-300" id="default-process">
	        <div class="container">
	          <div class="row justify-content-center text-center mb-6">
	            <div class="col-lg-6" style="margin-top: 7rem;">
	              <h2 class="fs-3 fs-sm-4 mb-3" style="font-size:2rem;">직접 보고<br/>판단하는 ADS</h2>
	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/adsdt-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>모자랄바엔 과하게, 최악보다는 차악</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    수증기는 차가운 증발기에 얼어붙어 상이 됩니다.
						<br/><br/>
	                    <h4>과함 & 차악</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						증발기의 상은 치명적이라 상의 누적을 막기 위한 제상 작업은 
						모자랄바엔 과하게 수행하는 것이 일반적입니다.
						<br/><br/>
						과도한 제상 작업으로 전기에너지를 낭비하는 편이, 
						상의 누적으로 인해 발생하는 고장보다는 더 낫다. 라는 이야기 입니다.
						<br/><br/>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						<h4>상의 유무를 정확히 확인하여 제상 작업을 수행할 수 있다면 이야기는 달라집니다.</h4>
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/adsdt-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-11">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>직접 보는게 가장 정확합니다</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    이런 이야기를 합니다.<br/>
						직접 보기 전까지는 아무것도 믿지말라고.<br/><br/>
						무언가를 판단하는 일의 가장 정확한 기준은 직접 보는 것이 아닐까요.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/adsdt-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>ADS는 이러한 일들을 합니다</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    <br/>
	                    <h4>첫째. </h4>
						<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						상의 유무를 카메라를 통해 직접 봅니다.
						<br/><br/>
						<h4>둘째. </h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						모니터링을 통해 상의 유무를 확인하고 제상 시점을 인공지능이 판단합니다.
						<br/><br/>
						<h4>셋째. </h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						제상이 꼭 필요할때 작업을 수행하고, 상이 제거되면 중지시킵니다.
						<br/><br/>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						<h4>ADS는 이러한 작업들로 상의 유무를 정확히 확인하여 제상 작업을 수행하고, 70% 이상의 
						에너지와 전기요금을 절감과 콜드룸의 온도편차를 최소화 합니다.</h4>
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/adsdt-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-11">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>ADS 도입</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    ADS는 신규로 콜드룸을 설치하는 경우에도,
						기존에 사용중인 콜드룸에도 도입이 가능합니다.<br/> <br/> 
						ADS는 ▲ADS 뷰어(카메라) ▲관리솔루션 ▲원격제어 컨트롤러로 구성 됩니다.
	                    </a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/adsdt-05.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">05</span>
	                    <h3>ADS 도입 절차</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    <br/>
	                    <h4>1. 신청</h4>
						<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						ADS 도입요청 버튼을 눌러 내용을 기재해 주세요. (1분)
						<br/><br/><br/>
	                    <h4>2. 상담</h4>
						<hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						콜드매니저가 배정되어 상담이 이루어 집니다. (30분)
						<br/><br/><br/>
						<h4>3. 미팅</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						신규 현장이 아닌경우 현장 답사가 이루어 집니다. (1일)
						<br/><br/><br/>
						<h4>4. 계약</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						견적과 계약이 이루어 집니다. (1주일)
						<br/><br/><br/>
						<h4>5. 설치</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						자격을 득한 전문 시공팀에 의해 시공 됩니다. (1일)
						<br/><br/><br/>
						<h4>6. 완료</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						ADS 제상 시스템이 시작 됩니다. (제상시작)
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </section>
	     
	      <section class="py-0 inner" id="default-cta-1" style="margin-top:7.5rem;">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay rounded" style="" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	          </div>
	          <div class="row justify-content-center text-center py-7">
	            <div class="col-lg-9 px-4">
	            
	            
	        <div class="col-12 mb-5 mb-md-7 text-center">
              <h2 class="fs-3 fs-sm-4"><span style="font-size:2rem;text-decoration:underline;text-underline-position:under;">이렇게 바뀔꺼에요</span></h2>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/downloading.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>70%이상 절감</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					 제상 에너지는 70% 이상 절감 됩니다.
					</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/thermostat_F.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>온도상승 최소화</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
					온도 상승을 최소화 해서 냉동기 가동률도 줄어들 겁니다.
					</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/moving.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>히터수명 최대</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    제상을 위한 히터의 수명은 늘어날 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/package.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>제품가치 상승</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    보관 제품의 가치는 높아질 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/work_history.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>보관기간 상승</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    제품의 보관 기간은 늘어날 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/fireplace.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>위험성 감소</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    화재의 위험성은 줄어들 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/price_check.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>비용감소</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    관리 비용은 줄어들 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-12 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/downloadin.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body" style="text-align:left;">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>탄소배출량 감소</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    탄소배출량이 줄어들 겁니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      
	
	    <!--===============================================-->
	    <!--    Modal for language selection-->
	    <!--===============================================-->
	    <!-- Modal-->
	    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
	        <div class="modal-content bg-black">
	          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
	            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
	              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
	              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
	            </ul>
	          </div>
	        </div>
	      </div>
	    </div>
		
		           <footer class="page-footer">
		             <div class="bg-holder" style="background-image:url(/assets/img/sidebars/ads-s.jpg);background-position: 0 37%; transform: scale(1.1);">
		             </div>
		             <!--/.bg-holder-->
		
		             <div class="row justify-content-center">
		               <div class="col-lg-10">
		                 <div class="row align-items-center">
		                   
		                   <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
		                    
		                   </div>
		                 </div>
		               </div>
		             </div>
		           </footer>
		         </div>
		         
		         
		         <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
		           <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
		             <div class="bg-holder" style="background-image:url(/assets/img/sidebars/ads-s.jpg);">
		             </div>
		             <!--/.bg-holder-->
		
		             <h1 class="page-title">ADS</h1>
		           </div>
		         </div>
		       </div>
		     </div>
      
      
      
      <div class="page position-absolute t-0 w-100" id="integSolution">
        <div class="row no-gutters minh-100vh">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-5 pt-lg-0">


          	  <!-- 통합관리솔루션 -->
		      <!-- <section> begin ============================-->
	      <section class="py-0">
	        <div class="container-fluid">
	          <div class="row h-full border-bottom border-300">
	            <div class="col-lg-6 px-0 order-lg-2" data-zanim-lg='{"animation":"slide-left","delay":0.4}' data-zanim-trigger="scroll">
	              <div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/header-3.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/header-2.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/header-12.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-6 bg-white py-7 py-md-8">
	              <div class="row align-items-center justify-content-center h-100">
	                <div class="col-lg-10 text-black text-center text-lg-left" data-zanim-timeline="{}" data-zanim-trigger="scroll">
	                  <div class="overflow-hidden">
	                    <h4 class="text-uppercase font-weight-normal ls text-white bg-dark p-1 rounded d-inline-block" data-zanim-xs='{"delay":0.1}'>renovating &nbsp;together</h4>
	                  </div>
	                  <div class="overflow-hidden">
	                    <h1 class="display-3 fs-5 fs-sm-6" data-zanim-xs='{"delay":0.2}'><span class="text-underline">sparrow</span><br /><span class="font-weight-light">creative</span></h1>
	                  </div>
	                  <div class="overflow-hidden">
	                    <p class="text-900 fs-0 mt-3 mt-md-5" data-zanim-xs='{"delay":0.3}'>Creating marvelous user experience<br />for your brand, seamlessly.</p>
	                  </div>
	                  <div class="overflow-hidden">
	                    <div class="d-lg-flex align-items-center font-weight-bold ls mt-3 mt-md-5 text-uppercase" data-zanim-xs='{"delay":0.4}'>
	                      <h6 class="mb-lg-0">Follow Us:</h6>
	                      <div class="overflow-hidden"><a class="mr-1 d-inline-block" href="#"><span class="fab fa-facebook text-dark mr-2 ml-3 fs-0"></span></a><a class="mr-1 d-inline-block" href="#"><span class="fab fa-twitter text-dark mr-2 fs-0"></span></a><a class="mr-1 d-inline-block" href="#"><span class="fab fa-google-plus-g text-dark fs-0"></span></a></div>
	                    </div>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="bg-white py-6 py-md-8 inner" id="default-why-us">
	        <div class="container">
	          <div class="row align-items-center justify-content-center">
	            <div class="col-12 mb-2 mb-lg-5 text-center">
	              <h2 class="fs-3 fs-sm-4"><span class="text-underline">why sparrow?</span></h2>
	            </div>
	          </div>
	          <div class="row align-items-center justify-content-center">
	            <div class="col-sm-8 col-lg-4 text-lg-right mt-5 mt-lg-0 pr-lg-3 pr-xl-4">
	              <div class="overflow-hidden">
	                <p class="font-italic lead" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">A robust set of layouts, built-in elements, colors, typography, and css helpers &mdash; rigorously tested and optimized, gives you the perfect starting point for landing pages<br class="d-none d-xl-block" />and stylish business websites.</p>
	              </div>
	            </div>
	            <div class="col-sm-8 col-lg-4 mt-4 mt-lg-0 px-lg-4"><img class="w-100 rounded" src="/assets/img/detail/creative.jpg" alt="" data-zanim-xs='{"animation":"zoom-out","delay":0.1}' data-zanim-trigger="scroll" /></div>
	            <div class="col-sm-8 col-lg-4 mt-5 mt-lg-0 pl-lg-3 pl-xl-4">
	              <div class="overflow-hidden">
	                <h4 class="mb-3" data-zanim-xs='{"delay":0.2}' data-zanim-trigger="scroll">bootstrap 4 + much more</h4>
	              </div>
	              <div class="overflow-hidden">
	                <p data-zanim-xs='{"delay":0.3}' data-zanim-trigger="scroll">Full coverage of Bootstrap's core components plus a suite of additional time-saving elements makes sparrow highly customizable in a powerful but simple way.</p>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	 <section class="py-0 inner" id="default-cta-1">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay rounded" style="background-image:url(/assets/img/detail/headers/header-16.jpg);" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	            <!--/.bg-holder-->
	          </div>
	          <div class="row justify-content-center text-center py-7">
	            <div class="col-lg-9 px-4">
	              <h3 class="fs-2 fs-sm-3 text-white">have a website to build?</h3>
	              <p class="lead font-italic text-400 px-lg-7">Sparrow is always ready to have your project done</p><a class="btn btn-outline-light mt-4 btn-sm border-2x" href="#">Purchase Sparrow</a>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	            <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section id="default-services">
        <div class="container">
          <div class="row justify-content-center inner" style="padding-bottom: 7.5rem;">
            <div class="col-12 mb-5 mb-md-7 text-center" style="margin-top: 7rem;">
              <h2 class="fs-3 fs-sm-4"><span class="text-underline">powerful inside.</span></h2>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/bootstrap.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>bootstrap 4.x</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Build responsive, mobile-first projects on the web with the world's most popular front-end component library.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-target.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>responsive CSS helper classes</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Toggle styles on any element, across any breakpoint according to Bootstrap grid system, using Sparrow's CSS helper classes.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/favorites-button.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>32 sets of elements</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Elegantly redesigned popular plugins including touch sliders, typed text, parallax, video background and more.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-line-chart.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>buttery smooth animation</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Crazy fast, responsive, efficient and freakishly robust GSAP; giving you the new standard for HTML5 and javascript animation.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4 mb-lg-0">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/multi-purpose.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>modular &amp; multipurpose</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Create rich UI and style with sparrow's array of ready-made modular sections - carefully designed for wide range of purposes.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/icon-coding.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>familiar markup</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>Based on the Bootstrap 4 code base, sparrow's code is instantly familiar, easy to understand and a straightforward to extend.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="border-top border-300" id="default-process">
	        <div class="container">
	          <div class="row justify-content-center text-center mb-6">
	            <div class="col-lg-6" style="margin-top: 7rem;">
	              <h2 class="fs-3 fs-sm-4 text-underline mb-3">our process</h2>
	              <p class="text-500 font-italic">Our process is a flexible framework that adapts, evolves and responds to your needs. It is the streamlined result of two decades of website design and marketing for hundreds of clients.</p>
	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7" style="padding-bottom: 7.5rem;">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>plan</h3>
	                    <p>We set priorities, organize content, and understand the buyer’s journey that your audience takes as they navigate your website. At the end of strategy, you will have a Blueprint for your website project, a comprehensive strategic plan for your website design, content, and functionality.</p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>design</h3>
	                    <p>Once the Blueprint is approved, we create wireframes and a design comp for your review. This process involves various reviews, approvals, and close communication between you and our creative team. We begin with the Homepage to set style, image and branding standards, then move toward interior layouts.</p><a class="btn btn-outline-dark btn-sm mt-3" href="#">View Methods</a>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/process-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>develop</h3>
	                    <p>With the blueprint &amp; design comps as our guide, the development team begins to create your website with the state of the earth tools. Our entire team works to add content, final design elements, review, &amp; test your website for quality.</p>
	                  </div>
	                </div>
	              </div>
	              <div class="row overflow-hidden pb-1">
	                <div class="col-lg-6 border-lg-right border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/process-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>deploy</h3>
	                    <p>After testing and review, we present your new website. Upon your approval, your website will be launched, promoted and optimized for search engines such as Google &amp; Bing.</p><a class="btn btn-outline-dark btn-sm mt-3" href="page-portfolio.html">See portfolio</a>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="text-center inner" id="default-progressbar" style="padding-top:7.5rem;padding-bottom:7.5rem;">
	        <div class="container">
	          <div class="row justify-content-center">
	            <div class="col-md-6">
	              <h2 class="fs-3 fs-sm-4 text-underline mb-3">performance?</h2>
	              <p class="text-500 font-italic">Be surprised seeing the final outcome of your creation with sparrow and want more, no matter the task.</p>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="overflow-hidden py-0" id="default-cta-2">
	        <div class="container">
	          <div class="position-absolute overflow-hidden a-0">
	            <div class="bg-holder overlay overlay-2 rounded" style="background-image:url(/assets/img/detail/headers/header-47.jpg);" data-zanim-trigger="scroll" data-zanim-lg='{"animation":"zoom-out","delay":0}'></div>
	            <!--/.bg-holder-->
	          </div>
	          <div class="row align-items-center justify-content-center text-center py-8">
	            <div class="col-lg">
	              <h1 class="mb-0 text-white">2 million</h1>
	              <h6 class="text-300 fs-0">happy customers &amp; counting</h6><a class="btn btn-outline-light btn-sm mt-4 border-2x" href="#">read user stories</a>
	            </div>
	            <div class="col-lg-7 px-lg-8 mt-6 mt-lg-0">
	              <div class="owl-carousel owl-theme owl-nav-outer" data-options='{"dots":false,"nav":true,"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true}'>
	                <div class="item">
	                  <h4 class="text-serif font-weight-light text-white font-italic fs-1 fs-sm-2 mb-4">"Sparrow ensures that I sleep like a little baby every single night"</h4>
	                  <h6 class="fs-0 mb-0 text-white font-weight-black">Mane Dumas</h6>
	                  <h6 class="fs-0 mb-0 font-weight-normal text-400">web designer</h6>
	                </div>
	                <div class="item">
	                  <h4 class="text-serif font-weight-light text-white font-italic fs-1 fs-sm-2 mb-4">"With no writing of any CSS code &mdash; customize almost everything"</h4>
	                  <h6 class="fs-0 mb-0 text-white font-weight-black">Jane Dumas</h6>
	                  <h6 class="fs-0 mb-0 font-weight-normal text-400">developer</h6>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section id="default-cta-3">
	        <div class="container">
	          <div class="row justify-content-center text-center">
	            <div class="col-lg-8">
	              <h2>start your career with us</h2>
	              <p class="px-lg-6 px-md-5">Join the highly talented group of artists, engineers, and imagineers.</p><a class="btn btn-outline-dark rounded-capsule mt-4" href="#">See Openings</a>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	    
	
	    <!--===============================================-->
	    <!--    Modal for language selection-->
	    <!--===============================================-->
	    <!-- Modal-->
	    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
	        <div class="modal-content bg-black">
	          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
	            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
	              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
	              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
	            </ul>
	          </div>
	        </div>
	      </div>
	    </div>

            <footer class="page-footer">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/starter.jpg);background-position: 0 25%; transform: scale(1.1);">
              </div>
              <!--/.bg-holder-->

              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                    <div class="col-lg-6 text-lg-right mt-2 mt-lg-0">
                    </div>
                  </div>
                </div>
              </div>
            </footer>
          </div>
          
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/starter.jpg);">
              </div>
              <!--/.bg-holder-->

              <h1 class="page-title">Starter</h1>
            </div>
          </div>
        </div>
      </div>

      <!-- Docs  -->    
     <div class="page position-absolute t-0 w-100" id="locationAS">
        <div class="row no-gutters minh-100vh ">
          <div class="col-lg-9 order-1 order-lg-0 page-content pt-5 pt-lg-0">

			  <!-- 문의하기  -->
		      <!-- <section> begin ============================-->
	      <section class="py-0">
	        <div class="container-fluid">
	          <div class="row h-full border-bottom border-300">
	            <div class="col-lg-6 px-0 order-lg-2" data-zanim-lg='{"animation":"slide-left","delay":0.4}' data-zanim-trigger="scroll">
	              <div class="owl-carousel owl-theme owl-dots-inner owl-theme-white h-100" data-options='{"items":1,"autoplay":true,"loop":true,"autoplayHoverPause":true,"animateOut":"fadeOut","nav":true}' data-zanim-lg='{"animation":"zoom-out","delay":0}' data-zanim-trigger="scroll">
	                <div class="min-vh-lg-100 py-9">
	                  <div class="bg-holder" style="background-image:url(/assets/img/detail/headers/golden-header.jpg);"></div>
	                  <!--/.bg-holder-->
	                </div>
	              </div>
	            </div>
	            <div class="col-lg-6 bg-white py-7 py-md-10">
	              <div class="row align-items-center justify-content-center h-100">
	                <div class="col-lg-10 text-black text-center text-lg-left" data-zanim-timeline="{}" data-zanim-trigger="scroll">
	                  <div class="overflow-hidden">
	                    <h4 class="text-uppercase font-weight-normal ls text-white bg-dark p-1 rounded d-inline-block" data-zanim-xs='{"delay":0.1}'>THE &nbsp;COOLINIC</h4>
	                  </div>
	                  <div class="overflow-hidden">
	                    <h1 class="display-3 fs-5" data-zanim-xs='{"delay":0.2}'><span style="font-size:3.3rem;">제대로 된</span><br /><span class="font-weight-light" style="font-size:3.3rem;">A/S 시스템</span></h1>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div><!-- end of .container-->
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->
	
	
	
	     

	
      <!-- <section> begin ============================-->
      <section id="default-services">
        <div class="container">
          <div class="row justify-content-center inner" style="padding-bottom: 7.5rem;">
            <div class="col-12 mb-5 mb-md-7 text-center" style="margin-top: 7rem;">
              <h2 class="fs-3 fs-sm-4" style="font-size:2rem;"><span>우리가 아니어도 괜찮아요<br/>
					하지만 제대로 된 A/S 시스템은 필요합니다</span></h2>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/warehouse.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>언제나 불안한 콜드룸</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    어째서 수천만원 , 수억원의 가치를 보관하는 콜드룸입니다. 
					10년을 훌쩍 사용하는 콜드룸은 왜, 안심하고 사용할 수 없을까요.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/person_search.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>50년간 똑같은 A/S 방식</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    왜 매번 수리 업체를 찾아 전화를 반복해야 할까요. 
					고장은 반복되는데 이 불편함은 왜, 바뀌지 않을까요.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/sentiment_dissatisfied.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>막연한 기다림</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    온도는 올라가는데 기다리라는 말은 야속합니다.<br/> 
					언제까지 막연히 기다려야 할까요.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"><img class="media-img mr-3 mr-sm-4 consize-img" src="/assets/img/detail/icons/settings_suggest_black.svg" alt="" data-zanim-xs='{"delay":0.2,"animation":"slide-right"}' /></div>
                <div class="media-body">
                  <div class="overflow-hidden">
                    <h4 class="mb-2" data-zanim-xs='{"delay":0.1,"animation":"slide-right"}'>시스템이 필요합니다</h4>
                  </div>
                  <div class="overflow-hidden">
                    <p data-zanim-xs='{"delay":0.2,"animation":"slide-right"}'>
                    우리는 모바일로 목마름을 채우는 시대에 살고 있습니다.  
					제대로 된 AS 시스템이 필요합니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-5 pr-lg-4 mb-4">
              <div class="media" data-zanim-timeline="{}" data-zanim-trigger="scroll">
                <div class="overflow-hidden consize"></div>
                <div class="media-body">
                </div>
              </div>
            </div>
            
          </div>
        </div><!-- end of .container-->
      </section><!-- <section> close ============================-->
      <!-- ============================================-->
	
	
	
	      <!-- ============================================-->
	      <!-- <section> begin ============================-->
	      <section class="border-top border-300" id="default-process">
	        <div class="container">
	           <div class="row justify-content-center text-center mb-6">
	            <div class="col-lg-6" style="margin-top: 7rem;">
	              <h2 class="fs-3 fs-sm-4 mb-3" style="font-size:2rem;">이런 부분들이 다릅니다</h2>
	              <hr class="hr-short mt-5 border-300" />
	            </div>
	          </div>
	          <div class="row inner">
	            <div class="col-12 pl-lg-7">
	              <div class="row align-items-end">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/asdt-01.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 pb-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">01</span>
	                    <h3>상품의 가치를 지키는 A/S 로켓 매칭</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    고장으로 인해 보관 제품이 상하는 일은 상상하고 싶지 않습니다.
	                    <br/><br/>
	                    <h4>쿨리닉의 A/S 시스템</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						쿨리닉의 A/S 시스템은 요청 즉시 고객과 가까운 전문가를 연결합니다.<br><br>
						반경 50키로 내의 전문가(파트너)를 모바일 APP으로 호출합니다.<br><br>
						긴급의 건과, 일정 조율 건으로 나누어 지며 긴급은 통상 2시간 이내,
						평균 도착시간은 1시간 29분이며 일정 조율의 건은 통상 익일, 또는 조율이 가능합니다. 
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/asdt-02.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 mt-4 mt-lg-0 mb-8 mb-lg-0 my-lg-8">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">02</span>
	                    <h3>약은 약사에게, 14가지의 전문분야 파트너</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    내과와 외과가 다르듯 전문분야는 명확합니다.<br/><br/>
						분야가 다르면 미숙할 수 밖에 없습니다.<br/><br/>
						파트너는 14가지의 전문분야로 나뉩니다. <br/><br/>
						콜드룸, 냉각기, 공조기 등 전문분야에 맞는 엔지니어만을 호출합니다.<br/><br/>
						아는척하지 않는 진짜 전문 분야의 쿨리닉 파트너 입니다.
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/asdt-03.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">03</span>
	                    <h3>흔들리지 않는 기준, 수리 단가표 CPL</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    기준 없이 즉흥적으로 책정되는 수리비용은 없습니다.
	                    <br/><br/>
	                    <h4>수리 단가표 CPL(Coolinic Price List)</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						CPL에 따라서 비용을 책정하고 2만여개의 부품과 수리 유형, 공임으로 수리 비용이 산정되어 있습니다.
						<br/><br/>
						모든 수리비용은 CPL을 기준으로 청구되며, 카드결제 등 모든 결제 방식을 지원합니다.<br/><br/>
						환경의 악조건, 위험성, 요구사항 등에 의해 증액 or 대량 수리로 인한 할인 등이 있을 수 있습니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 border-lg-right border-lg-bottom border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/asdt-04.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8" style="margin-bottom: 7.5rem !important;">
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">04</span>
	                    <h3>쿨리닉이 고객을 보호하는 방법</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    수리에 관한 보고서는 본사 기술팀에서 모니터링 됩니다. 
	                    <br/><br/>
	                    수리절차와 과정, 수리결과에 대한 모범이 되는 파트너는 대표파트너로 상향 됩니다.
	                    <br/><br/> 
	                    하지만 보고서 불량, 오수리, 과잉수리, 과잉청구 등으로 판단되는 파트너는 
	                    조정 위원회를 통해 3회의 누적 경고 이후 파트너 자격이 박탈됩니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row">
	                <div class="col-lg-6 order-lg-2 text-center align-self-center"><img class="img-fluid" src="/assets/img/detail/illustration/asdt-05.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 border-lg-left border-lg-bottom border-300 py-lg-8 mt-4 mt-lg-0 mb-8 mb-lg-0">
	                  <div class="process-item ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">05</span>
	                    <h3>콜드매니저</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    쿨리닉의 내 콜드매니저는 콜드룸 시공 감리, 전담기업 유지보수, 난이도 높은 고장 수리, 파트너의 지원요청 등 의 일을 합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	              <div class="row" style="margin-bottom:7.5rem;">
	                <div class="col-lg-6 border-lg-right border-300 text-center py-lg-8"><img class="img-fluid" src="/assets/img/detail/illustration/asdta-06.svg" alt="" width="400" /></div>
	                <div class="col-lg-6 align-self-center mt-4 mt-lg-0 mt-lg-8" >
	                  <div class="process-item process-item-last ml-6 ml-sm-8 ml-lg-6"><span class="process-item-number">06</span>
	                    <h3>파트너, 어떻게 함께할 수 있나요?</h3>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    <p>
	                    <h4>첫째. 증빙서류 제출</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
	                    사업자 등록증과 기술력을 증빙할 수 있는 서류들과 함께 
	                    냉동 공조 전문가는 쿨리닉 파트너로 승인 요청을 합니다.
	                    <br/><br/>
	                    <h4>둘째. 전문분야 등록</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						전문분야와 자격증 유무, 지역, 활동 시간 등 절차를 거쳐 파트너 승인 요청을 합니다.
						<br/><br/>
	                    <h4>셋째. 승인 후 파트너 활동</h4>
	                    <hr class="hr-short mt-3 border-300" style="margin-left: 0;width:3.4rem;"/>
						14가지로 분류되어 있고, 활동이 가능한 시간 등 조금은 까다로운 가입 절차를 거쳐
						승인팀의 승인 후 파트너 활동이 가능합니다.
	                    </p>
	                  </div>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </section><!-- <section> close ============================-->
	      <!-- ============================================-->

	    <!--===============================================-->
	    <!--    Modal for language selection-->
	    <!--===============================================-->
	    <!-- Modal-->
	    <div class="modal fade fade-in" id="languageModal" tabindex="-1" role="dialog" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-centered modal-xs mx-auto" role="document">
	        <div class="modal-content bg-black">
	          <div class="modal-body text-center p-0"><button class="close text-white position-absolute t-0 r-0 times-icon mt-2 mr-2 p-2" type="button" data-dismiss="modal" aria-label="Close"></button>
	            <ul class="list-unstyled pl-0 my-0 py-4 text-sans-serif">
	              <li><a class="text-white font-weight-bold pt-1 d-block" href="home-default.html">English</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Français</a></li>
	              <li><a class="text-500 pt-1 d-block" href="page-rtl.html">عربى</a></li>
	              <li><a class="pt-1 d-block text-500" href="#">Deutsche</a></li>
	            </ul>
	          </div>
	        </div>
	      </div>
	    </div>

            <footer class="page-footer" style="z-index:9998;">
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/golden-s.jpg);background-position: 0 19%; transform: scale(1.1);"></div>
              <div class="row justify-content-center">
                <div class="col-lg-10">
                  <div class="row align-items-center">
                  </div>
                </div>
              </div>
            </footer>
          </div>
          <div class="col-lg-3 col-12 t-0 order-0 order-lg-1 position-absolute position-lg-relative">
            <div class="h-lg-100vh sticky-top py-4 sticky-area"><span class="btn-close"><img class="d-none d-lg-block times" src="/assets/img/times.svg" width="25" alt=""/><img class="d-lg-none" src="/assets/img/times-black.svg" width="18" alt=""/></span>
              <div class="bg-holder" style="background-image:url(/assets/img/sidebars/golden-s.jpg);">
              </div>
              <h1 class="page-title">A/S</h1>
            </div>
          </div>
        </div>
      </div>
      
      <div id="loading" style="margin-left: 0px;">
	    <img src="/assets/img/lodding.gif">
	    <p style="color:#fff;">견적서 산출 중 입니다.<br/>잠시만 기다려주세요.</p>
	  </div>
    </main>
    
    <script>
   	 	$('#loading').hide();
    </script>
    
    <script src="/assets/js/bootstrap.js"></script>
	<script src="/assets/js/detail/jquery.min.js"></script>
    <script src="/assets/js/plugins.js"></script>
    <script src="/assets/lib/loaders.css/loaders.css.js?ver=1"></script>
    <script src="/assets/js/stickyfill.min.js"></script>
    <script src="/assets/lib/detail/is_js/is.min.js"></script>
    <script src="/assets/lib/jtap/jquery.tap.js"></script>
    <script src="/assets/js/detail/rellax.min.js"></script>
    <script src="/assets/lib/fancybox/jquery.fancybox.min.js"></script>
    <script src="/assets/lib/owl.carousel/owl.carousel.js"></script>
    <script src="/assets/lib/lightbox2/js/lightbox.min.js?ver=1"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.6.15/browser-polyfill.min.js"></script>
    <script src="/assets/js/detail/progressbar.min.js"></script>
    <script src="/assets/js/detail/comm_detail.js"></script>
    <script src="/assets/js/detail/mainest.js"></script>
    <script src="/assets/js/theme.js"></script>
	<script src="/assets/js/main/slides.min.js?ver=1"></script>
	<script src="/assets/js/slides.js?ver=1"></script>
	<script src="/assets/js/main/swiper.min.js?ver=1"></script>
  </body>
  <iframe name='blankifr' style='display:none;'></iframe>

</html>
