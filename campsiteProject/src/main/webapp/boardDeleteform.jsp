<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.boardDAO" %>  
<%@ page import="kr.co.ezen.boardBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	boardDAO bdao = new boardDAO();
	boardBean bBean = bdao.updateOneSelectBoard(num);
		
%>
<form action = "boardDeleteformPro.jsp" method= "post">
	<table border = 1 style="width:800px; text-align:center">
	<tr style="height:40; background: yellow;">
			<td width="100">번호</td>
			<td><%=bBean.getNum() %></td>
			<td width="120">작성자</td>
			<td><%=bBean.getWriter() %></td>
		</tr>
		<tr style="height:40; background: yellow;">
			<td colspan="2">비밀번호</td>
			<td colspan="2"><input type="password" name="password" value=""></td>
		</tr>
		<tr style="height:50;">
			<td colspan="4">
			
				
				<input type="hidden" name= "num" value=<%=num%>>
				<input type="submit" value="삭제완료">
				<input type="reset" value="삭제취소">
				<input type="button" onclick="location.href='boardList.jsp'" value="글목록보기">
				<input type="button" onclick="location.href='memberJoinform.jsp'" value="회원가입">
			</td>
		</tr>
	
	</table>



</form>

</body>
</html>