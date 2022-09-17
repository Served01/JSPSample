<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core</title>
</head>
<body>
	<c:forEach var="test" begin="1" end="10" step="2">
		<b>${test }</b>&nbsp;
	</c:forEach>
	<br>
	<c:forTokens var="alphabet" items="a,b,c,d,e,f,g,h,i,j,k,l,m,n" delims=",">
		<b>${alphabet }</b>&nbsp;
	</c:forTokens>
	<br>
	<c:forTokens var="str" items="Hello World" delims=" ">
		<b>${str }</b>&nbsp;
	</c:forTokens>
	<br>
	<c:forTokens var="str2" items="H/e/l/l/o/ /W/o/r/l/d" delims="/">
		<b>${str2 }</b>&nbsp;
	</c:forTokens>
</body>
</html>