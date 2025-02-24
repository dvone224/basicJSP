<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 값 전달 실습 폼 </title>
</head>
<body>

<form action="./ex06form03pro.jsp" method="get">
	<table border='1'>
	<tr>
		<td>첫번째 수 : </td>
		<td> <input type="number" name = "su1"  /> </td>
	</tr>	
	<tr>
		<td>두번째 수 : </td>
		<td> <input type="number" name = "su2"  /> </td>
	</tr>	
	
	<tr>
		<td colspan="2"> <input type="submit" value="전송" /> </td>
	</tr>
	</table>

</form>

</body>
</html>