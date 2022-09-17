<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Form - sessionMain.jsp</title>
</head>
<body>
	<% String id = "";
try{
	id = (String)session.getAttribute("id");
	
	if(id==null){
		response.sendRedirect("sessionLogin.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<b><%= id %></b>님이 로그인 하셨습니다.

<form method="post" action="sessionLogout.jsp">
<input type="submit" value="로그아웃">
</form>
	

</body>
</html>