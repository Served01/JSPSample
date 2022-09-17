<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 액션태그</title>
</head>
<body>
<%
String strname = request.getParameter("Logname");
String strage = request.getParameter("Logage");
String strheight = request.getParameter("Logheight");
String strweight = request.getParameter("Logweight");
/*위의 getParameter 앞에 request가 붙은 이유는 logname 값이 request
object에 있기 때문에 거기서 가져온다는 의미이다.
*/
%>
<B><%=strname %></B>님의 나이는&nbsp;<B><%=strage%></B>입니다.
그리고 키는&nbsp;<B><%=strheight%>cm</B>이고 몸무게는&nbsp;<B><%=strweight%>kg</B>입니다.
</body>
</html>