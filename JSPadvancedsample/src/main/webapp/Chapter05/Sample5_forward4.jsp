<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 액션태그</title>
</head>
<body>
<%
String ID = request.getParameter("strID");
String pass = request.getParameter ("strPwd");
if ("apple".equals(ID)){
if("pipe".equals(pass)){
%>
<jsp:forward page="Sample5_forward5.jsp" >
<jsp:param name="LogName" value="<%=ID%>" />
</jsp:forward>
<%
}else {
out.println("비밀번호를 확인하세요");
}
}else {
out.println("아이디를 확인하세요");
}
%>
</BODY>
</body>
</html>