<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@page import="Beans.customerVO"%>
<%
	request.setCharacterEncoding("UTF-8");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객정보 입력과 삭제 구현</title>
</head>
<body align="center">
<h3 style="border: 3px solid blue">***** 고객정보 입력하기 *****</h3><br>

	<form action="customer.jsp" method="post">
		이름 <input type="text" name="name"><br>
		나이 <input type="text" name="age"><br><br>
			<input type="submit" value="고객등록">
	</form>
	<br>
	<!-- DTO = VO -->
	<jsp:useBean id="custBean" class="Beans.customerDAO" scope="session"/>
	<jsp:setProperty name="custBean" property="name"/>
	<jsp:setProperty name="custBean" property="age"/>
		
	
<h3 style="border: 3px solid blue">***** 고객정보 삭제하기 *****</h3><br>	
	<form action="customer.jsp" method="post">
		번호 <input type="text" name="cust_index"><br><br>
			<input type="submit" value="고객삭제">
	</form>
	<br>
	
	<!-- 				custBean.setDelete(cust_index) -->
	<jsp:setProperty name="custBean" property="delete" param="cust_index" />  
	
	
<h3 style="border: 3px solid blue">***** 고객정보 출력하기 *****</h3><br>		
	
	<table style="border: 1px solid yellow">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>나이</td>
		</tr>
	<%	
	
	customerVO[]  c = custBean.getCustomer();
		int i = 0;
		
		for(    ; i < c.length; i++){	
	%>
		
		<tr>
			<td><%= (i + 1) %></td>
			<td><%= c[i].getName()%></td>
			<td><%= c[i].getAge()%></td>		
		</tr>	
	<%
		}
	%>
	</table>
		
</body>
</html>