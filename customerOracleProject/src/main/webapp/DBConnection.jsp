<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>JDBC드라이버 테스트</h2>
<%
Connection conn = null;
try{
String jdbcUrl="jdbc:oracle:thin:@localhost:1521:xe";
String dbId="hyun2";
String dbPass="1234";
Class.forName("oracle.jdbc.OracleDriver");
conn=DriverManager.getConnection(jdbcUrl,dbId,dbPass);
out.println("Oracle DB에 연결되었습니다.");
}
catch(Exception e){
e.printStackTrace();
}
%>
</body>
</html>