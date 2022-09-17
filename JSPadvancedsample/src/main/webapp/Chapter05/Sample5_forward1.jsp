<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 액션태그</title>
</head>
<body>
<Form Action = "Sample5_forward2.jsp" Method = "get">
다운로드 페이지에 오신 것을 환영 합니다 .<br>
원하는 프로그램을 선택하세요 .<p>
<select name = "download">
<option selected value="1"> JDK </option>
<option value="2">톰캣</option>
<option value="3">EditPlus</option>
</select>
<Input type=submit value="이동">
</Form>
</BODY>
</body>
</html>