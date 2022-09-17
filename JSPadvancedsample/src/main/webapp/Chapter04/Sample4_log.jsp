<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log Sample Test</title>
</head>
<body>
<% application.log("application 로깅!");
   application.log("application 예외 로깅!", new RuntimeException());
   
   log("jsp 로깅!");
   log("jsp 예외 로깅!", new RuntimeException());
   %>
</body>
</html>