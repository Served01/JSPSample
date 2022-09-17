<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>답변</h2>
    <% request.setCharacterEncoding("UTF-8");
	String point = request.getParameter("point");
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String grade = "";
	int point2 = Integer.parseInt(year);
	if (point2 >= 0 & point2 <= 1000){ 
	grade = "일반";
	out.println("<b>"+ name + "</b>님의&nbsp등급은&nbsp<b>" + grade + "</b>이고&nbsp가입년도는&nbsp<b>" + year + "</b>입니다");
	} else if (point2 > 1000 & point2 <= 3000){ 
		grade = "실버";
		out.println("<b>"+ name + "</b>님의&nbsp등급은&nbsp<b>" + grade + "</b>이고&nbsp가입년도는&nbsp<b>" + year + "</b>입니다");
	} else if (point2 > 3000 & point2 <= 5000){ 
		grade = "베스트";
		out.println("<b>"+ name + "</b>님의&nbsp등급은&nbsp<b>" + grade + "</b>이고&nbsp가입년도는&nbsp<b>" + year + "</b>입니다");
	} else if (point2 > 5000 & point2 <= 8000){ 
		grade = "골드";
		out.println("<b>"+ name + "</b>님의&nbsp등급은&nbsp<b>" + grade + "</b>이고&nbsp가입년도는&nbsp<b>" + year + "</b>입니다");
	} else if (point2 > 8000 & point2 <= 30000){ 
		grade = "VIP";
		out.println("<b>"+ name + "</b>님의&nbsp등급은&nbsp<b>" + grade + "</b>이고&nbsp가입년도는&nbsp<b>" + year + "</b>입니다");
	} else if (point2 > 30000){ 
		grade = "VVIP";
		out.println("<b>"+ name + "</b>님의&nbsp등급은&nbsp<b>" + grade + "</b>이고&nbsp가입년도는&nbsp<b>" + year + "</b>입니다");
	}%>
</body>
</html>