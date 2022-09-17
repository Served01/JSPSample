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
	num1= request.getParameter("num");
	num= Integer.parseInt(num1);
%>


<sql:update dataSource="${conn }">
delete from test where num = <%=num %>
</sql:update>
데이터 내용이 삭제되었습니다.

<br><br>
<input type="button" value="메인" onClick="location='main.html'"> 
<!-- <button onclick="location='main.html'">메인</button> -->
<br><br>
<input type="button" value="삭제 페이지" onClick="location='deleteForm.jsp'"> 

</body>
</html>