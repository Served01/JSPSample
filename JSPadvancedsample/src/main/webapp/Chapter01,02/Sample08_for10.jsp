<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리4</title>
</head>
<body>
	<%! 
		float JavaTotal=0.0f, JSPTotal=0.0f, CSSTotal=0.0f, 
			Javaavg=0.0f, JSPavg=0.0f, CSSavg=0.0f;
		int countJava=0, countJSP=0, countCSS=0;  
	%>
	
	<%
	String select=request.getParameter("select");
	String name=request.getParameter("name");
	float score=Integer.parseInt(request.getParameter("score"));
	
		if(select.equals("Java")){
			countJava++;
			JavaTotal+=score;
			Javaavg = JavaTotal / countJava;
			out.println("total:" + JavaTotal);
			out.println("avg:" + Javaavg);
			out.println("countJava:" + countJava);
		}else if(select.equals("JSP")){
			countJSP++;
			JSPTotal += score;
			JSPavg = JSPTotal / countJSP;
			out.println("total:" + JSPTotal);
			out.println("avg:" + JSPavg);
			out.println("countJSP:" + countJSP);
		}else if(select.equals("CSS")){
			countCSS++;
			CSSTotal += score;
			CSSavg = CSSTotal / countCSS;
			out.println("total:" + CSSTotal);
			out.println("avg:" + CSSavg);
			out.println("countCSS:" + countCSS);
		}		
%>
<br><br>
<a href="Sample08_for09.jsp">이전으로</a>
</body>
</html>