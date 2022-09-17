<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리4</title>
</head>
<body>
	<h2>여러 과목 성적처리</h2>
	<form method="post" action="Sample08_for10.jsp">
		과목:<select name="select">
				<option value="Java">Java</option>
				<option value="Oracle">Oracle</option>
				<option value="CSS">CSS</option>
				<option value="JavaScript">JavaScript</option>
				<option value="JSP">JSP</option>
			</select><br>		
		이름:<input type="text" name="name"><br>
		성적:<input type="text" name="score"><br>
		<input type="submit" value="확인">		
	</form>
</body>
</html>