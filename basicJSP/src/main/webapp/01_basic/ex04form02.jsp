<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 값 받는 파일</title>
</head>
<body>
<%
// form 에서 받아오는 값으로 변수 채우기 

String name = null;
int age = 0;

if(request.getParameter("myAge").equals("") || request.getParameter("myName").length()==0){
	out.println("<p>값이 비어있습니다!! </p>");
}else{
	name=request.getParameter("myName");
	age =Integer.parseInt(request.getParameter("myAge"));
}

if(age < 0){
	age =0;
	out.println("<p>나이는 0이상 값이어야합니다</p>");
}

%>
<h1>이름 : <%= name %></h1>
<h1>나이 : <%= age %></h1>
<h1> <%= request.getParameter("radio") %></h1>
</body>
</html>