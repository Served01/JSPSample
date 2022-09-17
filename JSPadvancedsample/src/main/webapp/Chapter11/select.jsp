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

<%  
    request.setCharacterEncoding("UTF-8");
    
    String num1= request.getParameter("num");
    int num2= Integer.parseInt(num1);
	
%>

<sql:query var="rs" dataSource="${conn }">
select * from test where num = ?
<sql:param><%=num2 %></sql:param>
</sql:query>
<c:forEach var="data" items="${rs.rows }">
<c:out value="${data['num'] }"/><br>
<c:out value="${data['name'] }"/><br>
<c:out value="${data['addr'] }"/><br>
</c:forEach>
데이터 내용이 조회되었습니다.
<br><br>
<input type="button" value="메인" onClick="location='main.html'"> 
<br><br>
<input type="button" value="조회 페이지" onClick="location='selectForm.jsp'"> 

</body>
</html>