<%@page import="day3.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day4[]- 고객 수정</title>
<link rel="stylesheet" href="../css/member.css?v=3">
<script>
	function validCheck() {
		
	}
	
	function deleteOk()	{
		const yn = confirm('[주의]등록된 고객에서 삭제하시겠습니까?');
		if(yn){
			alert(`고객 idx ${cus.idx} 를 삭제합니다.`);
			location.href=`deleteOk.jsp?idx=${cus.idx}`;			
		}else {
			alert('고객 삭제를 취소했습니다.');
		}
	
	}
</script>
</head>
<body>
<c:if test="${alert!=null}">
	<script type="text/javascript">
		alert('고객 정보가 수정되었습니다.!');
	</script>
</c:if>

	<div style="width: 70%; margin: auto;">
		<h3>회원 수정</h3>
		<form action="update_save.jsp" name="frmReg" method="post"
			onsubmit="return validCheck()">
			<input type="hidden" name="idx" value="${cus.idx }" >  
			<table style="width: 100%">
				<tr>
					<td><label>이름</label></td>
				
					<td><input type="text" name="name" placeholder="이름 이력(필수)" value="${cus.name }"
						readonly></td>  
				</tr>
				<tr>
					<td><label>이메일</label></td>
					<td><input type="email" name="email" value="${cus.email }"></td>
				</tr>
				<tr>
					<td><label>나이</label></td>
					<td><input type="number" name="age" min="10" max="99" value="${cus.age }"
						readonly></td>
				</tr>
				<tr>
					<td><label for="">주소</label></td>
					<td><select name="addr" id="addr_select">
							<option value="서울">서울</option>
							<option value="인천">인천</option>
							<option value="대전">대전</option>
							<option value="광주">광주</option>
							<option value="기타" selected>기타</option>
					</select> 
					<span id="addr_id">
					<input type="text" name="addr_etc" disabled="disabled" value="${cus.addr }"
							placeholder="기타 지역을 입력하세요." >
					</span></td>
				</tr>
				<tr>
					<td><label>성별</label></td>
					<td>${cus.gender }</td>
				</tr>
				<tr>
					<td><label>취미</label></td>
					<td>${cus.hobby }</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center">
						<input type="submit" value="수정하기"> 
						<input type="button" value="삭제하기" onclick="deleteOk()"> 	
						<input type="button" value="고객목록" onclick="location.href='list.jsp'"> 	
						<input type="reset" value="다시쓰기">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
	document.getElementById("addr_select").addEventListener("change",function(){
		if(this.value=="기타"){ 
			document.frmReg.addr_etc.disabled=false;
		}else {
			document.frmReg.addr_etc.disabled=true;
		}
		
	});
	
	document.querySelectorAll("option").forEach( item => {
		if(item.value===`${cus.addr}`) item.selected=true;   
	});
	
	</script>
</body>
</html>

