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
String id = "";
try{
Cookie[] cookies = request.getCookies();
if(cookies != null){
for(int i=0; i<cookies.length; i++){
if(cookies[i].getName().equals("id")){
id = cookies[i].getValue();
}
}
}else{
response.sendRedirect("cookieLogin.jsp");
}
}catch(Exception e){}
%>

<b><%=id %></b>님이 로그인 하셨습니다.
<form method="post" action="cookieLogout.jsp">
<input type="submit" value="로그아웃">
</form>
</body>
</html>