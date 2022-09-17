<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 검색 엔진 활용</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String keyword = request.getParameter("word");
	String text_url = URLEncoder.encode(keyword, "UTF-8");
		
	String url = "https://search.naver.com/search.naver?where=nexearch&query=" + text_url;
	response.sendRedirect(url);
%>		
	
</body>
</html>
<!-- https://search.naver.com/search.naver?where=nexearch&query=jsp -->

<!-- https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=jsp -->