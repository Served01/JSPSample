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

<sql:update dataSource="${conn }">
insert into test(num, name, addr) values(1,'김걱동', '서울시 마포구')
</sql:update>
<sql:update dataSource="${conn }">
insert into test(num, name, addr) values(2,'오길동', '서울시 마포구')
</sql:update>
<sql:update dataSource="${conn }">
insert into test(num, name, addr) values(3,'이길동', '서울시 마포구')
</sql:update>
<sql:update dataSource="${conn }">
insert into test(num, name, addr) values(4,'박길순', '서울시 마포구')
</sql:update>

입력하였습니다.



</body>
</html>