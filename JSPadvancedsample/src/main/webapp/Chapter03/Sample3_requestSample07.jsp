<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 연습2</title>
</head>
<body>
	JSP 환경 설정을 위한 다운로드 페이지 입니다.	
	<form action = "Sample3_requestSample08.jsp" method = "get">
	
	<select name = "download">
		<option selected value="1"> Oracle </option>
		<option value="2"> ApacheTomcat </option>
		<option value="3"> Microsoft </option>
		<option value="4"> HP </option>
	</select>	
	<input type="submit" value="이동">	
	</form>
</body>
</html>