<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="kr.co.ezen.LogonDBBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Process - joinMemberPro.jsp</title>
</head>
<body>

	<% request.setCharacterEncoding("UTF-8");%>
	
	<!-- Model -> DTO = VO -->
	<jsp:useBean id="membervo" class="kr.co.ezen.memberVO">
	<jsp:setProperty name="membervo" property="*"/>
	</jsp:useBean>

	<%
	membervo.setReg_date(new Timestamp(System.currentTimeMillis()) );
	LogonDBBean logon = LogonDBBean.getInstance();
	logon.insertMember(membervo);
	%>

	<jsp:getProperty name="membervo" property="id" />님 회원가입을 축하합니다.<br>
	<jsp:getProperty name="membervo" property="passwd" /><br>
	<jsp:getProperty name="membervo" property="name" />
	
<form method="post" action="sessionLogin.jsp">
<input type="submit" value="로그인">
</form>
</body>
</html>