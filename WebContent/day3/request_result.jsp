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
MyUser user =  (MyUser)request.getAttribute("att1");
int val1  =  (int)request.getAttribute("att2");
String val2 =  (String)request.getAttribute("att3");


%>
<%=user %>
</body>
</html>