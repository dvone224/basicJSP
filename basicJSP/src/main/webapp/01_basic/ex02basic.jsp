<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
    
<%
 
	LocalDate today = LocalDate.now();
	System.out.println(today); // 시스템 콘솔 
	String now = today.format(DateTimeFormatter.ofPattern("yyyy년 MM월 dd일"));
 
 %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html 문서 주석 
애는 페이지 소스보기 하면 보인다 
 -->
<%--
	jsp 인식하는 자바 주석 
	페이지 소스보기하면 안보인다 
	< % 붙은 부분들은 다 후처리 삭제 : 순수 html 태그만 남긴다 
	: 보안상 유리 
	
	JSP : 자바 서버 페이지 약자 => 웹컨네이너가 jsp 파일 처리한다
	JSP : html 페이지 안에 jsp 태그를 사용할 수 있다 
	
	[1] 지시자 (directive) 태그 <%@ %> : jsp 태그 지시 , import 문에 사용 
	[2] 표현식(expression) 태그 <%= %> : 결과 값 출력 , 변수 값 출력
	 ==> out.println() => string 으로 결과값 줌 
	[3] 스크립트릿(scriptlet) 태그 <% %> : 그냥 자바 부분 
	
	[4] 선언자(declaration) 태그 <%! %> : 사용하지 않음  
	
 --%>

<h1> ex02.basic.jsp</h1>
<h1>  3 + 2 = <%= 3+2 %></h1>
<%
out.println("<h2>"+ today +" </h2>"); // html 문에서 출력 
%>
<h3> 오늘 날짜는 <%= now %></h3>

<%
 int[] arr = {10,20,30,40,50};
%>

<p> 자바 배열 출력하기 방법 1  </p>

<%
 for(int i =0; i < arr.length; i +=1)
	 out.println("<p>"+ arr[i] +" </p>");
%>

<hr />
<p> 자바 배열 출력하기 방법 2  </p>

<%   for(int i =0; i < arr.length; i +=1) {%>
<p> <%= arr[i] %></p>

<% } %>

<hr />
</body>
</html>