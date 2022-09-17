<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음식 선택 프로그램 결과</title>
</head>
<body>
<%!
int value2 ; 
int totaljajang;
int totaljjambbong;
int totaltangsuyuk;
int countjajang;
int countjjambbong; 
int counttangsuyuk; 
int jajang = 6000;
int jjambbong = 6500;
int tangsuyuk = 12000;
%>

<%
String value = request.getParameter("china");
int value2 = Integer.parseInt(value);
if(value2==1){
	countjajang += 1; 
} else if(value2==2){
	countjjambbong += 1;
} else if(value2==3){
	counttangsuyuk += 1;
} else if (value2==4){
	
}



%>
 
<table align="center" border="5">
<caption>각 메뉴 인원수</caption>

<thead>
<tr> 
<th>음식</th> 
<th>인원수</th>
</tr> 
</thead>

<tbody align="center">
<tr>
<td>짜장면</td>
<td><%=countjajang%></td>
</tr>

<tr>
<td>짬뽕</td>
<td><%=countjjambbong%></td>
</tr>

<tr>
<td>탕수육</td>
<td><%=counttangsuyuk%></td>
</tr>
</tbody>
</table>

<hr>

<table align="center" border="5">
<caption>총 가격표</caption>

<thead>
<tr> 
<th>음식</th> 
<th>총 금액</th>
</tr> 
</thead>

<tbody align="center">
<tr>
<td>짜장면</td>
<td><%=totaljajang = countjajang * jajang%></td>
</tr>

<tr>
<td>짬뽕</td>
<td><%=totaljjambbong = countjjambbong * jjambbong%></td>
</tr>

<tr>
<td>탕수육</td>
<td><%=totaltangsuyuk = counttangsuyuk * tangsuyuk%></td>
</tr>

<tr>
<td>총합</td>
<td><%=countjajang * jajang + countjjambbong * jjambbong + counttangsuyuk * tangsuyuk%></td>
</tr>
</tbody>
</table>
<hr>

<a href = "Program1.jsp">이전 페이지로 이동</a>

</body>
</html>