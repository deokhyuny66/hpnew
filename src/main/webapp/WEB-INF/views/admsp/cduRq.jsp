<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.freeze.mybatis.vo.CalcCDUEntity" %>
<%@ page import="com.freeze.mybatis.services.CalcService" %>
<%
	try{
		request.setCharacterEncoding("utf-8");
		response.sendRedirect("https://coolinic.com/admsp/products-list"); 
	}catch(Exception e){
		e.printStackTrace();
		return;
	}
%>