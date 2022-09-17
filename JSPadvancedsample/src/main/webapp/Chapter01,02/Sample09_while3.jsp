<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>while문</title>
</head>
<body>
<%
int intCount = 1;
do {
out.println("회원님은" + intCount + "번째방문입니다.<BR>");
intCount ++;
} while (intCount < 10);
%>
</body>
</html>