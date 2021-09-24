<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[7]</title>
<link rel="stylesheet" href="../css/member.css?v=3">
</head>
<body>
<h3>환영합니다. WELCOME!!!</h3>
<ul>
	<li id="name">${cus.name } 님</li>
	<li>${cus.email }</li>
	<li>${cus.age} 세 (${cus.gender eq 'male' ? '남성' : '여성'} ) </li>
	<li>지역 : ${cus.addr }</li>
	<li>취미 : ${cus.hobby }</li>
</ul>
<a href="list.jsp">회원 리스트</a>
</body>
</html>