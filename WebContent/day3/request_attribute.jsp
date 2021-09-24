<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	MyUser vo =new MyUser("사나",23,"서울");
	int val1 =23;
	String val2 = "hello";
	
	request.setAttribute("att1", vo);
	request.setAttribute("att2", val1);
	request.setAttribute("att3",val2);
	
	pageContext.forward("request_result.jsp");
%>
</body>
</html>