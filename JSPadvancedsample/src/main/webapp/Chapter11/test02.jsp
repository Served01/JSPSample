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
select * from test where num = ?
<sql:param>22</sql:param>
</sql:query>
<c:forEach var="data" items="${rs.rows }">
<c:out value="${data['num'] }"/>
<c:out value="${data['name'] }"/>
<c:out value="${data['addr'] }"/>
<br>
</c:forEach>
</body>
</html>