<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>
<!-- EL tag \$ -> 수식 그대로, $ -> 계산 -->
<h2>\${5+7 } = ${5+7 }</h2>
<h2>${5+7 }</h2>
<h2>\${8-3} = ${8-3 }</h2>
<h2>\${9/3 } = ${9/3 }</h2>
<h2>\${15<=7 } = ${15<=7 }</h2>
<h3>\${10%3} = ${10 % 3}</h3>
<h3>\${10==9} = ${10 == 9}</h3>
<h3>\${5!=7} = ${5 != 7}</h3>
<h3>\${7<8} = ${7< 8}</h3>
<h3>\${8>8} = ${8 > 8}</h3>
<h3>\${15<=9} = ${15 <= 9}</h3>
<h3>\${7>=2} = ${7>=2}</h3>
<h3>\${5+3==8 ? 8 : 10} = ${5+3==8 ? 8 : 10}</h3>
</body>
</html>