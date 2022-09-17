<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.LogonDBBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<% request.setCharacterEncoding("UTF-8");%>

<%
String id = request.getParameter("id");
String passwd = request.getParameter("passwd");

//데이터베이스연결
LogonDBBean logon = LogonDBBean.getInstance();

//ID 패스워드 체크
int check= logon.userCheck(id,passwd);

//결과 참 거짓 여부
if(check==1){
	session.setAttribute("id", id);
	session.setMaxInactiveInterval(60*60);		//세션 60 * 60초 유지
	response.sendRedirect("sessionMain.jsp");
}else if(check==0){%>
<script>
	alert("비밀번호가 맞지 않습니다.");
	history.go(-1);			//sessionLogin.jsp
</script>
<%}else{ %>
<script>
	alert("아이디가 맞지 않습니다..");	//sessionLogin.jsp
	history.go(-1);
</script>
<%}%>
</body>
</html>