<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 연습1</title>
</head>
<body>
	<% 
		String ID = request.getParameter("strID"); 
		String pass = request.getParameter ("strPwd");
		
		out.println("아이디 : " + ID + "<BR>");
		out.println("비밀번호 : " + pass);
	%>
<!-- http://localhost:8700/JSPAdvencedSample/Sample3_requestSample04.jsp?strID=111&strPwd=1234 -->
</body>
</html>