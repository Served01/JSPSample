<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="Sample4_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error 객체</title>
</head>
<body>
<%
int intNum1 = 50;
int intNum2 = 10;
int intResult = intNum1 / intNum2;
out.println(intResult);
%>
</body>
</html>