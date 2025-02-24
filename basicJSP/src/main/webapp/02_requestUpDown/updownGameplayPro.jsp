<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String updownMsg = "";
int me = Integer.parseInt(request.getParameter("me"));
int com = Integer.parseInt(request.getParameter("com"));
String href = "./";
String msg = "";

if (me == com) {
	updownMsg = "정답입니다!";
	href += "index.jsp";
	msg = "처음으로";
} else {
	updownMsg = me > com ? "Down" : "Up";
	href += "updownGameplay.jsp";
	msg = "뒤로가기";
}

String aHref = String.format("%s?com=%d",href,com);

%>
<body>
	<h1><%=updownMsg%></h1>
	<form action="<%=href%>" method="post">
		<input type="hidden" name="com" value="<%= com %>">
		<a href="<%=aHref%>"><%=msg%></a>
		<button><%=msg%></button>
	</form>
</body>
</html>