<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form name="insert" action="insert.jsp" method ="post">
<table border ="1" align ="center">
<tr>
<td colspan ="2" align="center">
<b><font size=5>Update 페이지</font></b>
</td>
</tr>
<tr>
<td>번호 : </td><td><input type ="text" name ="num"/></td>
</tr>
<tr>
<td>변경할 이름 : </td>
<td> <input type ="text" name ="name" size=20/></td>
</tr>
<tr>
<td>변경할 주소 : </td>
<td><input type ="text" name ="addr" size=50/></td>
</tr>
<tr>
<td colspan ="2" align="center">
<button onclick="location='update.jsp'">수정</button>
</td>
</tr>
</table>
</form>

<br><br>
<input type="button" value="이전" onClick="history.go(-1)"> 

</body>
</html>