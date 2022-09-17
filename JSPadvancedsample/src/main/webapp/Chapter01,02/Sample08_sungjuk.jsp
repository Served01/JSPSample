<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
int totalscore = 0; 
int people = 0;
double average = 0;
%>

<% 
String score = request.getParameter("score");
totalscore += Integer.parseInt(score);
people++;
average = totalscore / people;

out.print("JSP 과목에 대한 " + "<br>");
out.print("인원수는 " + people + "<br>");
out.print("총점은 " + totalscore + "<br>");
out.print("평균은 " + average + "<br>");

%>
<hr>
<a href = "Sample08_sungjukform.jsp">이전 페이지로 이동</a>
</body>
</html>