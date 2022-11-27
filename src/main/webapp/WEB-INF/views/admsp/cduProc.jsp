<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.freeze.mybatis.vo.CalcCDUEntity" %>
<%@ page import="com.freeze.mybatis.services.CalcService" %>
<%
	try{
		request.setCharacterEncoding("utf-8");
		/* CalcService cs = new CalcService();
		cs.updateCalcCDU(pid, purchase_price, unit_price);*/
		response.sendRedirect("http://localhost:8080/admsp/cdu-list"); 
	}catch(Exception e){
		e.printStackTrace();
		return;
	}
%>