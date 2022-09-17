<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log Sample Test</title>
</head>
<body>

<%
String ID = request.getParameter("strID");
String strSessionID = session.getId();
int intTime = session.getMaxInactiveInterval();
%>
<B> <%=ID %> 님 환영합니다 . </B> <P>
세션 ID : <%=strSessionID %> <BR>
세션 시간 : <%=intTime%>
</body>
</html>