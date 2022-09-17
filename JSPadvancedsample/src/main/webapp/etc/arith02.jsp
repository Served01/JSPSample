<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String valuex = request.getParameter("valuex");
String valuey = request.getParameter("valuey");
String mark = request.getParameter("mark");
int valuexx = Integer.parseInt(valuex);
int valueyy = Integer.parseInt(valuey);
int markk = Integer.parseInt(mark);
int result;


if(markk==1){
	result = valuexx + valueyy;
	out.println("더하기 결과: " +result);
} else if(markk==2){
	result = valuexx - valueyy;
	out.println("빼기 결과: " +result);
} else if(markk==3){
	result = valuexx * valueyy;
	out.println("곱하기 결과: " +result);
} else if(markk==4){
	result = valuexx / valueyy;
	out.println("나누기 결과: " +result);
}

%>
<br>
<a href = "arith01.html">다시</a>
</body>
</html>