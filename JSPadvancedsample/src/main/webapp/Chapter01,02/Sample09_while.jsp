<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>while문</title>
</head>
<body>
<%int i = 0;
String[] strBuy = new String[5];
out.println("회원님이구입하신물품은<BR>");
strBuy[0] = new String("MP3 플레이어");
strBuy[1] = new String("Memory Card");
strBuy[2] = new String("이어폰");
strBuy[3] = new String("청바지");
strBuy[4] = new String("반팔티셔츠");
while(i <= 4){
	out.println("<B>" + strBuy[i] + "</B><BR>");
	i++;
	}
out.println("입니다");%>
</body>
</html>