<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="com.freeze.mail.SMTPAuthenticatior"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.servlet.http.HttpServletRequest" %>
<%@page import="org.springframework.web.context.request.NativeWebRequest" %>
<%
	request.setCharacterEncoding("utf-8");
	String nameNM = (String) request.getAttribute("nameNM");
	String companyNM = (String) request.getAttribute("companyNM");
	String cellphone = (String) request.getAttribute("cellphone");
	String hopeDate = (String) request.getAttribute("hopeDate");
	String address = (String) request.getAttribute("address");
	String reqContact = (String) request.getAttribute("reqContact");
	String agree_all = (String) request.getAttribute("agree_all");
	String agree_o = (String) request.getAttribute("agree_o");
	String agree_p = (String) request.getAttribute("agree_p");
	
	String panel_priceProc = (String) request.getAttribute("panel_priceProc");
	String door_priceProc = (String) request.getAttribute("door_priceProc");
	String base_priceProc = (String) request.getAttribute("base_priceProc");
	String sub_priceProc = (String) request.getAttribute("sub_priceProc");
	
	String widProc = (String) request.getAttribute("widProc");
	String vertProc = (String) request.getAttribute("vertProc");
	String hegProc = (String) request.getAttribute("hegProc");
	String floor_areaProc = (String) request.getAttribute("floor_areaProc");
	String total_areaProc = (String) request.getAttribute("total_areaProc");
	String pylsProc = (String) request.getAttribute("pylsProc");
	String storeProc = (String) request.getAttribute("storeProc");
	String temper_typeProc = (String) request.getAttribute("temper_typeProc");
	String mtypeProc = (String) request.getAttribute("mtypeProc");
	String msizeProc = (String) request.getAttribute("msizeProc");
	String purcheseProc = (String) request.getAttribute("purcheseProc");
	
	String cduProc = (String) request.getAttribute("cduProc");
	String cdu_unit_priceProc = (String) request.getAttribute("cdu_unit_priceProc");
	String coolerProc = (String) request.getAttribute("coolerProc");
	String cooler_unit_priceProc = (String) request.getAttribute("cooler_unit_priceProc");
	String controlProc = (String) request.getAttribute("controlProc");
	String control_unit_priceProc = (String) request.getAttribute("control_unit_priceProc");
	String ex_valveProc = (String) request.getAttribute("ex_valveProc");
	String ex_valve_unit_priceProc = (String) request.getAttribute("ex_valve_unit_priceProc");
	String elec_valveProc = (String) request.getAttribute("elec_valveProc");
	String elec_valve_unit_priceProc = (String) request.getAttribute("elec_valve_unit_priceProc");
	String op_assis1Proc = (String) request.getAttribute("op_assis1Proc");
	String op_assis1_unit_priceProc = (String) request.getAttribute("op_assis1_unit_priceProc");
	String op_assis2Proc = (String) request.getAttribute("op_assis2Proc");
	String op_assis2_unit_priceProc = (String) request.getAttribute("op_assis2_unit_priceProc");
	String op_assis3Proc = (String) request.getAttribute("op_assis3Proc");
	String op_assis3_unit_priceProc = (String) request.getAttribute("op_assis3_unit_priceProc");
	String op_assis4Proc = (String) request.getAttribute("op_assis4Proc");
	String op_assis4_unit_priceProc = (String) request.getAttribute("op_assis4_unit_priceProc");
	String op_assis5Proc = (String) request.getAttribute("op_assis5Proc");
	String op_assis5_unit_priceProc = (String) request.getAttribute("op_assis5_unit_priceProc");
	String op_assis6Proc = (String) request.getAttribute("op_assis6Proc");
	String op_assis6_unit_priceProc = (String) request.getAttribute("op_assis6_unit_priceProc");
	String op_assis7Proc = (String) request.getAttribute("op_assis7Proc");
	String op_assis7_unit_priceProc = (String) request.getAttribute("op_assis7_unit_priceProc");
	String op_assis8Proc = (String) request.getAttribute("op_assis8Proc");
	String op_assis8_unit_priceProc = (String) request.getAttribute("op_assis8_unit_priceProc");
	String op_assis9Proc = (String) request.getAttribute("op_assis9Proc");
	String op_assis9_unit_priceProc = (String) request.getAttribute("op_assis9_unit_priceProc");
	String op_assis10Proc = (String) request.getAttribute("op_assis10Proc");
	String op_assis10_unit_priceProc = (String) request.getAttribute("op_assis10_unit_priceProc");
	
	String manday1Proc = (String) request.getAttribute("manday1Proc");
	String manday1_unit_priceProc = (String) request.getAttribute("manday1_unit_priceProc");
	String manday2Proc = (String) request.getAttribute("manday2Proc");
	String manday2_unit_priceProc = (String) request.getAttribute("manday2_unit_priceProc");
	String manday3Proc = (String) request.getAttribute("manday3Proc");
	String manday3_unit_priceProc = (String) request.getAttribute("manday3_unit_priceProc");
	String manday4Proc = (String) request.getAttribute("manday4Proc");
	String manday4_unit_priceProc = (String) request.getAttribute("manday4_unit_priceProc");
	String total_priceProc = (String) request.getAttribute("total_priceProc");

	Properties p = new Properties(); 
	 
	p.put("mail.smtp.host", "smtp.gmail.com");
	p.put("mail.smtp.port", "587");
	p.put("mail.smtp.isSSL", "true");
	p.put("mail.smtp.starttls.enable", "true");
	p.put("mail.smtp.auth", "true");
	p.put("mail.smtp.debug", "true");
	
	 
	try{
		Authenticator auth = new SMTPAuthenticatior();
		Session ses = Session.getInstance(p, auth);
		
		ses.setDebug(true);
		MimeMessage msg = new MimeMessage(ses);
		
		msg.setSubject("[?????? ????????? ??????]");
		
		StringBuffer buffer = new StringBuffer();
		buffer.append("[????????? ??????] <br/>");
		buffer.append("?????? : "+nameNM +"<br/>");
		buffer.append("????????? : "+companyNM +"<br/>");
		buffer.append("????????? : "+cellphone +"<br/>");
		buffer.append("?????????????????? : "+hopeDate +"<br/>");
		buffer.append("???????????? : "+address +"<br/>");
		buffer.append("??????/?????? : "+reqContact +"<br/>");
		buffer.append("???????????? ?????? : "+agree_all +"<br/><br/>");
		
		buffer.append("[?????? ??????] <br/>");
		buffer.append("?????? : "+widProc +"<br/>");
		buffer.append("?????? : "+vertProc +"<br/>");
		buffer.append("?????? : "+hegProc +"<br/>");
		buffer.append("???????????? : "+storeProc +"<br/>");
		buffer.append("???????????? : "+temper_typeProc +"<br/>");
		buffer.append("????????? ?????? : "+mtypeProc +"<br/>");
		buffer.append("????????? ????????? : "+msizeProc +"<br/>");
		buffer.append("???????????? : "+purcheseProc +"<br/><br/>");
		
		buffer.append("[?????? ??????] <br/>");
		buffer.append("???????????? : "+floor_areaProc +"<br/>");
		buffer.append("???????????? : "+total_areaProc +"<br/>");
		buffer.append("???????????? : "+pylsProc +"<br/>");
		buffer.append("?????? : "+storeProc +"<br/>");
		buffer.append("????????? : "+mtypeProc +"<br/>");
		buffer.append("????????? ????????? : "+msizeProc +"<br/>");
		buffer.append("???????????? : "+purcheseProc +"<br/>");
		buffer.append("CDU : "+cduProc +"<br/>");
		buffer.append("COOLER : "+coolerProc +"<br/>");
		buffer.append("????????? : "+controlProc +"<br/>");
		buffer.append("???????????? : "+ex_valveProc +"<br/>");
		buffer.append("???????????? : "+elec_valveProc +"<br/>");
		buffer.append("???????????? : "+op_assis1Proc +"<br/>");
		buffer.append("???????????? : "+op_assis2Proc +"<br/>");
		buffer.append("?????? ????????? : "+op_assis3Proc +"<br/>");
		buffer.append("?????? ????????? : "+op_assis4Proc +"<br/>");
		buffer.append("?????? ????????? : "+op_assis5Proc +"<br/>");
		buffer.append("?????? ????????? : "+op_assis6Proc +"<br/>");
		buffer.append("????????? ?????? ????????? 1 : "+op_assis7Proc +"<br/>");
		buffer.append("????????? ?????? ????????? 1 : "+op_assis8Proc +"<br/>");
		buffer.append("?????? ?????? ????????? 1 : "+op_assis9Proc +"<br/>");
		buffer.append("?????? ?????? ????????? 2 : "+op_assis10Proc +"<br/>");
		buffer.append("????????? 1 : "+manday1Proc +"<br/>");
		buffer.append("????????? 2 : "+manday2Proc +"<br/>");
		buffer.append("????????? 3 : "+manday3Proc +"<br/>");
		buffer.append("????????? 4 : "+manday4Proc +"<br/><br/>");
		
		buffer.append("[?????? ??????] <br/>");
		buffer.append("????????? ?????? : "+panel_priceProc +"<br/>");
		buffer.append("?????? : "+door_priceProc +"<br/>");
		buffer.append("????????? : "+base_priceProc +"<br/>");
		buffer.append("????????? : "+sub_priceProc +"<br/>");
		buffer.append("CDU : "+cdu_unit_priceProc +"<br/>");
		buffer.append("COOLER : "+cooler_unit_priceProc +"<br/>");
		buffer.append("????????? : "+control_unit_priceProc +"<br/>");
		buffer.append("???????????? : "+ex_valve_unit_priceProc +"<br/>");
		buffer.append("???????????? : "+elec_valve_unit_priceProc +"<br/>");
		buffer.append("???????????? : "+op_assis1_unit_priceProc +"<br/>");
		buffer.append("???????????? : "+op_assis2_unit_priceProc +"<br/>");
		buffer.append("?????? ????????? : "+op_assis3_unit_priceProc +"<br/>");
		buffer.append("?????? ????????? : "+op_assis4_unit_priceProc +"<br/>");
		buffer.append("?????? ????????? : "+op_assis5_unit_priceProc +"<br/>");
		buffer.append("?????? ????????? : "+op_assis6_unit_priceProc +"<br/>");
		buffer.append("????????? ?????? ????????? 1 : "+op_assis7_unit_priceProc +"<br/>");
		buffer.append("????????? ?????? ????????? 2 : "+op_assis8_unit_priceProc +"<br/>");
		buffer.append("?????? ?????? ????????? 1 : "+op_assis9_unit_priceProc +"<br/>");
		buffer.append("?????? ?????? ????????? 2 : "+op_assis10_unit_priceProc +"<br/>");
		buffer.append("????????? 1 : "+manday1_unit_priceProc +"<br/>");
		buffer.append("????????? 2 : "+manday2_unit_priceProc +"<br/>");
		buffer.append("????????? 3 : "+manday3_unit_priceProc +"<br/>");
		buffer.append("????????? 4 : "+manday4_unit_priceProc +"<br/><br/>");
		
		buffer.append("??? ?????? : "+total_priceProc +"<br/>");
		
		Address fromAddr = new InternetAddress("dhyoo@coolinic.com");
		msg.setFrom(fromAddr); 

		Address toAddr = new InternetAddress("team@coolinic.com");
	    msg.addRecipient(Message.RecipientType.TO, toAddr); 
	     
	    msg.setContent(buffer.toString(), "text/html;charset=UTF-8"); 
	    Transport.send(msg); 
		response.sendRedirect("http://localhost:8080/#ai");
	}catch(Exception e){
		e.printStackTrace();
		return;
	}
%>

