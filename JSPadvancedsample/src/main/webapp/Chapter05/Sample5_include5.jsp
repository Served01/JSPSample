<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 액션태그</title>
</head>
<body>
저희 사이트에 방문해 주셔서 감사합니다
<%
request.setCharacterEncoding("UTF-8");
String ID = request.getParameter("strID");
%>
<HR>
<jsp:include page="Sample5_include3.jsp">
<jsp:param name="strID" value="<%=ID%>"/>
</jsp:include>
<B><%=ID%></B>
회원님은 정 회원입니다
</BODY>
</body>
</html>