<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.util.StringTokenizer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core</title>
</head>
<body>
	<c:set var="gugu" value="---gugudan program---"></c:set>
		<c:out value="${gugu }"></c:out><br>

	<br>
	<c:forEach var="i" begin="2" end="9" step="1">
	<c:forEach var="j" begin="1" end="9" step="1">
		<b>${i } * ${j } = ${i*j }</b>
	</c:forEach><br>
	</c:forEach>
	
	<!-- 1~10 숫자 출력 -->
	<c:forEach var="num" begin="1" end="10" step="1">
		<b>${num }</b>&nbsp;
	</c:forEach>
	
	<%
	for(int i = 0; i < 10; i++){
		out.println(i+1);
	}
	
	%>
	
	<!-- 1~10 숫자 출력 폰트 커지게 -->
	
	<c:forEach var="num" begin="1" end="10" step="1">
	<font size = ${num }>${num }</font>
	</c:forEach>
	
	<!-- data:123, abc, hyun, 홍길동 -> str 배열에 저장후 출력 -->
	
	<%
	String[] data = {"123", "abc", "hyun", "홍길동"};
	
	for(int i = 0; i < 4; i++){
		out.println(data[i]);
	}
	%>
	<c:forEach var="dt" items="<%=data%>">
	<b>${dt }</b>
	</c:forEach>
	<c:forTokens var="dt2" items="123, abc, hyun, 홍길동" delims=",">
	<b>${dt2 }</b>
	</c:forTokens>
	
	<!-- 가변 for문 -->
	
	<%
	
	for(String m: data){
		out.println(m + " ");
	}
	%>
	<c:forEach var="m" items="<%=data %>">
		${m }&nbsp;
	</c:forEach>
	
	<%
	String n = "123, abc, hyun, 홍길동";
	String[] values = n.split(",");
	for(int x = 0; x < 4; x++){
	out.println(values[x]);
	}
	%>
	<%
	StringTokenizer token = new StringTokenizer(n,",");
	for(int y = 0; token.hasMoreElements(); y++){
		out.println(token.nextToken());
	}
	%>
	<br>
	<!-- 문자 저장 후 출력
	for문 + 폰트 15 -->
	<%
	String[] data3 = {"123", "456", "abc", "bcd", "hyun", "daebin", "홍길동", "길동"};
	
	for(int i = 0; i < 8; i++){
		out.println(data3[i]);
	}
	%>
	<c:forEach var="dt" items="<%=data3%>">
	<font size="15">${dt }</font>
	</c:forEach>
</body>
</html>