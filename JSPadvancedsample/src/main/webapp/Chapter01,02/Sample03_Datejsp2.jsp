<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜2</title>
</head>
<body>
<!-- 
 getDate() 호출하면, 리턴하여 날짜와 시간을 출력하는 프로그램 작성.
 -->
	<h2>Hello World</h2>
	<%! Date dtime = new Date();
	 Date getDate() {//<%!에서 !는 전역 함수로 되게 한다.
		return dtime;
	}%>
	오늘의 날짜와 시간은 : <%=getDate()%>
</body>
</html>
