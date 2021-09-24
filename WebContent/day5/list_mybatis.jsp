<%@page import="day3.dto.Customer"%>
<%@page import="java.util.List"%>
<%@page import="day5.dao.MybatisDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day6 - Mybatis 테스트</title>
</head>
<body>
<%
	MybatisDao dao = MybatisDao.getInstance();
// 	List<Customer> list = dao.selectAll();
// 	out.print(list);
	
	Customer cus = dao.selectOne(3);
	out.print(cus);
	
	cus.setAddr("testAdd");
	cus.setEmail("pak@na.e");
	dao.update(cus);
	out.print(dao.selectOne(cus.getIdx()));
%>
</body>
</html>