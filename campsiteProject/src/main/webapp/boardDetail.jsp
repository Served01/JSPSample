<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="kr.co.ezen.boardDAO"%>
<%@ page import="kr.co.ezen.boardBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 보기</title>
<style>
table{
border: 1;
margin: auto;
border-collapse: collapse;
border-style: solid;
border-color: black;
}
td{
border: 1;
border-collapse: collapse;
border-style: solid;
border-color: black;
font-size: 20;
}
tr{

}
</style>
</head>

<body>

<% 
	request.setCharacterEncoding("UTF-8");
	String num2 = request.getParameter("num");
	int num = Integer.parseInt(num2);
	
	boardDAO bdao = new boardDAO();
	boardBean bBean = bdao.oneselectboard(num);
	
%>

<table>

	<tr height=40 align=center>
		<td bgcolor=#c0c0c0 width=250>번호</td>
		<td width=350><%=bBean.getNum()%></td>
	</tr>
	<tr height=40 align=center>
		<td bgcolor=#c0c0c0 width=250>조회수</td>
		<td width=350><%=bBean.getReadCount()%></td>
	</tr>
	<tr height=40 align=center>
		<td bgcolor=#c0c0c0 width=250>글쓴이</td>
		<td width=350><%=bBean.getWriter()%></td>
	</tr>
	<tr height=40 align=center>
		<td bgcolor=#c0c0c0 width=250>이메일</td>
		<td width=350><%=bBean.getEmail()%></td>
	</tr>
	<tr height=40 align=center>
		<td bgcolor=#c0c0c0 width=250>작성일자</td>
		<td width=350><%=bBean.getReg_date()%></td>
	</tr>
	<tr height=40 align=center>
		<td bgcolor=#c0c0c0 width=250>제목</td>
		<td width=350><%=bBean.getSubject()%></td>
	</tr>
	<tr height=40 align=center>
		<td bgcolor=#c0c0c0 width=250>글내용</td>
		<td width=350><%=bBean.getContent()%></td>
	</tr>
	<tr>
		<td align=center colspan=2>
																								<!-- 글번호에 대한 번호이고        댓글인지를 확인가능하고              몇번째 댓글인지 파악가능 -->
		<button type=button onclick="location.href='boardRewriteform.jsp?num=<%=bBean.getNum()%>&ref=<%=bBean.getRef()%>&re_step=<%=bBean.getRe_step()%>&re_level=<%=bBean.getRe_level()%>'">댓글달기</button>
		<button type=button onclick="location.href='boardUpdateform.jsp?num=<%=bBean.getNum()%>'">수정하기</button>
		<button type=button onclick="location.href='boardDeleteform.jsp?num=<%=bBean.getNum()%>'">삭제하기</button>
		<button type=button onclick="location.href='boardList.jsp?'">목록조회</button>
		<button type=button onclick="location.href='boardwriteform.jsp'">글쓰기</button>
		</td>
	</tr>
</table>


</body>
</html>