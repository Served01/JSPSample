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
long lastTime = session.getLastAccessedTime();
long createTime = session.getCreationTime();
long useTime = (lastTime-createTime)/60000; // 출력결과를 초단위로
%>
<%=useTime %>
초
동안 사이트에 접속되어 있습니다
</body>
</html>