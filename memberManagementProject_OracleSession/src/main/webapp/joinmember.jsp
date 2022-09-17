<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Form - joinmember.jsp</title>
</head>
<body>
	<h2>회원가입폼</h2>
	<form method="post" action="joinMemberPro.jsp">
		아이디: <input type="text" name="id" maxlength="12"><br>
		패스워드: <input type="password" name="passwd" maxlength="12"><br>
		이름: <input type="text" name="name" maxlength="20"><br>
		<input type="submit" value="회원가입"><br>
		<input type="button" value="로그인" onclick="location.href='cookieLogin.jsp'"><br>
		<input type="reset" value="다시입력">
	</form>

</body>
</html>