<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 액션태그</title>
</head>
<body>
<%
String strMember = request.getParameter("LogName");
%>
<B><%=strMember %></B>
님 저희 홈페이지에 방문해주셔서 감사합니다
</body>
</html>