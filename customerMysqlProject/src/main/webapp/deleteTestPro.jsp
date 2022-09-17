<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="./DBConnection.jsp" %>

<%
request.setCharacterEncoding("UTF-8");
String id= request.getParameter("id");
String passwd= request.getParameter("passwd");

PreparedStatement pstmt = null;
ResultSet rs = null;

try{
String sql= "select id, passwd from customer where id= ?";
pstmt=conn.prepareStatement(sql);
pstmt.setString(1,id);
rs=pstmt.executeQuery();

if(rs.next()){
	
String rId=rs.getString("id");
String rPasswd=rs.getString("passwd");

if(id.equals(rId) && passwd.equals(rPasswd)){
	
sql= "delete from customer where id= ?";

pstmt = conn.prepareStatement(sql);
pstmt.setString(1,id);
pstmt.executeUpdate();
out.println("데이터가 삭제되었습니다.");

}else{
out.println("패스워드가 틀렸습니다.");
}}
else{
out.println("아이디가 틀렸습니다.");
}
}catch(Exception e){
e.printStackTrace();
}finally{
if(rs != null) try{rs.close();}catch(SQLException sqle){}
if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
if(conn != null) try{conn.close();}catch(SQLException sqle){}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 삭제 </title>
</head>
<body>
<hr>
<a href = "./selectTestPro.jsp">데이터 조회 페이지</a>
<a href = "./updateTestForm.jsp">데이터 변경 페이지</a>
<a href = "./insertTestForm.jsp">데이터 추가 페이지</a>
<a href = "./deleteTestForm.jsp">데이터 삭제 페이지</a>

</body>
</html>
