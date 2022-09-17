<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP World</title>
</head>
<body>
	<h2>JSP 세계에 오신것을 환영합니다.</h2>
	<% //JSP파일에서 JAVA 코딩을 하고 싶으면 왼쪽과 같은 기호를 쓴다.
		
		System.out.println("방가방가");//이 코드 결과값은 콘솔값에 나온다.
	
		out.println("우리 모두");
		out.println("JSP 프로그래밍 공부 열심히 해요.");
	%>
</body>
</html>