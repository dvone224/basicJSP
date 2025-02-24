<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 값 전송 파일</title>
</head>
<body>

<%--

클라이언트가 서버에 값을 준다 => 요청 : request 
서버가 클라이언트에게 값을 준다 => 응답 : response

[1] form 태그 
	(1) action="내용을 전달할 url => 페이지명" 
	(2) method="get" , "post"
	    디폴트 값 get : url안에 값이 전달 => 보안에 취약 , 용량 제한 
	    post => 데이터가 url 노출이 안됨 : request body 안에 값을 전다 : 보안에 강하고, 대용량 데이터 전달 가능 
	    
	(3) form 안에 잇는 태그들의 속성 중에 name 속성과 value 로 값이 전달이된다 : name 변수이름 value 값  
	(4) 버튼 type="submit" => 해당 action 페이지로 값들 전달해서 간다
	      <button> </button> 자동으로 써밋버튼  

--%>

<form action="./ex04form02.jsp" method="post">
이름 : <input type="text" name="myName" id="name" /> <br>
나이 : <input type="number" name="myAge" id="age" /> <br>
테스트1 <input type="radio" name="radio" value="테스트1"/>
테스트2 <input type="radio" name="radio" value="테스트2"/>

<button> 전송 </button>
</form>

</body>
</html>