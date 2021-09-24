<%@page import="java.util.List"%>
<%@page import="day3.dao.CustomerDao"%>
<%@page import="day3.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day3[4]- db 회원 리스트</title>
<link rel="stylesheet" href="../css/member.css?v=3">
</head>
<body>
<h3> 고객 리스트 WELCOME!!!</h3>
<c:forEach var="cus" items="${list}">  
<ul> 
	<li><a>${cus.name}</a> 님</li>
	<li id="email">${cus.email }</li>
	<li>${cus.age} 세 (${cus.gender eq 'male' ? '남성' : '여성'} ) </li>
	<li>${cus.addr }</li>
	<li id="hobby">${cus.hobby }</li>
</ul>
</c:forEach>
</body>
</html>