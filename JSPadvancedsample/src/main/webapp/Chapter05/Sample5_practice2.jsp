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
String name = request.getParameter("name");
String age = request.getParameter ("age");
String height = request.getParameter ("height");
String weight = request.getParameter ("weight");

if(name != ""){
if(age != ""){
if(height != ""){
if(weight != ""){	
%>
<jsp:forward page="Sample5_practice3.jsp" >
<jsp:param name="Logname" value="<%=name%>" />
<jsp:param name="Logage" value="<%=age%>" />
<jsp:param name="Logheight" value="<%=height%>" />
<jsp:param name="Logweight" value="<%=weight%>" />
</jsp:forward>
<%
}else {
out.println("몸무게를 입력하세요");		
}
}else {
out.println("키를 입력하세요");	
}
}else {
out.println("나이를 입력하세요");
}
}else {
out.println("이름을 입력하세요");
}
%>
</body>
</html>