<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[4]</title>

</head>
<body>
	<h3>Request Parameter 연습</h3>
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name"); 
		int age = Integer.parseInt(request.getParameter("age"));
		String location = request.getParameter("location");
		
		MyUser user = new MyUser(name,age,location);
		
		if(age == 0){
		out.print("<script>");
	      out.print("alert('나이를 만드시 입력해야합니다.')");
	      out.print("</script>");
		}else {
		
	%>
	
	<ul>
		<li>이름 : <%= user.getName() %></li>
		<li>나이 : <%= user.getAge()%></li>
		<li>지역 : <%= user.getLocation()%></li>
	</ul>
	<%} %>
</body>
</html>