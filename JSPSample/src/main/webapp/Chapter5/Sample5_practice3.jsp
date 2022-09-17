<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3개 박스에 내용 넣기</title>
</head>
<style>
	#floatimg {
		transition: width 3s;
	}

#floatimg:hover {
		width: 100%;
	}
	
</style>
<body>
	<h3 align="center">마우스를 올려 주세요.</h3> 
	<hr>
	<div>
		<img id="floatimg" src="images/spongebob.PNG" width="100" height="100" alt="animation">
		<p>저는 스폰지밥입니다. 먹는 밥이 아니고요 제 이름이 그냥 그래요. 그리고 어린이부터 노인까지 많은 분들의 사랑을
			받고 있어요. 제 친구 뚱이도 있고요, 징징이도 있고 집게 사장님도 있어요</p>
	</div>
</body>
</html>