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
public class AdmspSetController {

	@Autowired
	private CalcService service;
	
//	데이터 세팅 - CDU Products
	 @ResponseBody
     @RequestMapping(value = "/admsp/cduAjax")
	 public String cduAjax(@RequestBody CalcCDUEntity cdu, String cdu_ctn) throws Exception {
		 String getPrice = null;
		 List<CalcCDUEntity> calcCDUEntity = service.getOneCalcCDU(cdu.getPid());
		 String getUnitPrice = calcCDUEntity.get(0).getUnit_price();
		 if(getUnitPrice.equals(null) || getUnitPrice.equals("") ||
			  getUnitPrice.equals(0) || getUnitPrice.equals("0")) { getPrice = ""; }
		 else { getPrice=calcCDUEntity.get(0).getUnit_price(); }
		 
		 return getPrice;
	 }
	 
//	데이터 세팅 - CDU Products All
	@RequestMapping(value = "/admsp/cduAllAjax", method=RequestMethod.POST)
	public @ResponseBody void sendAjaxGetCDUAll(@RequestBody CalcViewEntity view) throws Exception {
		service.updateCduProductsAll(view);
	}
	

//	데이터 세팅 - Cooler Products All
 	@RequestMapping(value="/admsp/coolerAllAjax", method=RequestMethod.POST)
	public @ResponseBody void sendAjaxGetCoolerAll(@RequestBody CalcViewEntity view) throws Exception {
		service.updateCoolerProductsAll(view);
	}
	
//	 데이터 세팅 - Cooler Products
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
	
//		데이터 세팅 - Controll Products
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
		public @ResponseBody void sendAjaxGetOpassis1All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis1ProductsAll(view);
		}
			
//		데이터 세팅 - Opassis1 Products
		 @RequestMapping(value="/admsp/opassis1Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassis1One(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Opassis2 Products All
	 	@RequestMapping(value="/admsp/opassis2AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetOpassis2All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis2ProductsAll(view);
		}
			
//		데이터 세팅 - Opassis2 Products
		 @RequestMapping(value="/admsp/opassis2Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassis2One(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Opassis3 Products All
	 	@RequestMapping(value="/admsp/opassis3AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetOpassis3All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis3ProductsAll(view);
		}
			
//		데이터 세팅 - Opassis3 Products
		 @RequestMapping(value="/admsp/opassis3Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassis3One(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Opassis4 Products All
	 	@RequestMapping(value="/admsp/opassis4AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetOpassis4All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis4ProductsAll(view);
		}
			
//		데이터 세팅 - Opassis4 Products
		 @RequestMapping(value="/admsp/opassis4Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassis4One(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Opassis5 Products All
	 	@RequestMapping(value="/admsp/opassis5AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetOpassis5All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis5ProductsAll(view);
		}
		
//		데이터 세팅 - Opassis5 Products
		 @RequestMapping(value="/admsp/opassis5Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassis5One(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Opassis6 Products All
	 	@RequestMapping(value="/admsp/opassis6AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetOpassis6All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis6ProductsAll(view);
		}
			
//		데이터 세팅 - Opassis5 Products
		 @RequestMapping(value="/admsp/opassis6Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassis6One(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Opassis7 Products All
	 	@RequestMapping(value="/admsp/opassis7AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetOpassis7All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis7ProductsAll(view);
		}
			
//		데이터 세팅 - Opassis7 Products
		 @RequestMapping(value="/admsp/opassis7Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassis7One(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Opassis8 Products All
	 	@RequestMapping(value="/admsp/opassis8AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetOpassis8All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis8ProductsAll(view);
		}
			
//		데이터 세팅 - Opassis8 Products
		 @RequestMapping(value="/admsp/opassis8Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassis8One(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Opassis9 Products All
	 	@RequestMapping(value="/admsp/opassis9AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetOpassis9All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis9ProductsAll(view);
		}
			
//		데이터 세팅 - Opassis8 Products
		 @RequestMapping(value="/admsp/opassis9Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassis9One(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Opassis10 Products All
	 	@RequestMapping(value="/admsp/opassis10AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetOpassis10All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateOpassis10ProductsAll(view);
		}
			
//		데이터 세팅 - Opassis10 Products
		 @RequestMapping(value="/admsp/opassis10Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetOpassis10One(@RequestBody CalcOpassisEntity opassis, String opassis_ctn) throws Exception {
			 List<CalcOpassisEntity> calcOpassisEntity = service.getOneCalcOpassis(opassis.getPid());
			 String getUnitPrice = calcOpassisEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcOpassisEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Mandays1 Products All
	 	@RequestMapping(value="/admsp/manday1AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetMandays1All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateMandays1ProductsAll(view);
		}
			
//		데이터 세팅 - Mandays1 Products
		 @RequestMapping(value="/admsp/manday1Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetMandays1One(@RequestBody CalcMandaysEntity manday, String manday_ctn) throws Exception {
			 List<CalcMandaysEntity> calcMandaysEntity = service.getOneCalcMandays(manday.getPid());
			 String getUnitPrice = calcMandaysEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcMandaysEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Mandays2 Products All
	 	@RequestMapping(value="/admsp/manday2AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetMandays2All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateMandays2ProductsAll(view);
		}
			
//		데이터 세팅 - Mandays2 Products
		 @RequestMapping(value="/admsp/manday2Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetMandays2One(@RequestBody CalcMandaysEntity manday, String manday_ctn) throws Exception {
			 List<CalcMandaysEntity> calcMandaysEntity = service.getOneCalcMandays(manday.getPid());
			 String getUnitPrice = calcMandaysEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcMandaysEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Mandays3 Products All
	 	@RequestMapping(value="/admsp/manday3AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetMandays3All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateMandays3ProductsAll(view);
		}
			
//		데이터 세팅 - Mandays3 Products
		 @RequestMapping(value="/admsp/manday3Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetMandays3One(@RequestBody CalcMandaysEntity manday, String manday_ctn) throws Exception {
			 List<CalcMandaysEntity> calcMandaysEntity = service.getOneCalcMandays(manday.getPid());
			 String getUnitPrice = calcMandaysEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcMandaysEntity.get(0).getUnit_price();
			 }
		 }
		 
//		데이터 세팅 - Mandays4 Products All
	 	@RequestMapping(value="/admsp/manday4AllAjax", method=RequestMethod.POST)
		public @ResponseBody void sendAjaxGetMandays4All(@RequestBody CalcViewEntity view) throws Exception {
			service.updateMandays4ProductsAll(view);
		}
			
//		데이터 세팅 - Mandays4 Products
		 @RequestMapping(value="/admsp/manday4Ajax", method=RequestMethod.POST) 
		 public @ResponseBody String sendAjaxGetMandays4One(@RequestBody CalcMandaysEntity manday, String manday_ctn) throws Exception {
			 List<CalcMandaysEntity> calcMandaysEntity = service.getOneCalcMandays(manday.getPid());
			 String getUnitPrice = calcMandaysEntity.get(0).getUnit_price();
			 if(getUnitPrice.equals(null) || getUnitPrice.equals("") || getUnitPrice.equals(0) || getUnitPrice.equals("0")) {
				 return "";
			 }else {
				 return calcMandaysEntity.get(0).getUnit_price();
			 }
		 }
		 
//		DB 구역별 가격 업데이트
		@RequestMapping("/admsp/cduProc")
		public String cduProc(HttpServletRequest request) throws Exception {
			CalcCDUEntity cduEnty = new CalcCDUEntity();
			cduEnty.setPid(request.getParameter("cduPid"));
			cduEnty.setPurchase_price(request.getParameter("cduPurchase"));
			cduEnty.setUnit_price(request.getParameter("cduUnit"));
			service.updateCalcCDU(cduEnty.getPid(),cduEnty.getPurchase_price(),cduEnty.getUnit_price());
			return "/admsp/cduProc";
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
		@RequestMapping("/admsp/mandayProc")
		public void mandaysProc(HttpServletRequest request) throws Exception {
			CalcMandaysEntity mandaysEnty = new CalcMandaysEntity();
			mandaysEnty.setPid(request.getParameter("mandayPid"));
			mandaysEnty.setPurchase_price(request.getParameter("mandayPurchase"));
			mandaysEnty.setUnit_price(request.getParameter("mandayUnit"));
			service.updateCalcMandays(mandaysEnty.getPid(),mandaysEnty.getPurchase_price(),mandaysEnty.getUnit_price());
		}
	 
}
