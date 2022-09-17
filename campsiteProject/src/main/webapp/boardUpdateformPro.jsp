<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%>  
<%@ page import="kr.co.ezen.boardDAO" %>  
<%@ page import="kr.co.ezen.boardBean" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 수정</title>
</head>
<body>
<jsp:useBean id="bBean2" class="kr.co.ezen.boardBean">
		<jsp:setProperty name="bBean2" property="*"/>
	</jsp:useBean>
<%
	
	int num = Integer.parseInt(request.getParameter("num"));
	String pass = request.getParameter("password");
	
	boardDAO bdao2 = new boardDAO();
	
	if(pass.equals(bdao2.getPass(num))){
	bdao2.updateBoard(bBean2);
	response.sendRedirect("boardList.jsp");
	} else{
	%>	
	<Script type="text/javascript">
	alert("비밀번호가 틀립니다. 확인해 주세요.");
	history.back();
	</script>
	<%}
	
	
	
%>
</body>
</html>