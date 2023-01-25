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
import org.springframework.web.bind.annotation.RestController;
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
public class AdmspController {
	
	@Autowired
	private CalcService service;

//	데이터 세팅 - 구역 DB에서 전체 데이터 조회해서 최종 VIEW에 뿌리기
//  여기에서 최종적으로 Service 등록해주고 Object를 전달해줘야 VIEW에 뿌릴수 있음.
	@RequestMapping(value = "/admsp/products-list")
	public String productsList(HttpServletRequest request, Model model) throws Exception {
		List<CalcBaseEntity> calcBaseEntity = service.getBaseCDU();
		List<CalcCDUEntity> calcCDUEntity = service.getCalcCDU();
		List<CalcCoolerEntity> calcCoolerEntity = service.getCalcCooler();
		List<CalcControllEntity> calcControllEntity = service.getCalcControll();
		List<CalcExvalveEntity> calcExvalveEntity = service.getCalcExvalve();
		List<CalcElecvalveEntity> calcElecvalveEntity = service.getCalcElecvalve();
		List<CalcOpassisEntity> calcOpassisEntity = service.getCalcOpassis();
		List<CalcMandaysEntity> calcMandaysEntity = service.getCalcMandays();
		model.addAttribute("calcBaseEntity", calcBaseEntity);
		model.addAttribute("cduEntitylist", calcCDUEntity);
		model.addAttribute("coolerEntitylist", calcCoolerEntity);
		model.addAttribute("controllEntitylist", calcControllEntity);
		model.addAttribute("exvalveEntitylist", calcExvalveEntity);
		model.addAttribute("elecvalveEntitylist", calcElecvalveEntity);
		model.addAttribute("opassisEntitylist", calcOpassisEntity);
		model.addAttribute("mandaysEntitylist", calcMandaysEntity);
		return "/admsp/products-list";
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

}
