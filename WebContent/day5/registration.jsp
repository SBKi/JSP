<%@page import="day5.dao.MybatisDao"%>
<%@page import="day3.dto.Customer"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");	
	String name = request.getParameter("name");   
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age"));   //Vo 객체에 저장할 때 필요합니다.
	String addr = request.getParameter("addr");
	if(addr.equals("기타"))addr=request.getParameter("addr_etc");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby");
	String hobbies = Arrays.toString(request.getParameterValues("hobby"));
	hobbies = hobbies.substring(1, hobbies.length()-1);
	
	MybatisDao dao = MybatisDao.getInstance();
	Customer cus = new Customer(0,name,"",email,addr,gender,age,hobbies);
	dao.insert(cus);
	
	request.setAttribute("cus", cus);
	pageContext.forward("registraion_view.jsp");
	
%>
</body>
</html>