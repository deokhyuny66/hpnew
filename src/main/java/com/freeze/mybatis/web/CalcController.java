package com.freeze.mybatis.web;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.ui.Model;
import org.json.JSONObject;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.freeze.mybatis.dao.CalcDAO;
import com.freeze.mybatis.services.CalcService;
import com.freeze.mybatis.vo.CalcBaseEntity;
import com.freeze.mybatis.vo.CalcCDUEntity;
import com.freeze.mybatis.vo.CalcControllEntity;
import com.freeze.mybatis.vo.CalcCoolerEntity;
import com.freeze.mybatis.vo.CalcElecvalveEntity;
import com.freeze.mybatis.vo.CalcExvalveEntity;
import com.freeze.mybatis.vo.CalcInputEntity;
import com.freeze.mybatis.vo.CalcMandaysEntity;
import com.freeze.mybatis.vo.CalcOpassisEntity;
import com.freeze.mybatis.vo.CalcPriceEntity;
import com.freeze.mybatis.vo.CalcSettingEntity;
import com.freeze.mybatis.vo.CalcViewEntity;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;

@Controller
public class CalcController {
	
	@Autowired
	private CalcService service;
	
	@RequestMapping("/")
	public String home() throws Exception {
		return "nav-eight-item-four-column";
	}
	
	@RequestMapping("/admsp/")
	public String index() throws Exception {
		return "/admsp/index";
	}
	
//	데이터 세팅 - 구역 DB에서 전체 데이터 조회해서 최종 VIEW에 뿌리기
//  여기에서 최종적으로 Service 등록해주고 Object를 전달해줘야 VIEW에 뿌릴수 있음.
	@RequestMapping("/admsp/products-list")
	public String productsList(HttpServletRequest request, Model model) throws Exception {
		List<CalcBaseEntity> calcBaseEntity = service.getBaseCDU();
		List<CalcCDUEntity> calcCDUEntity = service.getCalcCDU();
		List<CalcCoolerEntity> calcCoolerEntity = service.getCalcCooler();
		List<CalcControllEntity> calcControllEntity = service.getCalcControll();
		List<CalcExvalveEntity> calcExvalveEntity = service.getCalcExvalve();
		List<CalcElecvalveEntity> calcElecvalveEntity = service.getCalcElecvalve();
		List<CalcOpassisEntity> calcOpassisEntity = service.getCalcOpassis();
		model.addAttribute("calcBaseEntity", calcBaseEntity);
		model.addAttribute("cduEntitylist", calcCDUEntity);
		model.addAttribute("coolerEntitylist", calcCoolerEntity);
		model.addAttribute("controllEntitylist", calcControllEntity);
		model.addAttribute("exvalveEntitylist", calcExvalveEntity);
		model.addAttribute("elecvalveEntitylist", calcElecvalveEntity);
		model.addAttribute("opassisEntitylist", calcOpassisEntity);
		return "/admsp/products-list";
	}
	
//	데이터 세팅 - CDU Products All
	@RequestMapping(value="/admsp/cduAllAjax", method=RequestMethod.POST)
	public @ResponseBody void sendAjaxGetCDUAll(@RequestBody CalcViewEntity view) throws Exception {
		service.updateCduProductsAll(view);
	}
	
//	데이터 세팅 - CDU Products
	 @RequestMapping(value="/admsp/cduAjax", method=RequestMethod.POST) 
	 public @ResponseBody String sendAjaxGetCDUOne(@RequestBody CalcCDUEntity cdu, String cdu_ctn) throws Exception {
		 List<CalcCDUEntity> calcCDUEntity = service.getOneCalcCDU(cdu.getPid());
		 String getUnitPrice = calcCDUEntity.get(0).getUnit_price();
		 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
			 return "";
		 }else {
			 return calcCDUEntity.get(0).getUnit_price(); 
		 }
	 }
	 
//	데이터 세팅 - Cooler Products All
 	@RequestMapping(value="/admsp/coolerAllAjax", method=RequestMethod.POST)
	public @ResponseBody void sendAjaxGetCoolerAll(@RequestBody CalcViewEntity view) throws Exception {
		service.updateCoolerProductsAll(view);
	}
	
// 	데이터 세팅 - Cooler Products
	 @RequestMapping(value="/admsp/coolerAjax", method=RequestMethod.POST) 
	 public @ResponseBody String sendAjaxGetCoolerOne(@RequestBody CalcCoolerEntity cooler, String cooler_ctn) throws Exception {
		 List<CalcCoolerEntity> calcCoolerEntity = service.getOneCalcCooler(cooler.getPid());
		 String getUnitPrice = calcCoolerEntity.get(0).getUnit_price();
		 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
			 return "";
		 }else {
			 return calcCoolerEntity.get(0).getUnit_price();
		 }
	 }
	 
//	데이터 세팅 - Controll Products All
 	@RequestMapping(value="/admsp/controllAllAjax", method=RequestMethod.POST)
	public @ResponseBody void sendAjaxGetControllAll(@RequestBody CalcViewEntity view) throws Exception {
		service.updateControllProductsAll(view);
	}
	
//	 데이터 세팅 - Controll Products
	 @RequestMapping(value="/admsp/controllAjax", method=RequestMethod.POST) 
	 public @ResponseBody String sendAjaxGetControllOne(@RequestBody CalcControllEntity controll, String controll_ctn) throws Exception {
		 List<CalcControllEntity> calcControllEntity = service.getOneCalcControll(controll.getPid());
		 String getUnitPrice = calcControllEntity.get(0).getUnit_price();
		 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
			 return "";
		 }else {
			 return calcControllEntity.get(0).getUnit_price();
		 }
	 }
	 
//		데이터 세팅 - Exvalve Products All
	 	@RequestMapping(value="/admsp/exvalveAllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetExvalveAll(@RequestBody CalcViewEntity view) throws Exception {
			service.updateExvalveProductsAll(view);
		}
		
//		 데이터 세팅 - Exvalve Products
		 @RequestMapping(value="/admsp/exvalveAjax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetExvalveOne(@RequestBody CalcExvalveEntity exvalve, String exvalve_ctn) throws Exception {
			 List<CalcExvalveEntity> calcExvalveEntity = service.getOneCalcExvalve(exvalve.getPid());
			 String getUnitPrice = calcExvalveEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcExvalveEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Elecvalve Products All
	 	@RequestMapping(value="/admsp/elecvalveAllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetElecvalveAll(@RequestBody CalcViewEntity view) throws Exception {
			service.updateElecvalveProductsAll(view);
		}
		
//		데이터 세팅 - Elecvalve Products
		 @RequestMapping(value="/admsp/elecvalveAjax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetElecvalveOne(@RequestBody CalcElecvalveEntity elecvalve, String elecvalve_ctn) throws Exception {
			 List<CalcElecvalveEntity> calcElecvalveEntity = service.getOneCalcElecvalve(elecvalve.getPid());
			 String getUnitPrice = calcElecvalveEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcElecvalveEntity.get(0).getUnit_price();
			 }
		 }

//		데이터 세팅 - Opassis1 Products All
	 	@RequestMapping(value="/admsp/opassis1AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetOpassisAll(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis1ProductsAll(view);
		}
			
//		데이터 세팅 - Opassis1 Products
		 @RequestMapping(value="/admsp/opassis1Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassisOne(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
	 
//	데이터 세팅 - 화면에서 최초 버튼 클릭 시 AJAX 처음으로 Request 호출하는 곳 
	@RequestMapping("/admsp/productsRq")
	public String cduRq(HttpServletRequest request) throws Exception {
		return "/admsp/productsRq";
	}
	 

//	DB 구역별 가격 업데이트
	@RequestMapping("/admsp/cduProc")
	public void cduProc(HttpServletRequest request) throws Exception {
		CalcCDUEntity cduEnty = new CalcCDUEntity();
		cduEnty.setPid(request.getParameter("cduPid"));
		cduEnty.setPurchase_price(request.getParameter("cduPurchase"));
		cduEnty.setUnit_price(request.getParameter("cduUnit"));
		service.updateCalcCDU(cduEnty.getPid(),cduEnty.getPurchase_price(),cduEnty.getUnit_price());
	}
	@RequestMapping("/admsp/coolerProc")
	public void coolerProc(HttpServletRequest request) throws Exception {
		CalcCoolerEntity coolerEnty = new CalcCoolerEntity();
		coolerEnty.setPid(request.getParameter("coolerPid"));
		coolerEnty.setPurchase_price(request.getParameter("coolerPurchase"));
		coolerEnty.setUnit_price(request.getParameter("coolerUnit"));
		service.updateCalcCooler(coolerEnty.getPid(),coolerEnty.getPurchase_price(),coolerEnty.getUnit_price());
	}
	@RequestMapping("/admsp/controllProc")
	public void controllProc(HttpServletRequest request) throws Exception {
		CalcControllEntity controllEnty = new CalcControllEntity();
		controllEnty.setPid(request.getParameter("controllPid"));
		controllEnty.setPurchase_price(request.getParameter("controllPurchase"));
		controllEnty.setUnit_price(request.getParameter("controllUnit"));
		service.updateCalcControll(controllEnty.getPid(),controllEnty.getPurchase_price(),controllEnty.getUnit_price());
	}
	@RequestMapping("/admsp/exvalveProc")
	public void exvalveProc(HttpServletRequest request) throws Exception {
		CalcExvalveEntity exvalveEnty = new CalcExvalveEntity();
		exvalveEnty.setPid(request.getParameter("exvalvePid"));
		exvalveEnty.setPurchase_price(request.getParameter("exvalvePurchase"));
		exvalveEnty.setUnit_price(request.getParameter("exvalveUnit"));
		service.updateCalcExvalve(exvalveEnty.getPid(),exvalveEnty.getPurchase_price(),exvalveEnty.getUnit_price());
	}
	
	@RequestMapping("/admsp/elecvalveProc")
	public void elecvalveProc(HttpServletRequest request) throws Exception {
		CalcElecvalveEntity elecvalveEnty = new CalcElecvalveEntity();
		elecvalveEnty.setPid(request.getParameter("elecvalvePid"));
		elecvalveEnty.setPurchase_price(request.getParameter("elecvalvePurchase"));
		elecvalveEnty.setUnit_price(request.getParameter("elecvalveUnit"));
		service.updateCalcElecvalve(elecvalveEnty.getPid(),elecvalveEnty.getPurchase_price(),elecvalveEnty.getUnit_price());
	}
	@RequestMapping("/admsp/opassisProc")
	public void opassisProc(HttpServletRequest request) throws Exception {
		CalcOpassisEntity opassisEnty = new CalcOpassisEntity();
		opassisEnty.setPid(request.getParameter("opassisPid"));
		opassisEnty.setPurchase_price(request.getParameter("opassisPurchase"));
		opassisEnty.setUnit_price(request.getParameter("opassisUnit"));
		service.updateCalcOpassis(opassisEnty.getPid(),opassisEnty.getPurchase_price(),opassisEnty.getUnit_price());
	}
	@RequestMapping("/admsp/mandaysProc")
	public void mandaysProc(HttpServletRequest request) throws Exception {
		CalcMandaysEntity mandaysEnty = new CalcMandaysEntity();
		mandaysEnty.setPid(request.getParameter("mandaysPid"));
		mandaysEnty.setPurchase_price(request.getParameter("mandaysPurchase"));
		mandaysEnty.setUnit_price(request.getParameter("mandaysUnit"));
		service.updateCalcMandays(mandaysEnty.getPid(),mandaysEnty.getPurchase_price(),mandaysEnty.getUnit_price());
	}
	
//	DB 구역별로 리스트 뿌리기
	@RequestMapping("/admsp/cdu-list")
	public String cduList(HttpServletRequest request, Model model) throws Exception {
		List<CalcCDUEntity> calcCDUEntity = service.getCalcCDU();
		model.addAttribute("cduEntitylist", calcCDUEntity);
		return "/admsp/cdu-list";
	}
	@RequestMapping("/admsp/cooler-list")
	public String coolerList(HttpServletRequest request, Model model) throws Exception {
		List<CalcCoolerEntity> calcCoolerEntity = service.getCalcCooler();
		model.addAttribute("coolerEntitylist", calcCoolerEntity);
		return "/admsp/cooler-list";
	}
	@RequestMapping("/admsp/controll-list")
	public String controllList(HttpServletRequest request, Model model) throws Exception {
		List<CalcControllEntity> calcControllEntity = service.getCalcControll();
		model.addAttribute("controllEntitylist", calcControllEntity);
		return "/admsp/controll-list";
	}
	@RequestMapping("/admsp/exvalve-list")
	public String exvalveList(HttpServletRequest request, Model model) throws Exception {
		List<CalcExvalveEntity> calcExvalveEntity = service.getCalcExvalve();
		model.addAttribute("exvalveEntitylist", calcExvalveEntity);
		return "/admsp/exvalve-list";
	}
	@RequestMapping("/admsp/elecvalve-list")
	public String elecvalveList(HttpServletRequest request, Model model) throws Exception {
		List<CalcElecvalveEntity> calcElecvalveEntity = service.getCalcElecvalve();
		model.addAttribute("elecvalveEntitylist", calcElecvalveEntity);
		return "/admsp/elecvalve-list";
	}
	
	@RequestMapping("/admsp/opassis-list")
	public String opassisList(HttpServletRequest request, Model model) throws Exception {
		List<CalcOpassisEntity> calcOpassisEntity = service.getCalcOpassis();
		model.addAttribute("opassisEntitylist", calcOpassisEntity);
		return "/admsp/opassis-list";
	}
	@RequestMapping("/admsp/mandays-list")
	public String mandaysList(HttpServletRequest request, Model model) throws Exception {
		List<CalcMandaysEntity> calcMandaysEntity = service.getCalcMandays();
		model.addAttribute("mandaysEntitylist", calcMandaysEntity);
		return "/admsp/mandays-list";
	}
	
	
	
	@RequestMapping("/admsp/blank")
	public String blank() throws Exception {
		return "/admsp/blank";
	}
	
	@RequestMapping("/admsp/cards")
	public String cards() throws Exception {
		return "/admsp/cards";
	}
	
	@RequestMapping("/admsp/forgot-password")
	public String forgotPassword() throws Exception {
		return "/admsp/forgot-password";
	}
	
	@RequestMapping("/admsp/login")
	public String login() throws Exception {
		return "/admsp/login";
	}
	
	@RequestMapping("/admsp/charts")
	public String charts() throws Exception {
		return "/admsp/charts";
	}
	
	@RequestMapping("/admsp/404")
	public String notfonud() throws Exception {
		return "/admsp/404";
	}
	
	@RequestMapping("/admsp/register")
	public String register() throws Exception {
		return "/admsp/register";
	}
	
	@RequestMapping("/admsp/utilities-animation")
	public String utilitiesAnimation() throws Exception {
		return "/admsp/utilities-animation";
	}
	
	@RequestMapping("/admsp/utilities-border")
	public String utilitiesBorder() throws Exception {
		return "/admsp/utilities-border";
	}
	
	@RequestMapping("/admsp/utilities-color")
	public String utilitiesColor() throws Exception {
		return "/admsp/utilities-color";
	}
	
	@RequestMapping("/admsp/utilities-other")
	public String utilitiesOther() throws Exception {
		return "/admsp/utilities-other";
	}
	
	@RequestMapping("/admsp/buttons")
	public String buttons() throws Exception {
		return "/admsp/buttons";
	}
	
	@RequestMapping("/privacy-consent")
	public String privacy() throws Exception {
		return "privacy-consent";
	}
	
	@RequestMapping("/terms-service")
	public String terms() throws Exception {
		return "terms-service";
	}
	
	@RequestMapping("/contactProc")
	public String contactProc(HttpServletRequest request, Model model) throws Exception {
		String companyNM = request.getParameter("companyNM");
		String nameNM = request.getParameter("nameNM");
		String callNumber = request.getParameter("callNumber");
		String emailNM = request.getParameter("emailNM");
		String typeNM = request.getParameter("typeNM");
		String contactType = request.getParameter("contactType");
		String contents = request.getParameter("contents");
		
		model.addAttribute("companyNM",companyNM);
		model.addAttribute("nameNM",nameNM);
		model.addAttribute("callNumber",callNumber);
		model.addAttribute("emailNM",emailNM);
		model.addAttribute("typeNM",typeNM);
		model.addAttribute("contactType",contactType);
		model.addAttribute("contents",contents);
		
		return "contactProc";
	}
	
	
//	견적서 상세 부분
	@RequestMapping("/ai-calcProc")
	public String calcProc(HttpServletRequest request, Model model) throws Exception {
		//사용자 입력 정보
		String nameNM = request.getParameter("nameNM");
		String companyNM = request.getParameter("companyNM");
		String cellphone = request.getParameter("cellphone");
		String hopeDate = request.getParameter("hopeDate");
		String address = request.getParameter("address");
		String reqContact = request.getParameter("reqContact");
		String agree_all = request.getParameter("agree_all");
		
		//정보 선택
		String widProc = request.getParameter("widProc");
		String vertProc = request.getParameter("vertProc");
		String hegProc = request.getParameter("hegProc");
		String storeProc = request.getParameter("storeProc");
		String temper_typeProc = request.getParameter("temper_typeProc");
		String mtypeProc = request.getParameter("mtypeProc");
		String msizeProc = request.getParameter("msizeProc");
		String purcheseProc = request.getParameter("purcheseProc");
		
		//결과 내용(위내용 포함)
		String floor_areaProc = request.getParameter("floor_areaProc");
		String total_areaProc = request.getParameter("total_areaProc");
		String pylsProc = request.getParameter("pylsProc");
		
		//결과 금액
		String panel_priceProc = request.getParameter("panel_priceProc");
		String door_priceProc = request.getParameter("door_priceProc");
		String base_priceProc = request.getParameter("base_priceProc");
		String sub_priceProc = request.getParameter("sub_priceProc");
		String total_priceProc = request.getParameter("total_priceProc");

		
		//사용자 입력 정보
		model.addAttribute("nameNM",nameNM);
		model.addAttribute("companyNM",companyNM);
		model.addAttribute("cellphone",cellphone);
		model.addAttribute("hopeDate",hopeDate);
		model.addAttribute("address",address);
		model.addAttribute("reqContact",reqContact);
		model.addAttribute("agree_all",agree_all);
		
		model.addAttribute("widProc",widProc);
		model.addAttribute("vertProc",vertProc);
		model.addAttribute("hegProc",hegProc);
		model.addAttribute("storeProc",storeProc);
		model.addAttribute("temper_typeProc",temper_typeProc);
		model.addAttribute("mtypeProc",mtypeProc);
		model.addAttribute("msizeProc",msizeProc);
		model.addAttribute("purcheseProc",purcheseProc);
		
		model.addAttribute("floor_areaProc",floor_areaProc);
		model.addAttribute("total_areaProc",total_areaProc);
		model.addAttribute("pylsProc",pylsProc);
		
		model.addAttribute("panel_priceProc",panel_priceProc);
		model.addAttribute("door_priceProc",door_priceProc);
		model.addAttribute("base_priceProc",base_priceProc);
		model.addAttribute("sub_priceProc",sub_priceProc);
		model.addAttribute("total_priceProc",total_priceProc);
		
		return "ai-calcProc";
	}
	
//	견적서 입력 부분
	@RequestMapping("/ai-calc")
	public String calc(HttpServletRequest request, Model model) throws Exception {
		CalcInputEntity cmd = new CalcInputEntity();
		List<CalcPriceEntity> calcPriceEntity = service.getCalcPrice();
		DecimalFormat decFormat = new DecimalFormat("###,###");
		String temper_type = null;
		String msize = null;
		String storeVal = null;
		String tempVal = null;
		String mtypeVal = null;
		String msizeVal = null;
		String purcheseVal = null;
		long floor_area; //바닥면적
		double total_area; //전체면적
		double py;long pyl;String pyls; //평수환산
		int msize_price = 0;int panel_price = 0;int door_price = 0;int base_price = 0;int sub_price = 0; //가격 출력
	
		//가로, 세로, 높이
		cmd.setWidVal(request.getParameter("wid"));
		cmd.setVertVal(request.getParameter("vert"));
		cmd.setHegVal(request.getParameter("heg"));
		cmd.setStoreVal(request.getParameter("store"));
		
		cmd.setTempVal(request.getParameter("temperture"));
		cmd.setMtypeVal(request.getParameter("mtype"));
		cmd.setMsizeVal(request.getParameter("msize"));
		cmd.setPurcheseVal(request.getParameter("purchese"));
		
		//바닥면적 계산
		floor_area = Math.round(Long.parseLong(cmd.getWidVal()) * Long.parseLong(cmd.getVertVal()) / 1000000);
		
		//전체면적 계산
		total_area = Long.parseLong(cmd.getWidVal()) * Long.parseLong(cmd.getVertVal()) * Long.parseLong(cmd.getHegVal()) / 1000000000.0;

		//평수환산 계산
		py = floor_area / 3.3;
		pyl = Math.round(py); 
		pyls = String.valueOf(pyl);
		
		/* INPUT STORE DATA */	
		if(cmd.getStoreVal().equals("storelist01")){
			cmd.setStoreVal("어패류");
		}else if(cmd.getStoreVal().equals("storelist02")){
			cmd.setStoreVal("화훼류");
		}else if(cmd.getStoreVal().equals("storelist03")){
			cmd.setStoreVal("돈육");
		}else if(cmd.getStoreVal().equals("storelist04")){
			cmd.setStoreVal("채소류");
		}else if(cmd.getStoreVal().equals("storelist05")){
			cmd.setStoreVal("과실류");
		}else if(cmd.getStoreVal().equals("storelist06")){
			cmd.setStoreVal("혼합류");
		}else if(cmd.getStoreVal().equals("storelist07")){
			cmd.setStoreVal("기타");
		}
		
		/* INPUT TEMPERTURE DATA */	
		if(cmd.getTempVal().equals("temp01")){
			cmd.setTempVal("냉장(0 ~ 15℃)");
		}else if(cmd.getTempVal().equals("temp02")){
			cmd.setTempVal("냉동(0 ~ -20℃)");
		}else if(cmd.getTempVal().equals("temp03")){
			cmd.setTempVal("동결(-20 ~ -40℃)");
		}else if(cmd.getTempVal().equals("temp04")){
			cmd.setTempVal("급속동결(-40 ~ -70℃)");
		}
		
		/* INPUT MTYPE DATA */	
		if(cmd.getMtypeVal().equals("mtype01")){
			cmd.setMtypeVal("오버랩 도어(일반 도어 타입)");
		}else if(cmd.getMtypeVal().equals("mtype02")){
			cmd.setMtypeVal("수동 슬라이드 편개(한쪽 열림)");
		}else if(cmd.getMtypeVal().equals("mtype03")){
			cmd.setMtypeVal("수동 슬라이드 양개(양쪽 열림)");
		}else if(cmd.getMtypeVal().equals("mtype04")){
			cmd.setMtypeVal("자동 슬라이드 편개(한쪽 열림)");
		}else if(cmd.getMtypeVal().equals("mtype05")){
			cmd.setMtypeVal("자동 슬라이드 양개(양쪽 열림)");
		}
		
		/* INPUT MSIZE DATA */
		if(cmd.getMsizeVal().equals("msize01")){
			cmd.setMsizeVal("평수에 맞게 스탠다드 적용");
		}else if(cmd.getMsizeVal().equals("msize02")){
			cmd.setMsizeVal("900 X 2100 X 100 (오버랩)");
		}else if(cmd.getMsizeVal().equals("msize03")){
			cmd.setMsizeVal("1000 X 2100 X 100 (오버랩)");
		}else if(cmd.getMsizeVal().equals("msize04")){
			cmd.setMsizeVal("1200 X 2400 X 100 (슬라이드 / 편개)");
		}else if(cmd.getMsizeVal().equals("msize05")){
			cmd.setMsizeVal("1400 X 2600 X 100 (슬라이드 / 편개)");
		}else if(cmd.getMsizeVal().equals("msize06")){
			cmd.setMsizeVal("2400 X 2600 X 100 (슬라이드 / 양개)");
		}else if(cmd.getMsizeVal().equals("msize07")){
			cmd.setMsizeVal("2600 X 2800 X 100 (슬라이드 / 양개)");
		}
		
		/* INPUT PURCHESE DATA */
		if(cmd.getPurcheseVal().equals("purchese01")){
			cmd.setPurcheseVal("구입");
		}else if(cmd.getPurcheseVal().equals("purchese02")){
			cmd.setPurcheseVal("렌탈");
		}
		
		//가격 내용
		msize = cmd.getMsizeVal().substring(0,2);
		if(msize.equals("90")) {
			msize_price = 550000;
		}else if(msize.equals("10")) {
			msize_price = 600000;
		}else if(msize.equals("12")) {
			msize_price = 1400000;
		}else if(msize.equals("14")) {
			msize_price = 2800000;
		}else if(msize.equals("24")) {
			msize_price = 2800000;
		}else if(msize.equals("32")) {
			msize_price = 3200000;
		}else {
			msize_price = 0;
		}
		
		panel_price = (int) (total_area * Integer.parseInt(calcPriceEntity.get(0).getPanel())); //우레탄 판넬 가격
		door_price = msize_price; //도어 가격
		base_price = (int) (floor_area * Integer.parseInt(calcPriceEntity.get(0).getBase())); //베이스 가격
		sub_price = (int) (total_area * Integer.parseInt(calcPriceEntity.get(0).getSub())); //부자재 가격
		int total_price = panel_price + door_price + base_price + sub_price;
		temper_type = cmd.getTempVal().substring(0,2);
		List<CalcSettingEntity> calcSettingEntity = service.getCalcSetting(pyls,temper_type);
		//Price Model
		model.addAttribute("panel_price",decFormat.format(panel_price));
		model.addAttribute("door_price",decFormat.format(door_price));
		model.addAttribute("base_price",decFormat.format(base_price));
		model.addAttribute("sub_price",decFormat.format(sub_price));
		model.addAttribute("total_price",decFormat.format(total_price));

		//Setting Model
		model.addAttribute("pinid",calcSettingEntity.get(0).getPinid());
		model.addAttribute("cdu",calcSettingEntity.get(0).getCdu());
		model.addAttribute("cdu_unit_price",calcSettingEntity.get(0).getCdu_unit_price());
		model.addAttribute("cooler",calcSettingEntity.get(0).getCooler());
		model.addAttribute("cooler_unit_price",calcSettingEntity.get(0).getCooler_unit_price());
		model.addAttribute("controll",calcSettingEntity.get(0).getControll());
		model.addAttribute("controll_unit_price",calcSettingEntity.get(0).getControll_unit_price());
		model.addAttribute("ex_valve",calcSettingEntity.get(0).getEx_valve());
		model.addAttribute("ex_valve_unit_price",calcSettingEntity.get(0).getEx_valve_unit_price());
		model.addAttribute("elec_valve",calcSettingEntity.get(0).getElec_valve());
		model.addAttribute("elec_valve_unit_price",calcSettingEntity.get(0).getElec_valve_unit_price());
		model.addAttribute("op_assis1",calcSettingEntity.get(0).getOp_assis1());
		model.addAttribute("op_assis1_unit_price",calcSettingEntity.get(0).getOp_assis1_unit_price());
		model.addAttribute("op_assis2",calcSettingEntity.get(0).getOp_assis2());
		model.addAttribute("op_assis2_unit_price",calcSettingEntity.get(0).getOp_assis2_unit_price());
		model.addAttribute("op_assis3",calcSettingEntity.get(0).getOp_assis3());
		model.addAttribute("op_assis3_unit_price",calcSettingEntity.get(0).getOp_assis3_unit_price());
		model.addAttribute("op_assis4",calcSettingEntity.get(0).getOp_assis4());
		model.addAttribute("op_assis4_unit_price",calcSettingEntity.get(0).getOp_assis4_unit_price());
		model.addAttribute("op_assis5",calcSettingEntity.get(0).getOp_assis5());
		model.addAttribute("op_assis5_unit_price",calcSettingEntity.get(0).getOp_assis5_unit_price());
		model.addAttribute("op_assis6",calcSettingEntity.get(0).getOp_assis6());
		model.addAttribute("op_assis6_unit_price",calcSettingEntity.get(0).getOp_assis6_unit_price());
		model.addAttribute("op_assis7",calcSettingEntity.get(0).getOp_assis7());
		model.addAttribute("op_assis7_unit_price",calcSettingEntity.get(0).getOp_assis7_unit_price());
		model.addAttribute("op_assis8",calcSettingEntity.get(0).getOp_assis8());
		model.addAttribute("op_assis8_unit_price",calcSettingEntity.get(0).getOp_assis8_unit_price());
		model.addAttribute("op_assis9",calcSettingEntity.get(0).getOp_assis9());
		model.addAttribute("op_assis9_unit_price",calcSettingEntity.get(0).getOp_assis9_unit_price());
		model.addAttribute("op_assis10",calcSettingEntity.get(0).getOp_assis10());
		model.addAttribute("op_assis10_unit_price",calcSettingEntity.get(0).getOp_assis10_unit_price());
		model.addAttribute("manday1",calcSettingEntity.get(0).getManday1());
		model.addAttribute("manday1_unit_price",calcSettingEntity.get(0).getManday1_unit_price());
		model.addAttribute("manday2",calcSettingEntity.get(0).getManday2());
		model.addAttribute("manday2_unit_price",calcSettingEntity.get(0).getManday2_unit_price());
		model.addAttribute("manday3",calcSettingEntity.get(0).getManday3());
		model.addAttribute("manday3_unit_price",calcSettingEntity.get(0).getManday3_unit_price());
		model.addAttribute("manday4",calcSettingEntity.get(0).getManday4());
		model.addAttribute("manday4_unit_price",calcSettingEntity.get(0).getManday4_unit_price());
		
		System.out.println("1"+calcSettingEntity.get(0).getPinid());
		System.out.println("2"+calcSettingEntity.get(0).getCdu());
		System.out.println("3"+calcSettingEntity.get(0).getCdu_unit_price());
		System.out.println("4"+calcSettingEntity.get(0).getCooler());
		System.out.println("5"+calcSettingEntity.get(0).getCooler_unit_price());
		System.out.println("6"+calcSettingEntity.get(0).getControll());
		System.out.println("7"+calcSettingEntity.get(0).getControll_unit_price());
		
		System.out.println("8"+calcSettingEntity.get(0).getEx_valve());
		System.out.println("9"+calcSettingEntity.get(0).getEx_valve_unit_price());
		System.out.println("10"+calcSettingEntity.get(0).getElec_valve());
		System.out.println("11"+calcSettingEntity.get(0).getElec_valve_unit_price());
		System.out.println("12"+calcSettingEntity.get(0).getOp_assis1());
		System.out.println("13"+calcSettingEntity.get(0).getOp_assis1_unit_price());
		System.out.println("14"+calcSettingEntity.get(0).getOp_assis2());
		System.out.println("15"+calcSettingEntity.get(0).getOp_assis2_unit_price());
		System.out.println("16"+calcSettingEntity.get(0).getOp_assis3());
		System.out.println("17"+calcSettingEntity.get(0).getOp_assis3_unit_price());
		System.out.println("18"+calcSettingEntity.get(0).getOp_assis4());
		System.out.println("19"+calcSettingEntity.get(0).getOp_assis4_unit_price());
		System.out.println("20"+calcSettingEntity.get(0).getOp_assis5());
		System.out.println("21"+calcSettingEntity.get(0).getOp_assis5_unit_price());
		System.out.println("22"+calcSettingEntity.get(0).getOp_assis6());
		System.out.println("23"+calcSettingEntity.get(0).getOp_assis6_unit_price());
		System.out.println("24"+calcSettingEntity.get(0).getOp_assis7());
		System.out.println("25"+calcSettingEntity.get(0).getOp_assis7_unit_price());
		System.out.println("26"+calcSettingEntity.get(0).getOp_assis8());
		System.out.println("27"+calcSettingEntity.get(0).getOp_assis8_unit_price());
		System.out.println("28"+calcSettingEntity.get(0).getOp_assis9());
		System.out.println("29"+calcSettingEntity.get(0).getOp_assis9_unit_price());
		System.out.println("30"+calcSettingEntity.get(0).getOp_assis10());
		System.out.println("31"+calcSettingEntity.get(0).getOp_assis10_unit_price());
		System.out.println("32"+calcSettingEntity.get(0).getManday1());
		System.out.println("33"+calcSettingEntity.get(0).getManday1_unit_price());
		System.out.println("34"+calcSettingEntity.get(0).getManday2());
		System.out.println("35"+calcSettingEntity.get(0).getManday2_unit_price());
		System.out.println("36"+calcSettingEntity.get(0).getManday3());
		System.out.println("37"+calcSettingEntity.get(0).getManday3_unit_price());
		System.out.println("38"+calcSettingEntity.get(0).getManday4());
		System.out.println("39"+calcSettingEntity.get(0).getManday4_unit_price());

		//Total Price
		int vp1,vp2,vp3,vp4,vp5,vp6,vp7,vp8,vp9,vp10,vp11,vp12,vp13,vp14,vp15,vp16,vp17,vp18,vp19; 
		vp1 = (calcSettingEntity.get(0).getCdu_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getCdu_unit_price());
		vp2 = (calcSettingEntity.get(0).getCooler_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getCooler_unit_price());
		vp3 = (calcSettingEntity.get(0).getControll_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getControll_unit_price());
		vp4 = (calcSettingEntity.get(0).getEx_valve_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getEx_valve_unit_price());
		vp5 = (calcSettingEntity.get(0).getElec_valve_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getElec_valve_unit_price());
		vp6 = (calcSettingEntity.get(0).getOp_assis1_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getOp_assis1_unit_price());
		vp7 = (calcSettingEntity.get(0).getOp_assis2_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getOp_assis2_unit_price());
		vp8 = (calcSettingEntity.get(0).getOp_assis3_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getOp_assis3_unit_price());
		vp9 = (calcSettingEntity.get(0).getOp_assis4_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getOp_assis4_unit_price());
		vp10 = (calcSettingEntity.get(0).getOp_assis5_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getOp_assis5_unit_price());
		vp11 = (calcSettingEntity.get(0).getOp_assis6_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getOp_assis6_unit_price());
		vp12 = (calcSettingEntity.get(0).getOp_assis7_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getOp_assis7_unit_price());
		vp13 = (calcSettingEntity.get(0).getOp_assis8_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getOp_assis8_unit_price());
		vp14 = (calcSettingEntity.get(0).getOp_assis9_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getOp_assis9_unit_price());
		vp15 = (calcSettingEntity.get(0).getOp_assis10_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getOp_assis10_unit_price());
		vp16 = (calcSettingEntity.get(0).getManday1_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getManday1_unit_price());
		vp17 = (calcSettingEntity.get(0).getManday2_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getManday2_unit_price());
		vp18 = (calcSettingEntity.get(0).getManday3_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getManday3_unit_price());
		vp19 = (calcSettingEntity.get(0).getManday4_unit_price()).isEmpty() ? 0 : Integer.parseInt(calcSettingEntity.get(0).getManday4_unit_price());
		
		total_price += vp1 + vp2 + vp3 + vp4 + vp5 + vp6 + vp7 + 
				vp8 + vp9 + vp10 + vp11 + vp12 + vp13 + vp14 + vp15 + vp16 + vp17 + vp18 + vp19
				+ panel_price + door_price + base_price + sub_price;
		model.addAttribute("total_price",total_price);
		
		//Input Model
		model.addAttribute("wid", cmd.getWidVal());
		model.addAttribute("vert", cmd.getVertVal());
		model.addAttribute("heg", cmd.getHegVal());
		model.addAttribute("floor_area", floor_area);
		model.addAttribute("total_area", String.format("%.1f", total_area));
		model.addAttribute("pyls", pyls);
		model.addAttribute("store", cmd.getStoreVal());
		model.addAttribute("temper_type", cmd.getTempVal());
		model.addAttribute("mtype", cmd.getMtypeVal());
		model.addAttribute("msize", cmd.getMsizeVal());
		model.addAttribute("purchese", cmd.getPurcheseVal());
		
		System.out.println("all total : " + total_price);
		
		return "ai-calc";
	}	
}
