<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core</title>
</head>
<body>
<form action="Sample6.jsp" method="post">
		<input type="text" name="x" size="5">
		<select name="cc">
		    <option value="+">+</option>
		    <option value="-">-</option>
		    <option value="*">*</option>
		    <option value="/">/</option>    
	    </select>
		<input type="text" name="y" size="5"><br>
<input type="submit" value="계산">
</form>
</body>
</html>