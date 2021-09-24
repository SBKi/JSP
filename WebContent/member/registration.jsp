<%@page import="day3.dto.Customer"%>
<%@page import="day3.dao.CustomerDao"%>
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
	//참고 : hobby는 배열입니다. -> getParamterValues() 메소드로 데이터를 받습니다. -> 변수 타입은 String[]
	Customer cus = new Customer(0,name,"",email,addr,gender,age,hobbies);
	CustomerDao dao = CustomerDao.getInstance();
	dao.insert(cus);
	
	//1) 추가된 회원정보만 확인
	//request.setAttribute("cus", cus);
	//pageContext.forward("registraion_view.jsp");
	//2) 사용자가 요청하지 않았지만 회원리스트 list.jsp로 요청바꾸기
	response.sendRedirect("list.jsp");
%>
</body>
</html>