<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 회원별 포인트 제도를 이용하여 회원의 등급을 표시하여 출력합니다.
    일반등급: 0~1000점, 실버등급: 1001~3000점, 베스트등급: 3001~5000점,
    골드등급: 5001~8000점, VIP등급: 8001~30000, VVIP: 30001이상 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	hr{
	color: red;
	border-width: thick;
	border-color: blue;
	border-style: solid;
	}
	h3{
	color:red;
	}
	input{
	background-color: yellow;
	}
</style>
<title>회원 등급 처리 출력</title>
</head>
<body>
<h3>회원 등급 처리 출력</h3>
    <hr>
	<form method="post" action="Sample07_member.jsp">
	포인트점수: <input type="text" name="point"><br>
	이름: <input type="text" name="name"><br>
	가입년도: <input type="text" name="year">
	<input type="submit" value="입력완료">
	</form>
</body>
</html>