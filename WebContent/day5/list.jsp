<%@page import="day5.dao.MybatisDao"%>
<%@page import="java.util.List"%>
<%@page import="day3.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
	MybatisDao dao = MybatisDao.getInstance();
	List<Customer> list = dao.selectAll();
	request.setAttribute("list", list);
	pageContext.forward("list_view.jsp");
%>
</body>
</html>