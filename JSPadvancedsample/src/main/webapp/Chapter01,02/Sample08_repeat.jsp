<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	for (int i = 1; i <= 10; i++)
	{out.println("회원님의방문횟수는" + i + "입니다<BR>");
	}
%>

<%! String str = "JSP Web Programming!"; %>
<%! int total = 0; %>
<%! public int sum() {
	for (int i=1;i<=10; i++) {
		total = total + i;
		}
	return total;
	}
	%>
	<%= str %><br>
	<%= total %><br>
	<%= "1부터10까지합은" + sum() + " 입니다" %><br><br>
	<%= true %><br>
	<%= new char[] {'a', 'b', 'c'} %><br>
	<%= new java.util.Date() %><br>
	
	
</body>
</html>