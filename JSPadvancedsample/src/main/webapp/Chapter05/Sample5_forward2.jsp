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
String strValue = request.getParameter("download");
String strURL = null;
if (strValue.equals("1")){
strURL = "Sample5_JDK_link.jsp";
}else if (strValue.equals("2")){
strURL = "Sample5_Tomcat_link.jsp";
}else if (strValue.equals("3")){
strURL = "Sample5_Editplus_link.jsp";
}
%>
<jsp:forward page = "<%=strURL %>" />
</BODY>
</body>
</html>