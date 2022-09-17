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
<%
	String x = request.getParameter("x"); 
	String y = request.getParameter("y"); 
	String cc = request.getParameter("cc");
	
%>
	<c:set var="x" value="<%=x %>"></c:set>
	<c:set var="y" value="<%=y %>"></c:set>
	<c:set var="cc" value="<%=cc %>"></c:set>
	
	<c:if test="${cc == '+' }">				<!-- -> - * / 따라 전환 -->
		<c:out value="${x } ${cc } ${y } = ${x+y }"></c:out>
		<c:set var="result" value="${x+y }"></c:set>	<!-- -> 이후 result 값 출력 -->
	</c:if>
	
	<%if(cc.equals("+")) {%>
		<c:out value="${x } ${cc } ${y } = ${x+y }"></c:out>
	<%}else if(cc.equals("-")){%>
		<c:out value="${x } ${cc } ${y } = ${x-y }"></c:out>
	<%}else if(cc.equals("*")){%>
		<c:out value="${x } ${cc } ${y } = ${x*y }"></c:out>
	<%}else if(cc.equals("/")){%>
		<c:out value="${x } ${cc } ${y } = ${x/y }"></c:out>
	<%} %>
	
</body>
</html>