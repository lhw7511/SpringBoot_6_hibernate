<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>index</title>
<c:import url="./template/bootStrap.jsp"></c:import>
<!-- <link href="./css/index.css" rel="styleSheet"> -->
<meta charset="utf-8">
</head>
<body>
<c:import url="./template/header.jsp"></c:import>

	<div class="container">
	<!-- 	<h3>Right Aligned Navbar</h3> -->
	<!-- <p>The .navbar-right class is used to right-align navigation bar buttons.</p> -->
		
		<a href="./rest/member/iu/1">Click</a>
		<button class="btn btn-danger" id="btn">Click Me</button>
		<button class="btn btn-primary" id="list">List</button>
	</div>
	
<script type="text/javascript">

$("#btn").click(function(){
	$.ajax({
		type:"GET",
		url:"board/boardSelect",
		data:{
			num:1
		},
		success:function(data){
			alert(data);
		}
	});
});

$("#list").click(function(){
	$.get("board/boardList?curPage=1", function(data){
		console.log(data);
	});
});

/* 	$("#btn").click(function(){
		$.get("https://api.manana.kr/exchange.json",function(data){
			for(i=0;i<data.length;i++){
				console.log(data[i].kr);	
			}
		});
	});
 */
/* 	var v = '{"name":"iu", "age":"27", "job":{"sing":"top", "actor":"second"}, "food":["steak", "bread", "milk"]}';
	v = JSON.parse(v);
	// 변수명.json의 키(name)
	alert(v.name);
	alert(v.age);
	alert(v.job.sing);
	alert(v.job.actor);
	alert(v.food);
	for(i=0;i<food.length;i++){
		alert(v.food[i]);
	} */
	</script>

</body>
</html>