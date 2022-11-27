package com.freeze.mybatis.web;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.ui.Model;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.freeze.mybatis.dao.CalcDAO;
import com.freeze.mybatis.services.CalcService;
import com.freeze.mybatis.vo.CalcCDUEntity;
import com.freeze.mybatis.vo.CalcInputEntity;
import com.freeze.mybatis.vo.CalcPriceEntity;
import com.freeze.mybatis.vo.CalcSettingEntity;

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
	
	@RequestMapping("/admsp/products-list")
	public String productsList() throws Exception {
		return "/admsp/products-list";
	}
	
	@RequestMapping("/admsp/cdu-list")
	public String cduList(HttpServletRequest request, Model model) throws Exception {
		List<CalcCDUEntity> calcCDUEntity = service.getCalcCDU();
		model.addAttribute("cduEntitylist", calcCDUEntity);
		return "/admsp/cdu-list";
	}
	
	@RequestMapping("/admsp/cduProc")
	public void cduProc(HttpServletRequest request) throws Exception {
		CalcCDUEntity cduen = new CalcCDUEntity();
		cduen.setPid(request.getParameter("cduPid"));
		cduen.setPurchase_price(request.getParameter("cduPurchase"));
		cduen.setUnit_price(request.getParameter("cduUnit"));
		service.updateCalcCDU(cduen.getPid(),cduen.getPurchase_price(),cduen.getUnit_price());
		//return "/admsp/cduProc";
	}
	
	@RequestMapping("/admsp/cooler-list")
	public String coolerList() throws Exception {
		return "/admsp/cooler-list";
	}
	
	@RequestMapping("/admsp/controll-list")
	public String controllList() throws Exception {
		return "/admsp/controll-list";
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
		int total_price =  panel_price + door_price + base_price + sub_price;

		temper_type = cmd.getTempVal().substring(0,2);
		List<CalcSettingEntity> calcSettingEntity = service.getCalcSetting(pyls,temper_type);
		
		//Price Model
		model.addAttribute("panel_price",decFormat.format(panel_price));
		model.addAttribute("door_price",decFormat.format(door_price));
		model.addAttribute("base_price",decFormat.format(base_price));
		model.addAttribute("sub_price",decFormat.format(sub_price));
		model.addAttribute("total_price",decFormat.format(total_price));

		//Setting Model
		model.addAttribute("cdu",calcSettingEntity.get(0).getCdu());
		model.addAttribute("cooler",calcSettingEntity.get(0).getCooler());
		model.addAttribute("control",calcSettingEntity.get(0).getControl());
		model.addAttribute("ex_valve",calcSettingEntity.get(0).getEx_valve());
		model.addAttribute("elec_valve",calcSettingEntity.get(0).getElec_valve());
		model.addAttribute("high_piping",calcSettingEntity.get(0).getHigh_piping());
		model.addAttribute("row_piping",calcSettingEntity.get(0).getRow_piping());
		model.addAttribute("high_lagging",calcSettingEntity.get(0).getHigh_lagging());
		model.addAttribute("row_lagging",calcSettingEntity.get(0).getRow_lagging());
		model.addAttribute("power",calcSettingEntity.get(0).getPower());
		model.addAttribute("op_assis1",calcSettingEntity.get(0).getOp_assis1());
		model.addAttribute("op_assis2",calcSettingEntity.get(0).getOp_assis2());
		model.addAttribute("op_assis3",calcSettingEntity.get(0).getOp_assis3());
		model.addAttribute("engin_cnt",calcSettingEntity.get(0).getEngin_cnt());
		model.addAttribute("construc_period",calcSettingEntity.get(0).getConstruc_period());
		
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
		
		return "ai-calc";
	}	
}
