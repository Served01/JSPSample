<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름과 점수 입력하고 총합 및 평균 - Sample7_Score</title>
</head>
<body>
<h2>이름과 점수를 입력하세요</h2>
<form method="post" action="Sample7_scoreex2.jsp">
이름: <input type="text" name="name" size=16><br>
국어 점수: <input type="text" name="korpoint" size=3><br>
영어 점수: <input type="text" name="engpoint" size=3><br>
수학 점수: <input type="text" name="matpoint" size=3><p>
<input type="submit" name="입력완료">
<input type="reset" name="다시쓰기">
</form>
</body>
</html>