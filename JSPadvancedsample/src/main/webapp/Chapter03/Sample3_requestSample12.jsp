<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 검색 엔진 활용</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String url = "https://www.google.com/search?";
	String keyword = request.getParameter("word");
	url+= "&q=" + keyword;
	response.sendRedirect(url);
%>		
	
</body>
</html>
<!-- https://www.google.com/search?&q=java -->

<!-- https://www.google.com/search?q=java&oq=java&aqs=chrome..69i57j0i131i433i512j69i59j0i131i433i512l5j0i433i512j0i131i433i512.939j0j15&sourceid=chrome&ie=UTF-8 -->