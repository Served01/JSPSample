<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인폼 </h2>
<form method="post" action="cookieLoginPro.jsp">
아이디: <input type="text" name="id" maxlength="12"><br>
패스워드: <input type="password" name="passwd"
maxlength="12"><br>
<input type="submit" value="로그인">
<input type="button" value="회원가입"
onclick="location.href='joinmember.jsp'">
</form>
</body>
</html>