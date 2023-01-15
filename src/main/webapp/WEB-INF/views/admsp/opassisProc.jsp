<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	try{
		request.setCharacterEncoding("utf-8");
		response.sendRedirect("https://coolinic.com/admsp/opassis-list"); 
	}catch(Exception e){
		e.printStackTrace();
		return;
	}
%>