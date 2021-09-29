<%@page import="day3.dto.Customer"%>
<%@page import="day5.dao.MybatisDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String alert = request.getParameter("alert");
	int idx = Integer.parseInt(request.getParameter("idx"));
	MybatisDao dao = MybatisDao.getInstance();
	Customer cus = dao.selectOne(idx);
	
	request.setAttribute("cus", cus);
	if (alert!=null) request.setAttribute("alert", "y");     
	pageContext.forward("update_view.jsp");
%>