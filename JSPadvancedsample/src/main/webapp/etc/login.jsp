<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:useBean id="login" class="loginSample.LoginBean" scope="page"/>

</head>
<body>

<jsp:setProperty name="login" property="*" />

<H2>로그인 예제</H2>
<HR>
<%
if(!login.checkUser()){
%>
<script>
alert("로그인 실패 !!")
history.go(-1);
</script>
<%
} else{
out.println("로그인 성공 !!");
%>
<HR>
사용자 아이디 : <jsp:getProperty name="login" property="userid"/><br>
사용자 패스워드 : <jsp:getProperty name="login" property="passwd"/>
<%} %>
</body>
</html>