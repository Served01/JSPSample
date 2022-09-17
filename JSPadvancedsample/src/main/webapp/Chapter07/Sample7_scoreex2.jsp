<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름과 점수 입력 - Sample7_Score</title>
</head>
<body>
<h2>JavaBeans를 이용한 학생의 점수에 따른 성적 처리 예제</h2>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="score2" class="Beans.GradeBean2" scope="page" />

<%String name = request.getParameter("name");
  String korpoint = request.getParameter("korpoint");
  String engpoint = request.getParameter("engpoint");
  String matpoint = request.getParameter("matpoint");
  %>
<jsp:setProperty name="score2" property="name" param="name" />
<jsp:setProperty name="score2" property="korpoint" param="korpoint" />
<jsp:setProperty name="score2" property="engpoint" param="engpoint" />
<jsp:setProperty name="score2" property="matpoint" param="matpoint" />
<HR>
<h3 align="center">결과 출력</h3>
<form>
<table align="center" border="5">
<tr>
<td>이름</td> 
<td><jsp:getProperty name="score2" property="name"/></td>
</tr>
<tr>
<td>국어</td> 
<td align="center">
<jsp:getProperty name="score2" property="korpoint"/></td>
</tr>
<tr>
<td>영어</td>
<td align="center">
<jsp:getProperty name="score2" property="engpoint"/></td>
</tr>
<tr>
<td>수학</td>
<td align="center">
<jsp:getProperty name="score2" property="matpoint"/></td>
</tr>
<tr>
<td>총합</td>
<td align="center">
<jsp:getProperty name="score2" property="totalpoint"/></td>
</tr>
<tr>
<td>평균</td>
<td align="center">
<jsp:getProperty name="score2" property="avgpoint"/></td>
</tr>
</table>
</form>
</body>
</html>