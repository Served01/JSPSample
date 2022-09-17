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
<sql:setDataSource var = "conn"
driver = "oracle.jdbc.OracleDriver"
url="jdbc:oracle:thin:@localhost:1521:xe"
user="hyun"
password="1234"/>


<sql:query var="rs" dataSource="${conn }">
select * from test
</sql:query>

<table>
<tr align="center">
		<th>번호</th>
		<th>이름</th>
		<th>주소</th>
</tr>
<c:forEach var="data" items="${rs.rows }">
<tr align="center">
			<td><c:out value="${data['num'] }"/></td>
			<td><c:out value="${data['name'] }"/></td>
			<td><c:out value="${data['addr'] }"/></td>
</tr>
</c:forEach>
</table>
<hr>
<input type="button" value="메인" onClick="location='main.html'"> 
<br><br>
<input type="button" value="조회 페이지" onClick="location='selectForm.jsp'"> 

</body>
</html>