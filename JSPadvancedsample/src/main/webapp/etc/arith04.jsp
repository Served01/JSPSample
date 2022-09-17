<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="arith" class="Beans.ArithBean" scope="page" />
<% request.setCharacterEncoding("UTF-8"); %>
<% 
String mark = request.getParameter("mark");
int markk = Integer.parseInt(mark);
%>
<jsp:setProperty name="arith" property="*"/>

<% if(markk==1) {
	out.print("더하기 결과: ");
}else if(markk==2) {
	out.print("빼기 결과: ");
}else if(markk==3) {
	out.print("곱하기 결과: ");
}else if(markk==4) {
	out.print("나누기 결과: ");
}%>
<jsp:getProperty name="arith" property="result"/>
<br>
<a href = "arith03.html">다시</a>

</body>
</html>