<%@page import="day1.MyUser"%>
<%@page import="java.time.LocalDate"%>
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
		String message = " Hello Java See ya";
	LocalDate now = LocalDate.now();
	%>
	<h4>Hello</h4>
	<ul>
		<li><%=message%></li>
		<li><%=now%></li>
	</ul>

	<%
		String[] names = { "박세리", "김연경", "허재", "안정환" };
	for (int i = 0; i < names.length; i++) {
	%>

	<li><%=i + 1%>:<%=names[i]%> 👍</li>
	
	<%
		}

	MyUser my = new MyUser();
	my.setAge(23);
	my.setName("사나");
	my.setLocation("서울");
	out.print(my); //처음 하는 코딩입니다.
	%>
	</ul>
</body>
</html>