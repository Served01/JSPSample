<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식 선택 프로그램</title>
</head>
<body>

<h3 align="center">먹고 싶은 것 하나만 선택 ?</h3>
<hr>
<form align="center" method="post" action="Program1_2.jsp">
<input type="radio" name="china" value="1">
짜장면<br>
<img width="400" height="250" src="images/jajang.PNG"><br>
<input type="radio" name="china" value="2">
짬뽕<br>
<img width="400" height="250" src="images/jjambbong.PNG"><br>
<input type="radio" name="china" value="3">
탕수육<br>
<img width="400" height="250" src="images/tangsuyuk.PNG">
<hr>
<input type="radio" name="china" value="4">
입력 안함(결과보기용)<br>
<input type="submit" value="선택">
</form>

</body>
</html>