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
    int num = 0;
    String num1 = null;
	String name = null;
	String addr = null;
	num1= request.getParameter("num");
	num= Integer.parseInt(num1);
	name = request.getParameter("name");
	addr = request.getParameter("addr");
	
%>

<sql:update dataSource="${conn }">
update test set name = '<%=name %>', addr = '<%=addr %>' where num = <%=num %>
</sql:update>

<sql:query var="rs" dataSource="${conn }">
select * from test where num = ?
<sql:param><%=num%></sql:param>
</sql:query>
<c:forEach var="data" items="${rs.rows }">
<c:out value="${data['num'] }"/><br>
<c:out value="${data['name'] }"/><br>
<c:out value="${data['addr'] }"/><br>
</c:forEach>
<br>
데이터 내용이 수정되었습니다.
<br><br>
<input type="button" value="메인" onClick="location='main.html'"> 
<br><br>
<input type="button" value="수정 페이지" onClick="location='updateForm.jsp'"> 
</body>
</html>