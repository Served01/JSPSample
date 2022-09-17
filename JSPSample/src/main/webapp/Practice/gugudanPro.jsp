<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>

<script>

document.write("<table border=1>")
document.write("<tbody align=\"center\">")
for (var i=1; i<=9; i++) {
    document.write("<tr>");
for (var j=2; j<=9; j++){
	var mul= i*j;
	document.write("<td>"+j+"*"+i+"="+mul+"</td>");
}   document.write("</tr>");
}
document.write("</tbody>")
document.write("</table>")

</script>

</head>
<body>

</body>
</html>