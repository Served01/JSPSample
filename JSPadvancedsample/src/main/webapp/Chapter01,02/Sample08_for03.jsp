<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 예제 - for문3</title>
</head>
<body>
	<h2 align="center">성적처리</h2>
	<hr>

	<%
	int jumsu[] = {80, 90, 100, 78, 88, 45, 56, 67, 78, 100, 100};
	int sum=0;
	double avg=0.0;

	for (int i = 0; i < jumsu.length; i++){ 
			sum+=jumsu[i];
	}
	 avg = sum / jumsu.length;		
		
		out.print("JSP 과목에 대한 " + "<br>");
		out.print("인원수는 " + jumsu.length + "명이고 <br>");
		out.print("총점은 : " + sum + "<br>");
		out.print("평균은 : " + avg + "<br>");		
%>

</body>
</html>