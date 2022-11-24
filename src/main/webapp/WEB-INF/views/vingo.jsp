<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
	    <meta name="description" content="">
	    <meta name="author" content="">
		<title>VINGO 총 예상비용 계산기</title>
		<link href="/assets/css/calc/commons.css" rel="stylesheet" type="text/css">
		<link href="/assets/css/calc/est.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="wrapsv">
			<header id="headersv" class="row_flex">
    			<h1 id="logo"><img src="/assets/img/calc/logo.png" alt="빙고로고이미지"></h1>
    			<h2>총 임대 예상비용 계산기</h2>
  			</header>
			
		  	<section id="sectionsv">
    			<form name="rentalForm" id="rentalForm" method="post" onsubmit="return false;">
    			<input type="hidden" name="estType" id="estType" value="RENTAL">
    			<input type="hidden" name="pSize" id="pSize" value="">
    			<input type="hidden" name="pOption" id="pOption" value="">
    			<input type="hidden" name="pPeriod" id="pPeriod" value="">
    			<input type="hidden" name="pModelYear" id="pModelYear" value="">
    			<input type="hidden" name="pArea" id="pArea" value="">
    			<input type="hidden" name="pQty" id="pQty" value="">
   				<input type="hidden" name="pOptionConcentric220" id="pOptionConcentric220" value="">
    			<input type="hidden" name="pOptionAirCurtain" id="pOptionAirCurtain" value="">
    			<input type="hidden" name="pOptionConcentric380" id="pOptionConcentric380" value="">
    			<input type="hidden" name="pOptionLogo" id="pOptionLogo" value="">
    			
    			<input type="hidden" name="pSizePay" id="pSizePay" value="0">
    			<input type="hidden" name="pOptionPay" id="pOptionPay" value="0">
    			<input type="hidden" name="pOptionConcentric220Pay" id="pOptionConcentric220Pay" value="0">
    			<input type="hidden" name="pOptionAirCurtainPay" id="pOptionAirCurtainPay" value="0">
    			<input type="hidden" name="pOptionConcentric380Pay" id="pOptionConcentric380Pay" value="0">
    			<input type="hidden" name="pOptionLogoPay" id="pOptionLogoPay" value="0">
    			<input type="hidden" name="pPeriodPay" id="pPeriodPay" value="0">
    			<input type="hidden" name="pAreaPay" id="pAreaPay" value="0">
    			<input type="hidden" name="pModelYearPay" id="pModelYearPay" value="0">
    			<input type="hidden" name="pFastPay" id="pFastPay" value="0">
    			<input type="hidden" name="pTotalPay" id="pTotalPay" value="0">
    			<input type="hidden" name="pMonthPay" id="pMonthPay" value="0">
    			
      			<!-- container_content -->
      			<div class="container_content">
        			<div class="row_flex">
          				<!-- product_info -->
          				<div class="product_info">
            				<!-- product_size -->
            				<div class="product_size product_info_item">
              					<h3>컨테이너 사이즈</h3>
              					<p><img src="/assets/img/calc/size_img.png" alt="빙고 컨테이너 이미지"></p>
              					<table id="20ftMasterList">
                					<th class="br_l"></th>
						            <th>내부<span>(m)</span></th>
						            <th>외부<span>(m)</span></th>
						            <th class="br_r">개구부<span>(m)</span></th>
                					<tr>
						               	<td>길이</td>
						               	<td>5.5</td>
						               	<td>6.1</td>
						               	<td>-</td>
						            </tr>
						            <tr>
						            	<td>폭</td>
						                <td>2.3</td>
						                <td>2.4</td>
						                <td>2.4</td>
						            </tr>
						            <tr>
						                <td>높이</td>
						                <td>2.3</td>
						                <td>2.6</td>
						                <td>2.6</td>
						            </tr>
              					</table>
              					<table class="lastes_item" id="20ftDetailList">
						        	<th class="br_l">공급온도<span>(℃)</span></th>
						            <th>중량<span>(톤)</span></th>
						            <th class="br_r">연면적<span>(㎥)</span></th>
						            <tr>
						               	<td>-30 ~ + 30</td>
						               	<td>27</td>
						               	<td>14.7<span>(약 4.5평)</span></td>
						            </tr>
						            <tr>
						               	<td colspan="3">아시아 표준파레트 사이즈 기준<span>(1.1m X 1.1m)</span> 8EA 적재 가능</td>
						            </tr>
              					</table>
              					
              					<table id="40ftMasterList">
                					<th class="br_l"></th>
						            <th>내부<span>(m)</span></th>
						            <th>외부<span>(m)</span></th>
						            <th class="br_r">개구부<span>(m)</span></th>
                					<tr>
						               	<td>길이</td>
						               	<td>11.6</td>
						               	<td>12.2</td>
						               	<td>-</td>
						            </tr>
						            <tr>
						            	<td>폭</td>
						                <td>2.3</td>
						                <td>2.4</td>
						                <td>2.3</td>
						            </tr>
						            <tr>
						                <td>높이</td>
						                <td>2.5</td>
						                <td>2.9</td>
						                <td>2.6</td>
						            </tr>
              					</table>
              					<table class="lastes_item" id="40ftDetailList">
						        	<th class="br_l">공급온도<span>(℃)</span></th>
						            <th>중량<span>(톤)</span></th>
						            <th class="br_r">연면적<span>(㎥)</span></th>
						            <tr>
						               	<td>-30 ~ + 30</td>
						               	<td>30</td>
						               	<td>26.2<span>(약 9평)</span></td>
						            </tr>
						            <tr>
						               	<td colspan="3">아시아 표준파레트 사이즈 기준<span>(1.1m X 1.1m)</span> 8EA 적재 가능</td>
						            </tr>
              					</table>
            				</div>
            				<!-- product_size end -->

            				<!-- option -->
            				<div class="option product_info_item">
              					<h3>추가옵션</h3>
              					<p class="column_flex">
                					<img src="/assets/img/calc/option01.png" alt="1200x1800사이드도어 부착 컨테이너 이미지">
                					<img src="/assets/img/calc/option02.png" alt="1500x1800사이드도어 부착 컨테이너 이미지">
              					</p>
            				</div>
            				<!-- option end -->
          				</div>
          				<!-- product_info end -->

          				<!-- addition -->
          				<div class="addition">
            				<!--cont_box-->
            				<div class="cont_box tab_common_cont">
              					<h3>컨테이너 종류</h3>
              					<div class="item">
                					<input type="radio" name="size" value="20" id="20ft">
                					<label for="20ft" class="row_flex">
                  						<p>VINGO Standard 20ft<br><span class="add_info">(약 4.5평)</span></p>
                  						<p>+ <span>385,000</span></p>
                					</label>
              					</div>
              					<div class="item">
                					<input type="radio" name="size" value="40" id="40ft">
                					<label for="40ft" class="row_flex">
                  						<p>VINGO Standard 40ft<br><span class="add_info">(약 9평)</span></p>
                  						<p>+ <span>495,000</span></p>
                					</label>
              					</div>
            				</div>
            				<!--cont_box end-->

            				<!-- product_size -->
            				<div class="product_size product_info_item product_info_item_mobile">
              					<h3>컨테이너 사이즈</h3>
              					<p><img src="/assets/img/calc/size_img.png" alt="빙고 컨테이너 이미지"></p>
              					<table id="20ftMasterList_M">
                					<th class="br_l"></th>
						            <th>내부<span>(m)</span></th>
						            <th>외부<span>(m)</span></th>
						            <th class="br_r">개구부<span>(m)</span></th>
                					<tr>
						               	<td>길이</td>
						               	<td>5.5</td>
						               	<td>6.1</td>
						               	<td>-</td>
						            </tr>
						            <tr>
						            	<td>폭</td>
						                <td>2.3</td>
						                <td>2.4</td>
						                <td>2.4</td>
						            </tr>
						            <tr>
						                <td>높이</td>
						                <td>2.3</td>
						                <td>2.6</td>
						                <td>2.6</td>
						            </tr>
              					</table>
              					<table class="lastes_item" id="20ftDetailList_M">
						        	<th class="br_l">공급온도<span>(℃)</span></th>
						            <th>중량<span>(톤)</span></th>
						            <th class="br_r">연면적<span>(㎥)</span></th>
						            <tr>
						               	<td>-30 ~ + 30</td>
						               	<td>27</td>
						               	<td>14.7<span>(약 4.5평)</span></td>
						            </tr>
						            <tr>
						               	<td colspan="3">아시아 표준파레트 사이즈 기준<span>(1.1m X 1.1m)</span> 8EA 적재 가능</td>
						            </tr>
              					</table>
              					<table id="40ftMasterList_M">
                					<th class="br_l"></th>
						            <th>내부<span>(m)</span></th>
						            <th>외부<span>(m)</span></th>
						            <th class="br_r">개구부<span>(m)</span></th>
                					<tr>
						               	<td>길이</td>
						               	<td>11.6</td>
						               	<td>12.2</td>
						               	<td>-</td>
						            </tr>
						            <tr>
						            	<td>폭</td>
						                <td>2.3</td>
						                <td>2.4</td>
						                <td>2.3</td>
						            </tr>
						            <tr>
						                <td>높이</td>
						                <td>2.5</td>
						                <td>2.9</td>
						                <td>2.6</td>
						            </tr>
              					</table>
              					<table class="lastes_item" id="40ftDetailList_M">
						        	<th class="br_l">공급온도<span>(℃)</span></th>
						            <th>중량<span>(톤)</span></th>
						            <th class="br_r">연면적<span>(㎥)</span></th>
						            <tr>
						               	<td>-30 ~ + 30</td>
						               	<td>30</td>
						               	<td>26.2<span>(약 9평)</span></td>
						            </tr>
						            <tr>
						               	<td colspan="3">아시아 표준파레트 사이즈 기준<span>(1.1m X 1.1m)</span> 16EA 적재 가능</td>
						            </tr>
              					</table>
            				</div>
            				<!-- product_size end -->

            				<!--cont_box-->
            				<div class="cont_box tab_common_cont">
              					<h3>추가옵션</h3>
              					<div class="item">
                					<input type="radio" name="addOption" value="OPTION01" id="option01">
                					<label for="option01" class="row_flex">
                  						<p>선택없음</p>
                  						<p>+ <span id="option01Amt"></span></p>
                					</label>
              					</div>
              					<div class="item" id="sideDoor1">
                					<input type="radio" name="addOption" value="OPTION02" id="option02">
                					<label for="option02" class="row_flex">
                  						<p>사이드도어<br><span class="add_info">(1200 X 1800 개구부 기준 왼쪽면)</span></p>
                  						<p>+ <span id="option02Amt"></span></p>
                					</label>
              					</div>
              					<div class="item" id="sideDoor2">
	                				<input type="radio" name="addOption" value="OPTION03" id="option03">
                					<label for="option03" class="row_flex">
                  						<p>사이드도어<br><span class="add_info">(1200 X 1800 개구부 기준 오른쪽면)</span></p>
                  						<p>+ <span id="option03Amt"></span></p>
                					</label>
              					</div>
              					<div class="item">
                					<input type="radio" name="addOption" value="OPTION04" id="option04">
                					<label for="option04" class="row_flex">
                  						<p>사이드도어<br><span class="add_info">(1500 X 1800 개구부 기준 왼쪽면)</span></p>
                  						<p>+ <span id="option04Amt"></span></p>
                					</label>
              					</div>
					            <div class="item">
					                <input type="radio" name="addOption" value="OPTION05" id="option05">
					                <label for="option05" class="row_flex">
					                	<p>사이드도어<br><span class="add_info">(1500 X 1800 개구부 기준 오른쪽면)</span></p>
					                  	<p>+ <span id="option05Amt"></span></p>
					                </label>
				                </div>
				              	<div class="item">
				                	<input type="checkbox" name="addOptionMulti" class="cssAddOptionMulti" value="OPTION06" id="option06">
				                	<label for="option06" class="row_flex">
				                  		<p>비닐커튼</p>
				                  		<p>+ <span id="option06Amt"></span></p>
				                	</label>
				              	</div>
            				</div>
            				<!--cont_box end-->

            				<!-- option -->
            				<div class="option product_info_item product_info_item_mobile">
              					<h3>추가옵션</h3>
              					<p class="column_flex">
                					<img src="/assets/img/calc/option01.png" alt="1200x1800사이드도어 부착 컨테이너 이미지">
                					<img src="/assets/img/calc/option02.png" alt="1500x1800사이드도어 부착 컨테이너 이미지">
              					</p>
            				</div>
            				<!-- option end -->

            				<!--cont_box-->
            				<div class="cont_box tab_rental_cont">
              					<h3>임대기간</h3>
              					<div class="item">
                					<input type="radio" name="period" value="1" id="period1m">
                					<label for="period1m" class="row_flex">
                  						<p>1개월<br><span class="add_info">(할인없음)</span></p>
                  						<p><span></span></p>
                					</label>
              					</div>
              					<div class="item">
					            	<input type="radio" name="period" value="3" id="period3m">
					                <label for="period3m" class="row_flex">
					                	<p>3개월<br><span class="add_info">(5% 할인)</span></p>
					                  	<p><span></span></p>
					                </label>
              					</div>
				              	<div class="item">
				                	<input type="radio" name="period" value="6" id="period6m">
				                	<label for="period6m" class="row_flex">
				                  		<p>6개월<br><span class="add_info">(7% 할인)</span></p>
				                  		<p><span></span></p>
				                	</label>
				              </div>
				              <div class="item">
			                  	  <input type="radio" name="period" value="12" id="period12m">
				                  <label for="period12m" class="row_flex">
				                      <p>12개월<br><span class="add_info">(10% 할인)</span></p>
				                      <p><span></span></p>
				                  </label>
				              </div>
              				  <div class="item">
                			      <input type="radio" name="period" value="0" id="period_txt">
                				  <label id="period_txt" for="period_txt" class="row_flex">
                  				      <p>직접입력</p>
                  					  <p><input type="text" name="periodText" id="periodText" value="" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">개월</p>
                  					  <p><span></span></p>
                				  </label>
              				  </div> 
            		      </div>
            			  <!--cont_box end-->

            			  <!--cont_box-->
            			  <div class="cont_box tab_common_cont">
              			      <h3>배송지역 <span class="tab_rental_item">(왕복운송비 + 지게차이용료)</span></h3>
              				  <div class="item">
                			      <input type="radio" name="area" value="SEOUL" id="areaSeoul">
                				  <label for="areaSeoul" class="row_flex">
					                  <p>서울 / 경기 / 인천</p>
					                  <p>+ <span id="areaSeoulAmt"></span></p>
                				  </label>
              			 	  </div>
              				  <div class="item">
                			      <input type="radio" name="area" value="GANGWON" id="areaGangwon">
                				  <label for="areaGangwon" class="row_flex">
					                  <p>강원권</p>
					                  <p>+ <span id="areaGangwonAmt"></span></p>
                				  </label>
              				  </div>
              				  <div class="item">
                			      <input type="radio" name="area" value="CHUNGNAM" id="areaChungnam">
                				  <label for="areaChungnam" class="row_flex">
					                  <p>충남권</p>
					                  <p>+ <span id="areaChungnamAmt"></span></p>
                				  </label>
              				  </div>
              				  <div class="item">
                			      <input type="radio" name="area" value="CHUNGBUK" id="areaChungbuk">
                				  <label for="areaChungbuk" class="row_flex">
					                  <p>충북권</p>
					                  <p>+ <span id="areaChungbukAmt"></span></p>
                				  </label>
              				  </div>
				              <div class="item">
				              	  <input type="radio" name="area" value="JEOLLA" id="areaJeolla">
				                  <label for="areaJeolla" class="row_flex">
				                      <p>전라권</p>
				                      <p>+ <span id="areaJeollaAmt"></span></p>
				                  </label>
				              </div>
              				  <div class="item">
				                  <input type="radio" name="area" value="GYEONGBUK" id="areaGyeongbuk">
				                  <label for="areaGyeongbuk" class="row_flex">
                  				      <p>경북권</p>
                  					  <p>+ <span id="areaGyeongbukAmt"></span></p>
                				  </label>
              				  </div> 
              				  <div class="item">
                			      <input type="radio" name="area" value="GYEONGNAM" id="areaGyeongnam">
                				  <label for="areaGyeongnam" class="row_flex">
                  				      <p>경남권</p>
                  					  <p>+ <span id="areaGyeongnamAmt"></span></p>
                				  </label>
              				  </div> 
				              <div class="item">
				                  <input type="radio" name="area" value="JEJU" id="areaJeju">
				                  <label for="areaJeju" class="row_flex">
				                      <p>제주도</p>
				                      <p>+ <span id="areaJejuAmt"></span></p>
				                  </label>
				              </div> 
            			  </div>
            			  <!--cont_box end-->

            			  <!--cont_box-->
            			  <div class="cont_box tab_common_cont">
              			      <h3>수량선택</h3>
              				  <div class="item row_flex" id="quantity">
                			      <p id="decreaseQuantity"><span></span></p>
                				  <p id="numberUpDown">1</p>
                				  <p id="increaseQuantity"><span></span><span></span></p>
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
    
          		      <!-- detail_price_btn -->
          		  	  <div class="detail_price_btn">
            		      <p>
              			      <span id="detail_price_arr_left" class="detail_price_arr"></span>
              				  <span id="detail_price_arr_right" class="detail_price_arr"></span>
            			  </p>
          		      </div>
          			  <!-- detail_price_btn end -->
    
          			  <!--calculator_box -->
          			  <div class="calculator_box">
            		      <div class="calculator_cont row_flex">
              			      <div class="calculator_cont01">
                				  <div class="calculator_item_box">
                  				      <div class="calculator_item row_flex">
                    				      <p class="breakdown_tit">선금</p>
                    					  <p class="breakdown_price"><span>￦</span><span id="fastPay"></span></p>
                    					  <p class="breakdown_sub">(편도운송료 + 1개월 임대료)</p>
                  					  </div>
                  					  <div class="calculator_item row_flex">
                    				      <p class="breakdown_tit">총액</p>
                    					  <p class="breakdown_price"><span>￦</span><span id="totalPay"></span></p>
                  					  </div>
                				  </div>
                				  <div class="calculator_item row_flex">
                  				      <p class="breakdown_tit">월 납부금액</p>
                  					  <p class="breakdown_price"><span>￦</span><span id="monthPay"></span></p>
                  					  <p class="breakdown_month" id="totalMonth">x 12개월</p>
                				  </div>
              				</div>
              				
              				<!--calculator_cont01-->
              				<div class="calculator_cont02 row_flex">
                				<button type="button" id="btnSave"><a href="#a">견적서 요청</a></button>
              				</div>
              				<!--calculator_cont02-->
            			</div>
            			<!--calculator_cont end-->
    
            			<div class="notice">
              				<p>다음 금액은 부가세를 포함한 금액이며, 설치현장 환경에 따라 추가 비용(크레인, 지게차 등)이 발생할 수 있습니다.</p>
            			</div>
            			<!--notice-->
          			</div>
          			<!--calculator_box-->
        		</div>
      		</footer>
    	</form>
    </section>
	</div>
</body>
<script>
	var ctx = "";
	
	function getOptionAmt(option){
		var ret;
		if(option == "OPTION01") ret = GLOBAL_REN_OPTION01_AMT;
		else if(option == "OPTION02") ret = GLOBAL_REN_OPTION02_AMT;
		else if(option == "OPTION03") ret = GLOBAL_REN_OPTION03_AMT;
		else if(option == "OPTION04") ret = GLOBAL_REN_OPTION04_AMT;
		else if(option == "OPTION05") ret = GLOBAL_REN_OPTION05_AMT;
		else if(option == "OPTION06") ret = GLOBAL_REN_OPTION06_AMT;
		else ret = 0;
		return ret;
	}
	
	function getDeliveryAmt(size, area){
		var ret;
		if(size == "20"){
			if(area == "SEOUL") ret = GLOBAL_SEOUL_20_AMT * 2;
			else if(area == "GANGWON") ret = GLOBAL_GANGWON_20_AMT * 2;
			else if(area == "CHUNGNAM") ret = GLOBAL_CHUNGNAM_20_AMT * 2;
			else if(area == "CHUNGBUK") ret = GLOBAL_CHUNGBUK_20_AMT * 2;
			else if(area == "JEOLLA") ret = GLOBAL_JEOLLA_20_AMT * 2;
			else if(area == "GYEONGBUK") ret = GLOBAL_GYEONGBUK_20_AMT * 2;
			else if(area == "GYEONGNAM") ret = GLOBAL_GYEONGNAM_20_AMT * 2;
			else if(area == "JEJU") ret = GLOBAL_JEJU_20_AMT * 2;
			else ret = 0;	
		}else{
			if(area == "SEOUL") ret = GLOBAL_SEOUL_40_AMT * 2;
			else if(area == "GANGWON") ret = GLOBAL_GANGWON_40_AMT * 2;
			else if(area == "CHUNGNAM") ret = GLOBAL_CHUNGNAM_40_AMT * 2;
			else if(area == "CHUNGBUK") ret = GLOBAL_CHUNGBUK_40_AMT * 2;
			else if(area == "JEOLLA") ret = GLOBAL_JEOLLA_40_AMT * 2;
			else if(area == "GYEONGBUK") ret = GLOBAL_GYEONGBUK_40_AMT * 2;
			else if(area == "GYEONGNAM") ret = GLOBAL_GYEONGNAM_40_AMT * 2;
			else if(area == "JEJU") ret = GLOBAL_JEJU_40_AMT * 2;
			else ret = 0;	
		}
		return ret;
	}
	$(document).ready(function () {
		fn_Load();
	});
	
	$(document).ready(function () {
		
		$("#btnSave").click(function(){
	    	fn_Save();
	    });
		
		/**컨테이너 사이즈 **/
		$('input[name="size"]').change(function() {
			fnSizeSetting($(this).val());
			fn_Init();
			fnCalcHidden();
		});
		
		/**추가옵션 **/
		$('input[name="addOption"]').change(function() {
			fnCalcHidden();
		});
		
		/**추가선택옵션 **/
		$("#option06").click(function(){
			fnCalcHidden();
	    });
		
		/**임대기간 **/
		$('input[name="period"]').change(function() {
			if(this.value != 0){
				$("#periodText").val("");
				fnCalcHidden();				
			}
		});
		
		/**배송지역 **/
		$('input[name="area"]').change(function() {
			fnCalcHidden();
		});
		
		/**수량감소 **/
		$('#decreaseQuantity').click(function(e){
            e.preventDefault();
            var stat = $('#numberUpDown').text();
            var num = parseInt(stat,10);
            num--;
            if(num<=0){
                alert('1개 이상부터 임대/구매가 가능합니다.');
            	num =1;
            }
            $('#numberUpDown').text(num);
            fnCalcHidden();
        });
        
		/**수량증가 **/
		$('#increaseQuantity').click(function(e){
            e.preventDefault();
            var stat = $('#numberUpDown').text();
            var num = parseInt(stat,10);
            num++;
        
            $('#numberUpDown').text(num);
            fnCalcHidden();
        });
		
		$('#periodText').blur(function() {
			if(isNull(this.value) == "" || this.value == 0){
				$("#period1m").click();
			};
			fnCalcHidden();
		});
	});
	
	function fn_Load(){
		var obj = document.getElementsByClassName('cssAddOptionMulti');
	    for (var i = 0; i < obj.length; i++) {
	        obj[i].checked = false;
	    }
	    $(":radio[name='size'][value='20']").attr('checked', true);
        $(":radio[name='addOption'][value='OPTION01']").attr('checked', true);
		$(":radio[name='period'][value='1']").attr('checked', true);
		$("input:radio[name='area']").prop("checked", false); 
		$("#numberUpDown").html(1);
		
		fnSizeSetting("20");
		fnTotalSetting(0, GLOBAL_SIZE_20_AMT, 1, GLOBAL_SIZE_20_AMT);
	}
	
	function fn_Init(){
		var obj = document.getElementsByClassName('cssAddOptionMulti');
	    for (var i = 0; i < obj.length; i++) {
	        obj[i].checked = false;
	    }
	    
		$(":radio[name='size'][value='20']").attr('checked', true);
        $(":radio[name='addOption'][value='OPTION01']").attr('checked', true);
		$(":radio[name='period'][value='1']").attr('checked', true);
		$("input:radio[name='area']").prop("checked", false);
		
		$("#numberUpDown").html(1);
	}
	
	function fnCalcHidden(){
		var size = $('input[name="size"]:checked').val();
		
		/* 사이즈 */
		var sizeVal = 0;
		if(size == 20){
			sizeVal = GLOBAL_SIZE_20_AMT;
		}else if(size == 40){
			sizeVal = GLOBAL_SIZE_40_AMT;
		}else{
			sizeVal = 0;
		}
		
		/* 옵션 */
		var optionVal = getOptionAmt($('input[name="addOption"]:checked').val());
		var option06Val = 0;
		if($('input:checkbox[id="option06"]').is(":checked") == true){
			option06Val = getOptionAmt($('input:checkbox[id="option06"]').val());
		}
		
    	/* 기간 */
		var period = Number($('input[name="period"]:checked').val()) == 0 ? Number($("#periodText").val()) : Number($('input[name="period"]:checked').val());
		
    	var periodVal = 0;
   		if(period > 0 && period < 3){
    		periodVal = (sizeVal + optionVal + option06Val) * period;
    	}else if(period >= 3 && period < 6){
    		periodVal = ((sizeVal + optionVal + option06Val) * 0.95) * period;
    	}else if(period >= 6 && period < 12){
    		periodVal = ((sizeVal + optionVal + option06Val) * 0.93) * period;
    	}else if(period >= 12){
    		periodVal = ((sizeVal + optionVal + option06Val) * 0.9) * period;
    	}else{
    		periodVal = 0;
    	}
   		
   		/* 배송지역 */
   		var areaVal = getDeliveryAmt(size, isNull($('input[name="area"]:checked').val()));
   		
   		/* 수량 */
    	var qty = Number($('#numberUpDown').html());
   		
    	var	_totalPay = (periodVal + areaVal) * qty;
    	var totalPay = Math.floor(_totalPay/10) * 10; //10원단위 절사
    	 
    	fnTotalSetting(areaVal, totalPay, period, periodVal);
    	
    	$("#pSizePay").val(subcomma(sizeVal));
    	$("#pOptionPay").val(subcomma(optionVal));
    	$("#pOptionConcentric220Pay").val(0);
    	$("#pOptionAirCurtainPay").val(subcomma(option06Val));
    	$("#pOptionConcentric380Pay").val(0);
    	$("#pOptionLogoPay").val(0);
		$("#pPeriodPay").val(subcomma(periodVal));
		$("#pAreaPay").val(subcomma(areaVal));
		$("#pModelYearPay").val(0);
	}
	
	function fnSizeSetting(value){
		if(value == "20"){
			$("#20ftMasterList").show();
			$("#20ftDetailList").show();
			$("#40ftMasterList").hide();
			$("#40ftDetailList").hide();
			
			$("#20ftMasterList_M").show();
			$("#20ftDetailList_M").show();
			$("#40ftMasterList_M").hide();
			$("#40ftDetailList_M").hide();
			
			$("#sideDoor1").show();
			$("#sideDoor2").show();
			
			$("#areaSeoulAmt").html(addcomma(GLOBAL_SEOUL_20_AMT) + " x 2");
			$("#areaGangwonAmt").html(addcomma(GLOBAL_GANGWON_20_AMT) + " x 2");
			$("#areaChungnamAmt").html(addcomma(GLOBAL_CHUNGNAM_20_AMT) + " x 2");
			$("#areaChungbukAmt").html(addcomma(GLOBAL_CHUNGBUK_20_AMT) + " x 2");
			$("#areaJeollaAmt").html(addcomma(GLOBAL_JEOLLA_20_AMT) + " x 2");
			$("#areaGyeongbukAmt").html(addcomma(GLOBAL_GYEONGBUK_20_AMT) + " x 2");
			$("#areaGyeongnamAmt").html(addcomma(GLOBAL_GYEONGNAM_20_AMT) + " x 2");
			$("#areaJejuAmt").html(addcomma(GLOBAL_JEJU_20_AMT) + " x 2");
		}else{
			$("#20ftMasterList").hide();
			$("#20ftDetailList").hide();
			$("#40ftMasterList").show();
			$("#40ftDetailList").show();
			
			$("#20ftMasterList_M").hide();
			$("#20ftDetailList_M").hide();
			$("#40ftMasterList_M").show();
			$("#40ftDetailList_M").show();
			
			$("#sideDoor1").hide();
			$("#sideDoor2").hide();
			
			$("#areaSeoulAmt").html(addcomma(GLOBAL_SEOUL_40_AMT) + " x 2");
			$("#areaGangwonAmt").html(addcomma(GLOBAL_GANGWON_40_AMT) + " x 2");
			$("#areaChungnamAmt").html(addcomma(GLOBAL_CHUNGNAM_40_AMT) + " x 2");
			$("#areaChungbukAmt").html(addcomma(GLOBAL_CHUNGBUK_40_AMT) + " x 2");
			$("#areaJeollaAmt").html(addcomma(GLOBAL_JEOLLA_40_AMT) + " x 2");
			$("#areaGyeongbukAmt").html(addcomma(GLOBAL_GYEONGBUK_40_AMT) + " x 2");
			$("#areaGyeongnamAmt").html(addcomma(GLOBAL_GYEONGNAM_40_AMT) + " x 2");
			$("#areaJejuAmt").html(addcomma(GLOBAL_JEJU_40_AMT) + " x 2");
		}
		
		$("#option01Amt").html(addcomma(floorMath(GLOBAL_REN_OPTION01_AMT)));
		$("#option02Amt").html(addcomma(floorMath(GLOBAL_REN_OPTION02_AMT)));
		$("#option03Amt").html(addcomma(floorMath(GLOBAL_REN_OPTION03_AMT)));
		$("#option04Amt").html(addcomma(floorMath(GLOBAL_REN_OPTION04_AMT)));
		$("#option05Amt").html(addcomma(floorMath(GLOBAL_REN_OPTION05_AMT)));
		$("#option06Amt").html(addcomma(floorMath(GLOBAL_REN_OPTION06_AMT)));
	}
	
	function fnTotalSetting(areaVal, totalPay, period, periodVal){
		var qty = Number($('#numberUpDown').html());
		
		if(areaVal == 0){
			$("#fastPay").html(0);
		}else{
			var fastPay = ((areaVal/2)+periodVal/period)*qty;
			$("#fastPay").html(addcomma(floorMath(fastPay)));
		}
		
		$("#totalPay").html(addcomma(floorMath(totalPay)));
		$("#monthPay").html(addcomma(floorMath(periodVal/period*qty)));
		$("#totalMonth").html("x " + period + "개월");
		
		$("#pFastPay").val(subcomma($('#fastPay').html()));
		$("#pTotalPay").val(subcomma($('#totalPay').html()));
		$("#pMonthPay").val(subcomma($('#monthPay').html()));
	}
	
	function fn_Save(){

		var size = $('input[name="size"]:checked').val();
		var option = $('input[name="addOption"]:checked').val();
		var period = $('input[name="period"]:checked').val() == "0" ? $("#periodText").val() : $('input[name="period"]:checked').val();
		var area = $('input[name="area"]:checked').val();
		var qty = $('#numberUpDown').html();
		var optionAirCurtain = "N";
		
		if($('input:checkbox[id="option06"]').is(":checked") == true){
			optionAirCurtain = "Y";
		}
		
		if(area == null || area == ""){
			alert("배송지역을 선택하십시오.");
			return;
		}
		
		$("#pSize").val(size);
		$("#pOption").val(option);
		$("#pPeriod").val(period);
		$("#pModelYear").val("");
		$("#pArea").val(area);
		$("#pQty").val(qty);
		
		$("#pOptionConcentric220").val("");
		$("#pOptionAirCurtain").val(optionAirCurtain);
		$("#pOptionConcentric380").val("");
		$("#pOptionLogo").val("");
		
		document.rentalForm.action = "/estimate/client";
		document.rentalForm.submit();
	}
	
</script>

<!-- 요금표 -->
<script>
	/**컨테이너요금*/
	var GLOBAL_SIZE_20_AMT = 385000;
	var GLOBAL_SIZE_40_AMT = 495000;
		
	/** 임대옵션*/
	var GLOBAL_REN_OPTION01_AMT = 0;     //없음
	var GLOBAL_REN_OPTION02_AMT = 55000; //사이드도어 1200*1800 개구부기준 왼쪽편
	var GLOBAL_REN_OPTION03_AMT = 55000; //사이드도어 1200*1800 개구부기준 오른쪽편
	var GLOBAL_REN_OPTION04_AMT = 88000; //사이드도어 1500*1800 개구부기준 왼쪽편
	var GLOBAL_REN_OPTION05_AMT = 88000; //사이드도어 1500*1800 개구부기준 오른쪽편
	var GLOBAL_REN_OPTION06_AMT = 33000; //비닐커튼
	
	/** 매매옵션*/
	var GLOBAL_SAL_OPTION01_AMT = 0;       //없음
	var GLOBAL_SAL_OPTION02_AMT = 1320000; //사이드도어 1200*1800 개구부기준 왼쪽편
	var GLOBAL_SAL_OPTION03_AMT = 1320000; //사이드도어 1200*1800 개구부기준 오른쪽편
	var GLOBAL_SAL_OPTION04_AMT = 2310000; //사이드도어 1500*1800 개구부기준 왼쪽편
	var GLOBAL_SAL_OPTION05_AMT = 2310000; //사이드도어 1500*1800 개구부기준 오른쪽편
	var GLOBAL_SAL_OPTION06_AMT = 55000;   //220V콘센트
	var GLOBAL_SAL_OPTION07_AMT = 418000;  //비닐커튼
	var GLOBAL_SAL_OPTION08_AMT = 55000;   //3상4선 380V 콘센트 커넥터
	var GLOBAL_SAL_OPTION09_AMT = 110000;  //기업로고
		
	/** 배송료20FT-편도 */
	var GLOBAL_SEOUL_20_AMT = 627000;
	var GLOBAL_GANGWON_20_AMT = 880000;
	var GLOBAL_CHUNGNAM_20_AMT = 649000;
	var GLOBAL_CHUNGBUK_20_AMT = 594000;
	var GLOBAL_JEOLLA_20_AMT = 649000;
	var GLOBAL_GYEONGBUK_20_AMT = 550000;
	var GLOBAL_GYEONGNAM_20_AMT = 407000;
	var GLOBAL_JEJU_20_AMT = 1650000;
		
	/** 배송료40FT-편도 */
	var GLOBAL_SEOUL_40_AMT = 814000;
	var GLOBAL_GANGWON_40_AMT = 1012000;
	var GLOBAL_CHUNGNAM_40_AMT = 748000;
	var GLOBAL_CHUNGBUK_40_AMT = 748000;
	var GLOBAL_JEOLLA_40_AMT = 748000;
	var GLOBAL_GYEONGBUK_40_AMT = 583000;
	var GLOBAL_GYEONGNAM_40_AMT = 429000;
	var GLOBAL_JEJU_40_AMT = 2145000;
		
	/** 년식20FT */
	var GLOBAL_YEAR_20FT_06_AMT = 11550000;    //20피트 - 2006년 이하
	var GLOBAL_YEAR_20FT_0708_AMT = 12650000; //20피트 - 2007년 ~ 2008년
	var GLOBAL_YEAR_20FT_0910_AMT = 13750000; //20피트 - 2009년 ~ 2010년
	var GLOBAL_YEAR_20FT_1112_AMT = 14850000; //20피트 - 2011년 ~ 2012년
	
	/** 년식40FT */
	var GLOBAL_YEAR_40FT_06_AMT = 12650000;   //40피트 - 2006년 이하
	var GLOBAL_YEAR_40FT_0708_AMT = 13750000; //40피트 - 2007년 ~ 2008년
	var GLOBAL_YEAR_40FT_0910_AMT = 14850000; //40피트 - 2009년 ~ 2010년
	var GLOBAL_YEAR_40FT_1112_AMT = 15950000; //40피트 - 2011년 ~ 2012년
	
	/** ECO FT */
	var GLOBAL_ECO_20FT_AMT = 11990000; //20피트 - 에코컨테이너
</script>

</html>
