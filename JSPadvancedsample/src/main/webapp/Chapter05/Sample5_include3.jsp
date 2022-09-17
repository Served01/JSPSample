<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그</title>
</head>
<body>
<%
String strName = request.getParameter("strID");
%>
<B><%=strName%>님 언제나 저희 사이트를 이용해 주셔서 감사합니다 .</b>
<HR>
</body>
</html>