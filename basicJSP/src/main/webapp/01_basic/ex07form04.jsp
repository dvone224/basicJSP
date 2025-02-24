<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1></h1>
숫자 1 : <input type="number" name="su1" id="su1" /> <br>
숫자 2 : <input type="number" name="su2" id="su2" /> <br>

<button> 전송 </button>

<a href="./ex06form03pro.jsp?su1=10&su2=20"> ex06formPro 이동</a>


</body>
</html>

<script>

function goURL(){
	let num1 = document.querySelector("#su1");
	let num2 = document.querySelector("#su2");
	let valNum1 = num1.value;
	let valNum2 = num2.value;
	if(!num1.value.trim() || !num2.value.trim()){
		document.querySelector("h1").innnerHTML="값을 입력하세요";
		num1.value ="";
		num2.value="";
	}else{
		
		console.log(num1.value);
		console.log(num2.value);

		location.href="./ex06form03pro.jsp?su1="+valNum1+"&su2="+valNum2;
	}
	
}

document.querySelector("button").addEventListener("click",goURL );

</script>