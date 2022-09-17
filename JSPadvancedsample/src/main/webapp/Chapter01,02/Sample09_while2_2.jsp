<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>while문</title>
</head>
<body>
<h2>While문예제-임의의값을임의의횟수로곱하기</h2>
<%
int number = Integer.parseInt(request.getParameter("number"));
int num = Integer.parseInt(request.getParameter("num"));
long multiply = 1;
int count = 0;
while(count<num){
	multiply *= number;
	count++;
	}%>
결과: <%=multiply%>

</body>
</html>