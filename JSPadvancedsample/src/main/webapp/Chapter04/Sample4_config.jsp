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
out.println("서블릿 이름 : " + config.getServletName()+"<BR>");
ServletContext context = config.getServletContext();
out.println("서버 메이저 버전 : "+context.getMajorVersion () + "<br>");
out.println("서버 마이너 버전 : "+context.getMinorVersion ());
%>
</body>
</html>