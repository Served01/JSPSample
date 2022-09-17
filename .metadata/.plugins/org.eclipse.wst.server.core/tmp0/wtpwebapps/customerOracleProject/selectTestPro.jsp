<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="./DBConnection.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드를 표시</title>
</head>
<body>
<h2>customer 테이블의 레코드 표시</h2>
<table border="1">
<tr>
<td width="100">아이디</td>
<td width="100">패스워드</td>
<td width="100">이름</td>
<td width="400">주소</td>
<td width="250">가입일자</td>
</tr>
<%

PreparedStatement pstmt = null;
ResultSet rs = null;

try{
	String sql= "select * from customer";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
while(rs.next()){
	String id= rs.getString("id");
	String passwd= rs.getString("passwd");
	String name= rs.getString("name");
	String address = rs.getString("address");
	Timestamp register=rs.getTimestamp("reg_date");
%>
<tr>
<td width="100"><%=id%></td>
<td width="100"><%=passwd%></td>
<td width="100"><%=name%></td>
<td width="400"><%=address %></td>
<td width="250"><%=register%></td>
</tr>
<% } } catch(Exception e){
e.printStackTrace();
} finally{
if(rs != null)
try{rs.close();}
catch(SQLException sqle){}
if(pstmt != null)
try{pstmt.close();}
catch(SQLException sqle){}
if(conn != null)
try{conn.close();}
catch(SQLException sqle){}
}
%>
</table>
<hr>
<a href = "./selectTestPro.jsp">데이터 조회 페이지</a>
<a href = "./updateTestForm.jsp">데이터 변경 페이지</a>
<a href = "./insertTestForm.jsp">데이터 추가 페이지</a>
<a href = "./deleteTestForm.jsp">데이터 삭제 페이지</a>

</body>
</html>