<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>customer 테이블의 레코드 수정</h2>

<form method="post" action="updateTestPro.jsp">
아이디: <input type="text" name="id" maxlength="12"><br>
패스워드: <input type="password" name="passwd" maxlength="12"><br>
변경할 이름: <input type="text" name="name" maxlength="20"><br>
<input type="submit" value="입력완료">
</form>
</body>
</html>