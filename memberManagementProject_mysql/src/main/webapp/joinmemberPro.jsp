<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입처리</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="kr.co.ezen.LogonDBBean"%>
<% request.setCharacterEncoding("UTF-8");%>
<!-- Model => DTO = VO -->
<jsp:useBean id="membervo" class="kr.co.ezen.memberVO">
<jsp:setProperty name="membervo" property="*"/>
</jsp:useBean>
<%
membervo.setReg_date(new Timestamp(System.currentTimeMillis()) );
LogonDBBean logon = LogonDBBean.getInstance();
logon.insertMember(membervo);
%>

<jsp:getProperty name="membervo" property="id"/> 
<jsp:getProperty name="membervo" property="passwd"/> 
<jsp:getProperty name="membervo" property="name"/> 
님 회원가입을 축하합니다.

</body>
</html>