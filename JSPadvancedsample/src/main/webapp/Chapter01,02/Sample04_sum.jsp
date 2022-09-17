<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합계 구하기</title>
</head>
<style>
hr{background-color: blue;}
h2{color: red;}
p{;}
</style>
<body>
<!-- 
 1~100 사이의 덧셈을 하여 합계를 출력하는 프로그램 작성
 -->
 <h2 align = "center">1~100의 합계</h2>
	<hr>
	<% 
	int sum = 0;
	for(int i = 1; i<=100; i++){
		sum+=i;
	}
	%>
	
	<p align= "center">1~100의 합계: <%=sum %></p>
	
	
</body>
</html>
