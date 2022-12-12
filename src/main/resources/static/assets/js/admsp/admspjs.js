  /* 테이블 마우스 터치 좌우 스크롤하기 */
  const slider = document.querySelector('.itemss');
  let isMouseDown = false;
  let startX, scrollLeft;

  slider.addEventListener('mousedown', (e) => {
    isMouseDown = true;
    slider.classList.add('active');

    startX = e.pageX - slider.offsetLeft;
    scrollLeft = slider.scrollLeft;
  });
  
  slider.addEventListener('mouseleave', () => {
    isMouseDown = false;
    slider.classList.remove('active');
  });
  
  slider.addEventListener('mouseup', () => {
    isMouseDown = false;
    slider.classList.remove('active');
  });

  slider.addEventListener('mousemove', (e) => {
    if (!isMouseDown) return;

    e.preventDefault();
    const x = e.pageX - slider.offsetLeft;
    const walk = (x - startX) * 1;
    slider.scrollLeft = scrollLeft - walk;
  });
	
     /* CDU */
	 var cduChecker;
     var pntid_val;
     var cduCntChecker;
     var cduUnitPirce_val;
     var cdu_val;
     
     /* COOLER  */
 	var coolerChecker;
    var coolerCntChecker;
    var coolerUnitPirce_val;
    var cooler_val;
    
    /* Controll */
    var controllChecker;
    var controllCntChecker;
    var controllUnitPirce_val;
    var controll_val;
    
    /* EX Vavle */
    var exvalveChecker;
    var exvalveCntChecker;
    var exvalveUnitPirce_val;
    var exvalve_val;
    
    /* ELEC Vavle */
    var elecvalveChecker;
    var elecvalveCntChecker;
    var elecvalveUnitPirce_val;
    var elecvalve_val;
    
    /* Opassis Vavle */
    var opassisChecker;
    var opassisCntChecker;
    var opassisUnitPirce_val;
    var opassis_val;
    
    /* Mandays Vavle */
    var mandayChecker;
    var mandayCntChecker;
    var mandayUnitPirce_val;
    var manday_val;
     
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
    	var cdu_cntChecker = "#"+cduCntChecker+" option:selected";
    	var cdu_pid = $("#cduSelect"+cnt+' option:selected').val();
    	cdu_val = $("#cduSelect"+cnt+' option:selected').text();
    	var cdu_ctn = $(cdu_cntChecker).val();
    	var param = {"pid":cdu_pid, "cdu_ctn":cdu_ctn};
       	 $.ajax({
       			anyne:true,
       			type:'POST',
       			contentType: 'application/json',
       			
       			data: JSON.stringify(param),
       			url:"/admsp/cduAjax",
       			
       			dataType: "text",
       			success : function(data) {
       				if(cdu_ctn == "undefined" || cdu_ctn == null || cdu_ctn == ""){
       					cdu_ctn = 1;
       				}else {
       					
       				}
       				$("#"+cduUnitPriceId).val(data*cdu_ctn);  
       			},
       			error: function(jqXHR, textStatus, errorThrown) {
       				alert("오류가 발생했습니다.");
       			}
       		});
    }
    
    function allcduBtnFn(btnId, cnt) {
    	/* id값 가져오기 */
		var cdu_checker = "#"+cduChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var cduUnitPrice_temp = $("#cduUnitPrice"+cnt).attr("id");
		
		/* 실제 값 가져오기 */
		var cduUnitPrice_val = $("#"+cduUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(cduUnitPrice_val == 0 || cduUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "cdu":cdu_val, "cdu_unit_price":cduUnitPrice_val};
	      	 $.ajax({
	      			anyne:true,
	      			type:'POST',
	      			contentType: 'application/json',
	      			
	      			data: JSON.stringify(params),
	      			url:"/admsp/cduAllAjax",
	      			
	      			dataType: "text",
	      			success : function(data) {
	      				alert("변경이 완료되었습니다.");
	      			},
	      			error: function(jqXHR, textStatus, errorThrown) {
	      				alert("Error.");
	      			}
	      		});
		}
    }
    
    /* COOLER */
    function checkerCOOLERSelectFn(clicked,pntids){
   	 coolerChecker = clicked;
   	 pntid_val = pntids;
    }
    
    function checkerCOOLERCntSelectFn(clicked){
   	 coolerCntChecker = clicked;
    }
    
   /* COOLER Btn Onclick Eventer */ 
   function coolerBtnFn(cnt){
    	coolerUnitPriceId = $("#coolerUnitPrice"+cnt).attr("id");
	   	var cooler_cntChecker = "#"+coolerCntChecker+" option:selected";
    	var pid = $("#coolerSelect"+cnt+' option:selected').val();
    	cooler_val = $("#coolerSelect"+cnt+' option:selected').text();
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
      				alert("오류가 발생했습니다.");
      			}
      		});
   }
   
   function allcoolerBtnFn(btnId, cnt) {
   	/* id값 가져오기 */
		var cooler_checker = "#"+coolerChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var coolerUnitPrice_temp = $("#coolerUnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var coolerUnitPrice_val = $("#"+coolerUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(cooler_val == 0 || coolerUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
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
   }
   
   
   /* Controll */
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
	   	var controll_cntChecker = "#"+controllCntChecker+" option:selected";
	   	var pid = $("#controllSelect"+cnt+' option:selected').val();
	   	controll_val = $("#controllSelect"+cnt+' option:selected').text();
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
     				alert("오류가 발생했습니다.");
     			}
     		});
  }
  
  function allcontrollBtnFn(btnId, cnt) {
  	/* id값 가져오기 */
		var controll_checker = "#"+controllChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var controllUnitPrice_temp = $("#controllUnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var controllUnitPrice_val = $("#"+controllUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(controll_val == 0 || controllUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
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
  }
  
  
  /* EX Vavle */
  function checkerEXVALVESelectFn(clicked,pntids){
 	 exvalveChecker = clicked;
 	 pntid_val = pntids;
  }
  
  function checkerEXVALVECntSelectFn(clicked){
 	 exvalveCntChecker = clicked;
  }
  
  
 /* EXVAVLE Btn Onclick Eventer */ 
 function exvalveBtnFn(cnt){
	 exvalveUnitPriceId = $("#exvalveUnitPrice"+cnt).attr("id");
	   	var exvalve_cntChecker = "#"+exvalveCntChecker+" option:selected";
	   	var pid = $("#exvalveSelect"+cnt+' option:selected').val();
	   	exvalve_val = $("#exvalveSelect"+cnt+' option:selected').text();
	   	var exvalve_ctn = $(exvalve_cntChecker).val();
	   	var param = {"pid":pid, "exvalve_ctn":exvalve_ctn};
    	 $.ajax({
    			anyne:true,
    			type:'POST',
    			contentType: 'application/json',
    			
    			data: JSON.stringify(param),
    			url:"/admsp/exvalveAjax",
    			
    			dataType: "text",
    			success : function(data) {
    				if(exvalve_ctn == "undefined" || exvalve_ctn == null || exvalve_ctn == ""){
    					exvalve_ctn = 1;
    				}else {
    					
    				}
    				$("#"+exvalveUnitPriceId).val(data*exvalve_ctn);  
    			},
    			error: function(jqXHR, textStatus, errorThrown) {
    				alert("오류가 발생했습니다.");
    			}
    		});
 }
 
 function allexvalveBtnFn(btnId, cnt) {
 	/* id값 가져오기 */
		var exvalve_checker = "#"+exvalveChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var exvalveUnitPrice_temp = $("#exvalveUnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var exvalveUnitPrice_val = $("#"+exvalveUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(exvalve_val == 0 || exvalveUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "exvalve":exvalve_val, "exvalve_unit_price":exvalveUnitPrice_val};
		   	 $.ajax({
		   			anyne:true,
		   			type:'POST',
		   			contentType: 'application/json',
		   			
		   			data: JSON.stringify(params),
		   			url:"/admsp/exvalveAllAjax",
		   			
		   			dataType: "text",
		   			success : function(data) {
		   				alert("변경이 완료되었습니다.");
		   			},
		   			error: function(jqXHR, textStatus, errorThrown) {
		   				alert("Error.");
		   			}
		   		});
		}
 }
 
 
 /* ELEC Vavle */
 function checkerELECVALVESelectFn(clicked,pntids){
	 elecvalveChecker = clicked;
	 pntid_val = pntids;
 }
 
 function checkerELECVALVECntSelectFn(clicked){
	 elecvalveCntChecker = clicked;
 }
 
 
/* ELEC VAVLE Btn Onclick Eventer */ 
function elecvalveBtnFn(cnt){
		elecvalveUnitPriceId = $("#elecvalveUnitPrice"+cnt).attr("id");
	   	var elecvalve_cntChecker = "#"+elecvalveCntChecker+" option:selected";
	   	var elecvalve_ctn = $(elecvalve_cntChecker).val();
	   	var pid = $("#elecvalveSelect"+cnt+' option:selected').val();
	   	elecvalve_val = $("#elecvalveSelect"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "elecvalve_ctn":elecvalve_ctn};
   	 $.ajax({
   			anyne:true,
   			type:'POST',
   			contentType: 'application/json',
   			
   			data: JSON.stringify(param),
   			url:"/admsp/elecvalveAjax",
   			
   			dataType: "text",
   			success : function(data) {
   				if(elecvalve_ctn == "undefined" || elecvalve_ctn == null || elecvalve_ctn == ""){
   					elecvalve_ctn = 1;
   				}else {
   					
   				}
   				$("#"+elecvalveUnitPriceId).val(data*elecvalve_ctn);  
   			},
   			error: function(jqXHR, textStatus, errorThrown) {
   				alert("오류가 발생했습니다.");
   			}
   		});
}

function allelecvalveBtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var elecvalve_checker = "#"+elecvalveChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var elecvalveUnitPrice_temp = $("#elecvalveUnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var elecvalveUnitPrice_val = $("#"+elecvalveUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(elecvalve_val == 0 || elecvalveUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "elecvalve":elecvalve_val, "elecvalve_unit_price":elecvalveUnitPrice_val};
		  	$.ajax({
		  			anyne:true,
		  			type:'POST',
		  			contentType: 'application/json',
		  			
		  			data: JSON.stringify(params),
		  			url:"/admsp/elecvalveAllAjax",
		  			
		  			dataType: "text",
		  			success : function(data) {
		  				alert("변경이 완료되었습니다.");
		  			},
		  			error: function(jqXHR, textStatus, errorThrown) {
		  				alert("Error.");
		  			}
	  		});
		}
}

/* Opassis Vavle */
function checkerOPASSISSelectFn(clicked,pntids){
	opassisChecker = clicked;
	 pntid_val = pntids;
}

function checkerOPASSISCntSelectFn(clicked){
	 opassisCntChecker = clicked;
}


/* OPASSIS1 Btn Onclick Eventer */ 
function opassis1BtnFn(cnt){
		opassisUnitPriceId = $("#opassis1UnitPrice"+cnt).attr("id");
	   	var opassis_cntChecker = "#"+opassisCntChecker+" option:selected";
	   	var opassis_ctn = $(opassis_cntChecker).val();
	   	var pid = $("#opassis1Select"+cnt+' option:selected').val();
	   	opassis_val = $("#opassis1Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "opassis_ctn":opassis_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/opassis1Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(opassis_ctn == "undefined" || opassis_ctn == null || opassis_ctn == ""){
  					opassis_ctn = 1;
  				}else {
  					
  				}
  				$("#"+opassisUnitPriceId).val(data*opassis_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allopassis1BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var opassis_checker = "#"+opassisChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var opassisUnitPrice_temp = $("#opassis1UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var opassisUnitPrice_val = $("#"+opassisUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(opassis_val == 0 || opassisUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "opassis1":opassis_val, "opassis1_unit_price":opassisUnitPrice_val};
		 	$.ajax({
		 			anyne:true,
		 			type:'POST',
		 			contentType: 'application/json',
		 			
		 			data: JSON.stringify(params),
		 			url:"/admsp/opassis1AllAjax",
		 			
		 			dataType: "text",
		 			success : function(data) {
		 				alert("변경이 완료되었습니다.");
		 			},
		 			error: function(jqXHR, textStatus, errorThrown) {
		 				alert("Error.");
		 			}
		 	});
		}
}

/* OPASSIS2 Btn Onclick Eventer */ 
function opassis2BtnFn(cnt){
		opassisUnitPriceId = $("#opassis2UnitPrice"+cnt).attr("id");
	   	var opassis_cntChecker = "#"+opassisCntChecker+" option:selected";
	   	var opassis_ctn = $(opassis_cntChecker).val();
	   	var pid = $("#opassis2Select"+cnt+' option:selected').val();
	   	opassis_val = $("#opassis2Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "opassis_ctn":opassis_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/opassis2Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(opassis_ctn == "undefined" || opassis_ctn == null || opassis_ctn == ""){
  					opassis_ctn = 1;
  				}else {
  					
  				}
  				$("#"+opassisUnitPriceId).val(data*opassis_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allopassis2BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var opassis_checker = "#"+opassisChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var opassisUnitPrice_temp = $("#opassis2UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var opassisUnitPrice_val = $("#"+opassisUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(opassis_val == 0 || opassisUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "opassis2":opassis_val, "opassis2_unit_price":opassisUnitPrice_val};
		 	$.ajax({
		 			anyne:true,
		 			type:'POST',
		 			contentType: 'application/json',
		 			
		 			data: JSON.stringify(params),
		 			url:"/admsp/opassis2AllAjax",
		 			
		 			dataType: "text",
		 			success : function(data) {
		 				alert("변경이 완료되었습니다.");
		 			},
		 			error: function(jqXHR, textStatus, errorThrown) {
		 				alert("Error.");
		 			}
			});
		}
}

/* OPASSIS3 Btn Onclick Eventer */ 
function opassis3BtnFn(cnt){
		opassisUnitPriceId = $("#opassis3UnitPrice"+cnt).attr("id");
	   	var opassis_cntChecker = "#"+opassisCntChecker+" option:selected";
	   	var opassis_ctn = $(opassis_cntChecker).val();
	   	var pid = $("#opassis3Select"+cnt+' option:selected').val();
	   	opassis_val = $("#opassis3Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "opassis_ctn":opassis_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/opassis3Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(opassis_ctn == "undefined" || opassis_ctn == null || opassis_ctn == ""){
  					opassis_ctn = 1;
  				}else {
  					
  				}
  				$("#"+opassisUnitPriceId).val(data*opassis_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allopassis3BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var opassis_checker = "#"+opassisChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var opassisUnitPrice_temp = $("#opassis3UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var opassisUnitPrice_val = $("#"+opassisUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();

		if(opassis_val == 0 || opassisUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "opassis3":opassis_val, "opassis3_unit_price":opassisUnitPrice_val};
	 	 	$.ajax({
	 			anyne:true,
	 			type:'POST',
	 			contentType: 'application/json',
	 			
	 			data: JSON.stringify(params),
	 			url:"/admsp/opassis3AllAjax",
	 			
	 			dataType: "text",
	 			success : function(data) {
	 				alert("변경이 완료되었습니다.");
	 			},
	 			error: function(jqXHR, textStatus, errorThrown) {
	 				alert("Error.");
	 			}
	 		});
		}
}

/* OPASSIS4 Btn Onclick Eventer */ 
function opassis4BtnFn(cnt){
		opassisUnitPriceId = $("#opassis4UnitPrice"+cnt).attr("id");
	   	var opassis_cntChecker = "#"+opassisCntChecker+" option:selected";
	   	var opassis_ctn = $(opassis_cntChecker).val();
	   	var pid = $("#opassis4Select"+cnt+' option:selected').val();
	   	opassis_val = $("#opassis4Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "opassis_ctn":opassis_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/opassis4Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(opassis_ctn == "undefined" || opassis_ctn == null || opassis_ctn == ""){
  					opassis_ctn = 1;
  				}else {
  					
  				}
  				$("#"+opassisUnitPriceId).val(data*opassis_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allopassis4BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var opassis_checker = "#"+opassisChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var opassisUnitPrice_temp = $("#opassis4UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var opassisUnitPrice_val = $("#"+opassisUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(opassis_val == 0 || opassisUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "opassis4":opassis_val, "opassis4_unit_price":opassisUnitPrice_val};
	 	 	$.ajax({
	 			anyne:true,
	 			type:'POST',
	 			contentType: 'application/json',
	 			
	 			data: JSON.stringify(params),
	 			url:"/admsp/opassis4AllAjax",
	 			
	 			dataType: "text",
	 			success : function(data) {
	 				alert("변경이 완료되었습니다.");
	 			},
	 			error: function(jqXHR, textStatus, errorThrown) {
	 				alert("Error.");
	 			}
	 		});
		}
}

/* OPASSIS5 Btn Onclick Eventer */ 
function opassis5BtnFn(cnt){
		opassisUnitPriceId = $("#opassis5UnitPrice"+cnt).attr("id");
	   	var opassis_cntChecker = "#"+opassisCntChecker+" option:selected";
	   	var opassis_ctn = $(opassis_cntChecker).val();
	   	var pid = $("#opassis5Select"+cnt+' option:selected').val();
	   	opassis_val = $("#opassis5Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "opassis_ctn":opassis_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/opassis5Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(opassis_ctn == "undefined" || opassis_ctn == null || opassis_ctn == ""){
  					opassis_ctn = 1;
  				}else {
  					
  				}
  				$("#"+opassisUnitPriceId).val(data*opassis_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allopassis5BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var opassis_checker = "#"+opassisChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var opassisUnitPrice_temp = $("#opassis5UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var opassisUnitPrice_val = $("#"+opassisUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(opassis_val == 0 || opassisUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "opassis5":opassis_val, "opassis5_unit_price":opassisUnitPrice_val};
	 	 	$.ajax({
	 			anyne:true,
	 			type:'POST',
	 			contentType: 'application/json',
	 			
	 			data: JSON.stringify(params),
	 			url:"/admsp/opassis5AllAjax",
	 			
	 			dataType: "text",
	 			success : function(data) {
	 				alert("변경이 완료되었습니다.");
	 			},
	 			error: function(jqXHR, textStatus, errorThrown) {
	 				alert("Error.");
	 			}
	 		});
		}
}

/* OPASSIS6 Btn Onclick Eventer */ 
function opassis6BtnFn(cnt){
		opassisUnitPriceId = $("#opassis6UnitPrice"+cnt).attr("id");
	   	var opassis_cntChecker = "#"+opassisCntChecker+" option:selected";
	   	var opassis_ctn = $(opassis_cntChecker).val();
	   	var pid = $("#opassis6Select"+cnt+' option:selected').val();
	   	opassis_val = $("#opassis6Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "opassis_ctn":opassis_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/opassis6Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(opassis_ctn == "undefined" || opassis_ctn == null || opassis_ctn == ""){
  					opassis_ctn = 1;
  				}else {
  					
  				}
  				$("#"+opassisUnitPriceId).val(data*opassis_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allopassis6BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var opassis_checker = "#"+opassisChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var opassisUnitPrice_temp = $("#opassis6UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var opassisUnitPrice_val = $("#"+opassisUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(opassis_val == 0 || opassisUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "opassis6":opassis_val, "opassis6_unit_price":opassisUnitPrice_val};
	 		$.ajax({
	 			anyne:true,
	 			type:'POST',
	 			contentType: 'application/json',
	 			
	 			data: JSON.stringify(params),
	 			url:"/admsp/opassis6AllAjax",
	 			
	 			dataType: "text",
	 			success : function(data) {
	 				alert("변경이 완료되었습니다.");
	 			},
	 			error: function(jqXHR, textStatus, errorThrown) {
	 				alert("Error.");
	 			}
	 		});
		}
}

/* OPASSIS7 Btn Onclick Eventer */ 
function opassis7BtnFn(cnt){
		opassisUnitPriceId = $("#opassis7UnitPrice"+cnt).attr("id");
	   	var opassis_cntChecker = "#"+opassisCntChecker+" option:selected";
	   	var opassis_ctn = $(opassis_cntChecker).val();
	   	var pid = $("#opassis7Select"+cnt+' option:selected').val();
	   	opassis_val = $("#opassis7Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "opassis_ctn":opassis_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/opassis7Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(opassis_ctn == "undefined" || opassis_ctn == null || opassis_ctn == ""){
  					opassis_ctn = 1;
  				}else {
  					
  				}
  				$("#"+opassisUnitPriceId).val(data*opassis_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allopassis7BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var opassis_checker = "#"+opassisChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var opassisUnitPrice_temp = $("#opassis7UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var opassisUnitPrice_val = $("#"+opassisUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(opassis_val == 0 || opassisUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "opassis7":opassis_val, "opassis7_unit_price":opassisUnitPrice_val};
	 	 	$.ajax({
	 			anyne:true,
	 			type:'POST',
	 			contentType: 'application/json',
	 			
	 			data: JSON.stringify(params),
	 			url:"/admsp/opassis7AllAjax",
	 			
	 			dataType: "text",
	 			success : function(data) {
	 				alert("변경이 완료되었습니다.");
	 			},
	 			error: function(jqXHR, textStatus, errorThrown) {
	 				alert("Error.");
	 			}
	 		});
		}
}

/* OPASSIS8 Btn Onclick Eventer */ 
function opassis8BtnFn(cnt){
		opassisUnitPriceId = $("#opassis8UnitPrice"+cnt).attr("id");
	   	var opassis_cntChecker = "#"+opassisCntChecker+" option:selected";
	   	var opassis_ctn = $(opassis_cntChecker).val();
	   	var pid = $("#opassis8Select"+cnt+' option:selected').val();
	   	opassis_val = $("#opassis8Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "opassis_ctn":opassis_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/opassis8Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(opassis_ctn == "undefined" || opassis_ctn == null || opassis_ctn == ""){
  					opassis_ctn = 1;
  				}else {
  					
  				}
  				$("#"+opassisUnitPriceId).val(data*opassis_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allopassis8BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var opassis_checker = "#"+opassisChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var opassisUnitPrice_temp = $("#opassis8UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var opassisUnitPrice_val = $("#"+opassisUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(opassis_val == 0 || opassisUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "opassis8":opassis_val, "opassis8_unit_price":opassisUnitPrice_val};
	 	 	$.ajax({
	 			anyne:true,
	 			type:'POST',
	 			contentType: 'application/json',
	 			
	 			data: JSON.stringify(params),
	 			url:"/admsp/opassis8AllAjax",
	 			
	 			dataType: "text",
	 			success : function(data) {
	 				alert("변경이 완료되었습니다.");
	 			},
	 			error: function(jqXHR, textStatus, errorThrown) {
	 				alert("Error.");
	 			}
	 		});
		}
}

/* OPASSIS9 Btn Onclick Eventer */ 
function opassis9BtnFn(cnt){
		opassisUnitPriceId = $("#opassis9UnitPrice"+cnt).attr("id");
	   	var opassis_cntChecker = "#"+opassisCntChecker+" option:selected";
	   	var opassis_ctn = $(opassis_cntChecker).val();
	   	var pid = $("#opassis9Select"+cnt+' option:selected').val();
	   	opassis_val = $("#opassis9Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "opassis_ctn":opassis_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/opassis9Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(opassis_ctn == "undefined" || opassis_ctn == null || opassis_ctn == ""){
  					opassis_ctn = 1;
  				}else {
  					
  				}
  				$("#"+opassisUnitPriceId).val(data*opassis_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allopassis9BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var opassis_checker = "#"+opassisChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var opassisUnitPrice_temp = $("#opassis9UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var opassisUnitPrice_val = $("#"+opassisUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(opassis_val == 0 || opassisUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "opassis9":opassis_val, "opassis9_unit_price":opassisUnitPrice_val};
	 	 	$.ajax({
	 			anyne:true,
	 			type:'POST',
	 			contentType: 'application/json',
	 			
	 			data: JSON.stringify(params),
	 			url:"/admsp/opassis9AllAjax",
	 			
	 			dataType: "text",
	 			success : function(data) {
	 				alert("변경이 완료되었습니다.");
	 			},
	 			error: function(jqXHR, textStatus, errorThrown) {
	 				alert("Error.");
	 			}
	 		});
		}
}

/* OPASSIS10 Btn Onclick Eventer */ 
function opassis10BtnFn(cnt){
		opassisUnitPriceId = $("#opassis10UnitPrice"+cnt).attr("id");
	   	var opassis_cntChecker = "#"+opassisCntChecker+" option:selected";
	   	var opassis_ctn = $(opassis_cntChecker).val();
	   	var pid = $("#opassis10Select"+cnt+' option:selected').val();
	   	opassis_val = $("#opassis10Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "opassis_ctn":opassis_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/opassis10Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(opassis_ctn == "undefined" || opassis_ctn == null || opassis_ctn == ""){
  					opassis_ctn = 1;
  				}else {
  					
  				}
  				$("#"+opassisUnitPriceId).val(data*opassis_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allopassis10BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var opassis_checker = "#"+opassisChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var opassisUnitPrice_temp = $("#opassis10UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var opassisUnitPrice_val = $("#"+opassisUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(opassis_val == 0 || opassisUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "opassis10":opassis_val, "opassis10_unit_price":opassisUnitPrice_val};
	 	 	$.ajax({
	 			anyne:true,
	 			type:'POST',
	 			contentType: 'application/json',
	 			
	 			data: JSON.stringify(params),
	 			url:"/admsp/opassis10AllAjax",
	 			
	 			dataType: "text",
	 			success : function(data) {
	 				alert("변경이 완료되었습니다.");
	 			},
	 			error: function(jqXHR, textStatus, errorThrown) {
	 				alert("Error.");
	 			}
	 		});
		}
}

/* MANDAY Vavle */
function checkerMANDAYSelectFn(clicked,pntids){
	 mandayChecker = clicked;
	 pntid_val = pntids;
}

function checkerMANDAYCntSelectFn(clicked){
	 mandayCntChecker = clicked;
}


/* MANDAY1 Btn Onclick Eventer */ 
function manday1BtnFn(cnt){
		mandayUnitPriceId = $("#manday1UnitPrice"+cnt).attr("id");
	   	var manday_cntChecker = "#"+mandayCntChecker+" option:selected";
	   	var manday_ctn = $(manday_cntChecker).val();
	   	var pid = $("#manday1Select"+cnt+' option:selected').val();
	   	manday_val = $("#manday1Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "manday_ctn":manday_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/manday1Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(manday_ctn == "undefined" || manday_ctn == null || manday_ctn == ""){
  					manday_ctn = 1;
  				}else {
  					
  				}
  				$("#"+mandayUnitPriceId).val(data*manday_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allmanday1BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var manday_checker = "#"+mandayChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var mandayUnitPrice_temp = $("#manday1UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var mandayUnitPrice_val = $("#"+mandayUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(manday_val == 0 || mandayUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "manday1":manday_val, "manday1_unit_price":mandayUnitPrice_val};
		 	$.ajax({
		 			anyne:true,
		 			type:'POST',
		 			contentType: 'application/json',
		 			
		 			data: JSON.stringify(params),
		 			url:"/admsp/manday1AllAjax",
		 			
		 			dataType: "text",
		 			success : function(data) {
		 				alert("변경이 완료되었습니다.");
		 			},
		 			error: function(jqXHR, textStatus, errorThrown) {
		 				alert("Error.");
		 			}
		 	});
		}
}


/* MANDAY2 Btn Onclick Eventer */ 
function manday2BtnFn(cnt){
		mandayUnitPriceId = $("#manday2UnitPrice"+cnt).attr("id");
	   	var manday_cntChecker = "#"+mandayCntChecker+" option:selected";
	   	var manday_ctn = $(manday_cntChecker).val();
	   	var pid = $("#manday2Select"+cnt+' option:selected').val();
	   	manday_val = $("#manday2Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "manday_ctn":manday_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/manday2Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(manday_ctn == "undefined" || manday_ctn == null || manday_ctn == ""){
  					manday_ctn = 1;
  				}else {
  					
  				}
  				$("#"+mandayUnitPriceId).val(data*manday_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allmanday2BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var manday_checker = "#"+mandayChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var mandayUnitPrice_temp = $("#manday2UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var mandayUnitPrice_val = $("#"+mandayUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(manday_val == 0 || mandayUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "manday2":manday_val, "manday2_unit_price":mandayUnitPrice_val};
		 	$.ajax({
		 			anyne:true,
		 			type:'POST',
		 			contentType: 'application/json',
		 			
		 			data: JSON.stringify(params),
		 			url:"/admsp/manday2AllAjax",
		 			
		 			dataType: "text",
		 			success : function(data) {
		 				alert("변경이 완료되었습니다.");
		 			},
		 			error: function(jqXHR, textStatus, errorThrown) {
		 				alert("Error.");
		 			}
		 	});
		}
}

/* MANDAY3 Btn Onclick Eventer */ 
function manday3BtnFn(cnt){
		mandayUnitPriceId = $("#manday3UnitPrice"+cnt).attr("id");
	   	var manday_cntChecker = "#"+mandayCntChecker+" option:selected";
	   	var manday_ctn = $(manday_cntChecker).val();
	   	var pid = $("#manday3Select"+cnt+' option:selected').val();
	   	manday_val = $("#manday3Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "manday_ctn":manday_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/manday3Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(manday_ctn == "undefined" || manday_ctn == null || manday_ctn == ""){
  					manday_ctn = 1;
  				}else {
  					
  				}
  				$("#"+mandayUnitPriceId).val(data*manday_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allmanday3BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var manday_checker = "#"+mandayChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var mandayUnitPrice_temp = $("#manday3UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var mandayUnitPrice_val = $("#"+mandayUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(manday_val == 0 || mandayUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "manday3":manday_val, "manday3_unit_price":mandayUnitPrice_val};
		 	$.ajax({
		 			anyne:true,
		 			type:'POST',
		 			contentType: 'application/json',
		 			
		 			data: JSON.stringify(params),
		 			url:"/admsp/manday3AllAjax",
		 			
		 			dataType: "text",
		 			success : function(data) {
		 				alert("변경이 완료되었습니다.");
		 			},
		 			error: function(jqXHR, textStatus, errorThrown) {
		 				alert("Error.");
		 			}
		 	});
		}
}

/* MANDAY4 Btn Onclick Eventer */ 
function manday4BtnFn(cnt){
		mandayUnitPriceId = $("#manday4UnitPrice"+cnt).attr("id");
	   	var manday_cntChecker = "#"+mandayCntChecker+" option:selected";
	   	var manday_ctn = $(manday_cntChecker).val();
	   	var pid = $("#manday4Select"+cnt+' option:selected').val();
	   	manday_val = $("#manday4Select"+cnt+' option:selected').text();
	   	var param = {"pid":pid, "manday_ctn":manday_ctn};
  	 $.ajax({
  			anyne:true,
  			type:'POST',
  			contentType: 'application/json',
  			
  			data: JSON.stringify(param),
  			url:"/admsp/manday4Ajax",
  			
  			dataType: "text",
  			success : function(data) {
  				if(manday_ctn == "undefined" || manday_ctn == null || manday_ctn == ""){
  					manday_ctn = 1;
  				}else {
  					
  				}
  				$("#"+mandayUnitPriceId).val(data*manday_ctn);  
  			},
  			error: function(jqXHR, textStatus, errorThrown) {
  				alert("오류가 발생했습니다.");
  			}
  		});
}


function allmanday4BtnFn(btnId, cnt) {
	/* id값 가져오기 */
		var manday_checker = "#"+mandayChecker+" option:selected";
		var base_pntid_val_temp = $("#base_pntid"+cnt).attr("id");
		var base_py_val_temp = $("#base_py"+cnt).attr("id");
		var base_type_val_temp = $("#base_type"+cnt).attr("id");
		var mandayUnitPrice_temp = $("#manday4UnitPrice"+cnt).attr("id");
		/* 실제 값 가져오기 */
		var mandayUnitPrice_val = $("#"+mandayUnitPrice_temp).val();
		var base_pntid_val = $("#"+base_pntid_val_temp).val();
		var base_py_val = $("#"+base_py_val_temp).val();
		var base_type_val = $("#"+base_type_val_temp).val();
		
		if(manday_val == 0 || mandayUnitPrice_val == "0"){
			alert(base_py_val + "평/" + base_type_val + "의 금액을 확인 후 적용을 눌러주세요.");
		}else {
			/* 아래 Ajax로 보낼 params객체는 Entity 변수명이랑 "Key"의 이름이 같아야 한다. */
			var params = {"pntid":base_pntid_val, "returns_py":base_py_val, "temper_type":base_type_val, "manday4":manday_val, "manday4_unit_price":mandayUnitPrice_val};
		 	$.ajax({
		 			anyne:true,
		 			type:'POST',
		 			contentType: 'application/json',
		 			
		 			data: JSON.stringify(params),
		 			url:"/admsp/manday4AllAjax",
		 			
		 			dataType: "text",
		 			success : function(data) {
		 				alert("변경이 완료되었습니다.");
		 			},
		 			error: function(jqXHR, textStatus, errorThrown) {
		 				alert("Error.");
		 			}
		 	});
		}
}