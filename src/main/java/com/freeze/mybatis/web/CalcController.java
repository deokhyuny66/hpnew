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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
		String cduProc = request.getParameter("cduProc");
		String coolerProc = request.getParameter("coolerProc");
		String controlProc = request.getParameter("controlProc");
		String ex_valveProc = request.getParameter("ex_valveProc");
		String elec_valveProc = request.getParameter("elec_valveProc");
		String op_assis1Proc = request.getParameter("op_assis1Proc");
		String op_assis2Proc = request.getParameter("op_assis2Proc");
		String op_assis3Proc = request.getParameter("op_assis3Proc");
		String op_assis4Proc = request.getParameter("op_assis4Proc");
		String op_assis5Proc = request.getParameter("op_assis5Proc");
		String op_assis6Proc = request.getParameter("op_assis6Proc");
		String op_assis7Proc = request.getParameter("op_assis7Proc");
		String op_assis8Proc = request.getParameter("op_assis8Proc");
		String op_assis9Proc = request.getParameter("op_assis9Proc");
		String op_assis10Proc = request.getParameter("op_assis10Proc");
		String manday1Proc = request.getParameter("manday1Proc");
		String manday2Proc = request.getParameter("manday2Proc");
		String manday3Proc = request.getParameter("manday3Proc");
		String manday4Proc = request.getParameter("manday4Proc");
		
		//결과 금액
		String panel_priceProc = request.getParameter("panel_priceProc");
		String door_priceProc = request.getParameter("door_priceProc");
		String base_priceProc = request.getParameter("base_priceProc");
		String sub_priceProc = request.getParameter("sub_priceProc");
		String cdu_unit_priceProc = request.getParameter("cdu_unit_priceProc");
		String cooler_unit_priceProc = request.getParameter("cooler_unit_priceProc");
		String controll_unit_priceProc = request.getParameter("controll_unit_priceProc");
		String ex_valve_unit_priceProc = request.getParameter("ex_valve_unit_priceProc");
		String elec_valve_unit_priceProc = request.getParameter("elec_valve_unit_priceProc");
		String op_assis1_unit_priceProc = request.getParameter("op_assis1_unit_priceProc");
		String op_assis2_unit_priceProc = request.getParameter("op_assis2_unit_priceProc");
		String op_assis3_unit_priceProc = request.getParameter("op_assis3_unit_priceProc");
		String op_assis4_unit_priceProc = request.getParameter("op_assis4_unit_priceProc");
		String op_assis5_unit_priceProc = request.getParameter("op_assis5_unit_priceProc");
		String op_assis6_unit_priceProc = request.getParameter("op_assis6_unit_priceProc");
		String op_assis7_unit_priceProc = request.getParameter("op_assis7_unit_priceProc");
		String op_assis8_unit_priceProc = request.getParameter("op_assis8_unit_priceProc");
		String op_assis9_unit_priceProc = request.getParameter("op_assis9_unit_priceProc");
		String op_assis10_unit_priceProc = request.getParameter("op_assis10_unit_priceProc");
		String manday1_unit_priceProc = request.getParameter("manday1_unit_priceProc");
		String manday2_unit_priceProc = request.getParameter("manday2_unit_priceProc");
		String manday3_unit_priceProc = request.getParameter("manday3_unit_priceProc");
		String manday4_unit_priceProc = request.getParameter("manday4_unit_priceProc");

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
		model.addAttribute("cduProc",cduProc);
		model.addAttribute("coolerProc",coolerProc);
		model.addAttribute("controlProc",controlProc);
		model.addAttribute("ex_valveProc",ex_valveProc);
		model.addAttribute("elec_valveProc",elec_valveProc);
		model.addAttribute("op_assis1Proc",op_assis1Proc);
		model.addAttribute("op_assis2Proc",op_assis2Proc);
		model.addAttribute("op_assis3Proc",op_assis3Proc);
		model.addAttribute("op_assis4Proc",op_assis4Proc);
		model.addAttribute("op_assis5Proc",op_assis5Proc);
		model.addAttribute("op_assis6Proc",op_assis6Proc);
		model.addAttribute("op_assis7Proc",op_assis7Proc);
		model.addAttribute("op_assis8Proc",op_assis8Proc);
		model.addAttribute("op_assis9Proc",op_assis9Proc);
		model.addAttribute("op_assis10Proc",op_assis10Proc);
		model.addAttribute("manday1Proc",manday1Proc);
		model.addAttribute("manday2Proc",manday2Proc);
		model.addAttribute("manday3Proc",manday3Proc);
		model.addAttribute("manday4Proc",manday4Proc);
		
		model.addAttribute("floor_areaProc",floor_areaProc);
		model.addAttribute("total_areaProc",total_areaProc);
		model.addAttribute("pylsProc",pylsProc);
		
		model.addAttribute("panel_priceProc",panel_priceProc);
		model.addAttribute("door_priceProc",door_priceProc);
		model.addAttribute("base_priceProc",base_priceProc);
		model.addAttribute("sub_priceProc",sub_priceProc);
		model.addAttribute("cdu_unit_priceProc",cdu_unit_priceProc);
		model.addAttribute("cooler_unit_priceProc",cooler_unit_priceProc);
		model.addAttribute("controll_unit_priceProc",controll_unit_priceProc);
		model.addAttribute("ex_valve_unit_priceProc",ex_valve_unit_priceProc);
		model.addAttribute("elec_valve_unit_priceProc",elec_valve_unit_priceProc);
		model.addAttribute("op_assis1_unit_priceProc",op_assis1_unit_priceProc);
		model.addAttribute("op_assis2_unit_priceProc",op_assis2_unit_priceProc);
		model.addAttribute("op_assis3_unit_priceProc",op_assis3_unit_priceProc);
		model.addAttribute("op_assis4_unit_priceProc",op_assis4_unit_priceProc);
		model.addAttribute("op_assis5_unit_priceProc",op_assis5_unit_priceProc);
		model.addAttribute("op_assis6_unit_priceProc",op_assis6_unit_priceProc);
		model.addAttribute("op_assis7_unit_priceProc",op_assis7_unit_priceProc);
		model.addAttribute("op_assis8_unit_priceProc",op_assis8_unit_priceProc);
		model.addAttribute("op_assis9_unit_priceProc",op_assis9_unit_priceProc);
		model.addAttribute("op_assis10_unit_priceProc",op_assis10_unit_priceProc);
		model.addAttribute("manday1_unit_priceProc",manday1_unit_priceProc);
		model.addAttribute("manday2_unit_priceProc",manday2_unit_priceProc);
		model.addAttribute("manday3_unit_priceProc",manday3_unit_priceProc);
		model.addAttribute("manday4_unit_priceProc",manday4_unit_priceProc);
		
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
		int msize_price = 0;int chpy = 0;int panel_price = 0;int door_price = 0;int base_price = 0;int sub_price = 0; //가격 출력
		
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
		
		chpy = Integer.parseInt(pyls);
		
		if(chpy > 100) {
			return "redirect:/#ai";
		}
		
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
		if(msize.equals("90")) { //900 x 
			msize_price = 550000;
		}else if(msize.equals("10")) { //1000 x
			msize_price = 600000;
		}else if(msize.equals("12")) { //1200 x
			msize_price = 1400000;
		}else if(msize.equals("14")) { //1400 x
			msize_price = 2800000;
		}else if(msize.equals("24")) { //2400 x
			msize_price = 2800000;
		}else if(msize.equals("26")) { //2600 x
			msize_price = 3200000;
		}else {
			msize_price = 0; //평수에 맞게 스탠다드 적용 시에 금액은 확인 필요.
		}
		
		panel_price = (int) (total_area * Integer.parseInt(calcPriceEntity.get(0).getPanel())); //우레탄 판넬 가격
		door_price = msize_price; //도어 가격
		base_price = (int) (floor_area * Integer.parseInt(calcPriceEntity.get(0).getBase())); //베이스 가격
		sub_price = (int) (total_area * Integer.parseInt(calcPriceEntity.get(0).getSub())); //부자재 가격
		int total_base_price = panel_price + door_price + base_price + sub_price;
		temper_type = cmd.getTempVal().substring(0,2);
		List<CalcSettingEntity> calcSettingEntity = service.getCalcSetting(pyls,temper_type);
		
		//Price Model
		model.addAttribute("panel_price",decFormat.format(panel_price));
		model.addAttribute("door_price",decFormat.format(door_price));
		model.addAttribute("base_price",decFormat.format(base_price));
		model.addAttribute("sub_price",decFormat.format(sub_price));

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
		
		int total_price = vp1 + vp2 + vp3 + vp4 + vp5 + vp6 + vp7 + 
				vp8 + vp9 + vp10 + vp11 + vp12 + vp13 + vp14 + vp15 + vp16 + vp17 + vp18 + vp19 + total_base_price;
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
		
		return "ai-calc";
	}	
	

	@RequestMapping("/admsp/forgot-password")
	public String forgotPassword() throws Exception {
		return "/admsp/forgot-password";
	}
	
	@RequestMapping("/admsp/login")
	public String login() throws Exception {
		return "/admsp/login";
	}
	
	@RequestMapping("/admsp/404")
	public String notfonud() throws Exception {
		return "/admsp/404";
	}
	
	@RequestMapping("/admsp/register")
	public String register() throws Exception {
		return "/admsp/register";
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
	
	
}
