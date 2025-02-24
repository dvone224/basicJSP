<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 처리 페이지</title>
</head>
<body>
<%
try{
int num = Integer.parseInt(request.getParameter("num"));
String name = request.getParameter("name");
String grade = request.getParameter("grade");
String subject = request.getParameter("subject");

String[] hobbies = request.getParameterValues("hobbies");
String data = Arrays.toString(hobbies);
String memo = request.getParameter("memo");

if(name.trim().isEmpty() || subject.trim().isEmpty() || hobbies == null || memo.trim().isEmpty()){
	throw new Exception();
}
String hiddenVal = request.getParameter("hiddenValue");
%>
<div align="center">
 <table border="1">
 
 <tr>
 	<td>학번</td>
 	<td>이름</td>
 	<td>학년</td>
 	<td>과목</td>
 	<td>취미</td>
 	<td>메모</td>
 </tr>

  <tr>
 	<td><%=num %></td>
 	<td><%=name %></td>
 	 <td><%=grade %></td>
 	<td><%=subject %></td>
 	<td><%=data %></td>
 	<td><%=memo %></td>
 </tr>

 </table>

</div>
<%
}catch(Exception e){
%>

<script>
alert('비어있는 값이 있습니다');
// location.href= './ex08form05.jsp';
// history.go(-1);
//history.back();
</script>

<%
// 자바에서 페이지 이동하는 방법
// response.sendRedirect("./ex08form05.jsp");

 } %>
	
</body>
</html>