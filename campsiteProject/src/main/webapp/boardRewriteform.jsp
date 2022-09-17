<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.boardDAO" %>  
<%@ page import="kr.co.ezen.boardBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글쓰기 화면</title>
</head>
<body>
<h2 align=center>게시판 댓글 쓰기</h2>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	int ref = Integer.parseInt(request.getParameter("ref"));
	int re_step = Integer.parseInt(request.getParameter("re_step"));
	int re_level = Integer.parseInt(request.getParameter("re_level"));

	
%>
<div align = "center">
<form action = "boardRewriteformPro.jsp" method= "post">
	<table border = 1 style="width:800px; text-align:center">
		<tr style="height:40; background: yellow;">
			<td width="100">작성자</td>
			<td><input type="text" name="writer"></td>
			<td width="120">제목</td>
			<td><input type="text" name="subject" value="[Reply]:"></td>
		</tr>
		<tr style="height:40; background: yellow;">
			<td width="100">전자우편</td>
			<td><input type="text" name="email"></td>
			<td width="120">비밀번호</td>
			<td><input type="password" name="password" value=""></td>
		</tr>
		<tr style="height:40; background: yellow;">
			<td width="100">내용</td>
			<td colspan="3"><textarea rows="10" cols="77" name="content"></textarea></td>
		</tr>
		<tr style="height:50;">
			<td colspan="4">
			
				
				<input type="hidden" name= "num" value=<%=num%>>
				<input type="submit" value="댓글쓰기">
				<input type="reset" value="댓글취소">
				<input type="button" onclick="location.href='boardList.jsp'" value="글목록보기">
				<input type="button" onclick="location.href='memberJoinform.jsp'" value="회원가입">
			</td>
		</tr>
	
	</table>



</form>

</div>
</body>
</html>