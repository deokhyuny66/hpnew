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
	String callNumber = (String) request.getAttribute("callNumber");
	String emailNM = (String) request.getAttribute("emailNM");
	String typeNM = (String) request.getAttribute("typeNM");
	String contactType = (String) request.getAttribute("contactType");
	String contents = (String) request.getParameter("contents");
	
	Properties p = new Properties(); // 정보를 담을 객체
	 
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
		
		msg.setSubject("[문의할게요]");
		
		StringBuffer buffer = new StringBuffer();
		buffer.append("[문의내용] <br/>");
		buffer.append("성함 : "+nameNM +"<br/>");
		buffer.append("상호 : "+companyNM +"<br/>");
		buffer.append("연락처 : "+callNumber +"<br/>");
		buffer.append("이메일 : "+emailNM +"<br/>");
		buffer.append("구분 : "+typeNM +"<br/>");
		buffer.append("문의유형 : "+contactType +"<br/>");
		buffer.append("문의사항 : "+contents +"<br/>");
		
		Address fromAddr = new InternetAddress("dhyoo@coolinic.com");
		msg.setFrom(fromAddr); 
	
		Address toAddr = new InternetAddress("team@coolinic.com");
	    msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
	     
	    msg.setContent(buffer.toString(), "text/html;charset=UTF-8"); // 내용
	    Transport.send(msg); // 전송  
		response.sendRedirect("https://coolinic.com/#about");
	}catch(Exception e){
		e.printStackTrace();
		return;
	}
%>
