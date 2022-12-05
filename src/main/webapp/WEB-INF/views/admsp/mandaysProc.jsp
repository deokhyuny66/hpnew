<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	try{
		request.setCharacterEncoding("utf-8");
		response.sendRedirect("http://localhost:8080/admsp/mandays-list"); 
	}catch(Exception e){
		e.printStackTrace();
		return;
	}
%>