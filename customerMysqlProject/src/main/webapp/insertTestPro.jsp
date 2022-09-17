<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="./DBConnection.jsp" %>

<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");
String name = request.getParameter("name");
String address = request.getParameter("address");
Timestamp register = new Timestamp(System.currentTimeMillis());

PreparedStatement pstmt = null;
String str="";

try{	
String sql= "insert into customer values (?,?,?,?,?)";
pstmt=conn.prepareStatement(sql);
pstmt.setString(1,id);
pstmt.setString(2,passwd);
pstmt.setString(3,name);
pstmt.setString(4,address);
pstmt.setTimestamp(5,register);
pstmt.executeUpdate();
str= "customer 테이블에 새로운 레코드를 추가했습니다.";
}
catch(Exception e){
e.printStackTrace();
str="customer 테이블에 새로운 레코드를 추가에 실패했습니다.";
}
finally{
if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
if(conn != null) try{conn.close();}catch(SQLException sqle){}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 추가</title>
</head>
<body>
   <%=str %>
<hr>
<a href = "./selectTestPro.jsp">데이터 조회 페이지</a>
<a href = "./updateTestForm.jsp">데이터 변경 페이지</a>
<a href = "./insertTestForm.jsp">데이터 추가 페이지</a>
<a href = "./deleteTestForm.jsp">데이터 삭제 페이지</a>
</body>
</html>