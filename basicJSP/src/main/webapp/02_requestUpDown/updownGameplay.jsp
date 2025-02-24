<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%	
	int com = 0;
	try {
		com = Integer.parseInt(request.getParameter("com"));
	}catch(Exception e) {
		Random rd = new Random();
		com = rd.nextInt(100)+1;
	}
%>
<body>
	<h1>업다운 게임</h1>
	<p> com = <%= com %> </p>
	<form action="./updownGameplayPro.jsp" method="post">
		<input type="number" name="me" min = "1" max = "100" required/>
		<input type="hidden" name="com" value="<%= com %>">
		<button>전송</button>
	</form>
</body>
</html>