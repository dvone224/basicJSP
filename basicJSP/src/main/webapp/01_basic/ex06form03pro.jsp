<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%

String msg="";
try{
int num1 = Integer.parseInt(request.getParameter("su1"));
int num2 = Integer.parseInt(request.getParameter("su2"));

if(num1 > num2){
	msg = num1 + "이 "+num2+" 보다 큽니다";
}else if(num2 > num1){
	msg = num2 + "이 "+num1+" 보다 큽니다";
}else{
	msg = num1 +"두 개가 같은 값입니다";
}

}catch(NumberFormatException e){
	msg="비어있습니다";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>값 받는 실습 process 페이지</title>
</head>
<body>
<!-- 다하면 pro 페이지 보내기   -->
<h1><%= msg %></h1>

<a href="./ex07form04.jsp"> ex07form04.jsp 이동 </a>

</body>
</html>