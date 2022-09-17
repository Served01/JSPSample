<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 액션태그</title>
</head>
<body>
<Form Action = "Sample5_practice2.jsp" Method = "post">
<table>
<tr>
<td>이름</td> 
<td><Input Type = "Text" Name = "name"></td>
</tr>
<tr>
<td>나이</td> 
<td><Input Type = "Text" Name = "age">세</td>
</tr>
<tr>
<td>키</td>
<td><Input Type = "Text" Name = "height">cm</td>
</tr>
<tr>
<td>몸무게</td>
<td><Input Type = "Text" Name = "weight">kg</td>
</tr>
<tr align = "center">
<td colspan="2">
<Input Type = "Submit" Value = "입력">&nbsp;
<Input Type = "Reset" Value = "취소">
</td>
</tr>
</table>
</form>
<!--메모리는 위에서부터 system, heap, stack 이렇게 나누어지는데
system에는 전역변수가 저장되고 heap에는 object가 그리고 stack에는 지역 변수랑
함수 파라미터가 저장된다. 이게 메모리의 기본 원리이다. heap과 stack은 상황에
따라 메모리 용량이 조절이 되지만 system은 고정되어 있으므로 모든 변수를 전역변수로
하게 되면 메모리 용량에 있어서 문제가 발생하므로 프로그래밍 할 때 전역변수로 설정하는
것을 깊게 생각하고 해야 한다.-->
</body>
</html>