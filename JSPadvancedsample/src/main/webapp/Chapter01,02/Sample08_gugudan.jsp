<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
<table align="center" border="4" width="600" cellspacing="5" cellpadding="2">
<caption>구구단</caption>
<tbody align="center">
<tr>
<%for (int i=1;i<=9; i++) {
        out.println("<tr>");
    for (int j=2;j<=9; j++){
		int mul= i*j;
		out.println("<td>"+j+"*"+i+"="+mul+"</td>");
	}   out.println("</tr>");
	} %>
</tr>
</tbody>
</table>

</body>
</html>