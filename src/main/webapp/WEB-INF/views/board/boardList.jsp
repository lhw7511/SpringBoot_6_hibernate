<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/bootStrap.jsp"></c:import>
<style type="text/css">
.search-form{
	margin-bottom: 20px;
}
.form-control{
	width: 100px;
}
.page{
	width: 300px;
	margin: 0 auto;
}
a{
	text-decoration: none;
	color: black;
}
a:hover{
	text-decoration: none;
	color: gray;
}
#write-btn{
	float: right;
}
.color{
	color: blue;
}
</style>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

	<div class="container">
		<h3>${board}List V1</h3>
		<p>The .navbar-right class is used to right-align navigation bar buttons.</p>
<!-- 		<img alt="" src="../images/main.jpg"> -->
		
		<c:if test="${not empty member}">
			<h3 class="color"><spring:message code="member.login.message" arguments="${member.id}"></spring:message></h3>
		</c:if>
		
<!-- search -->
	<form action="./${board}List" id="frm">
		<input type="hidden" name="curPage" id="curPage" value="1">
		<div class="form-group">
			<label for="sel1">Select list:</label>
			<select class="form-control" id="kind" name="kind">
				<option>title</option>
				<option>writer</option>
				<option>contents</option>
			</select>
		</div>
		<div class="input-group">
   			<input type="text" class="form-control" id="search" placeholder="Search" name="search">
    		<div class="input-group-btn">
      			<button class="btn btn-default" type="submit">
        			<i class="glyphicon glyphicon-search"></i>
      			</button>
    		</div>
  		</div>
	</form>
	  
	  	<table class="table table-hover">
	  		<tr>
	  			<td>Num</td>
		  		<td>Title</td>
		  		<td>Writer</td>
		  		<td>Date</td>
		  		<td>Hit</td>
	  		</tr>
	  		
	  		<c:forEach items="${list}" var="vo">
	  			<tr>
	  				<td>${vo.num}</td>
	  				<td><a href="${board}Select?num=${vo.num}">${vo.title}</a></td>
	  				<td>${vo.writer}</td>
	  				<td>${vo.regDate}</td>
	  				<td>${vo.hit}</td>
	  			</tr>
	  		</c:forEach>
	  		
	  	</table>
	<input type="button" id="write-btn" class="btn btn-info" value="Write">
  	</div>

<!-- pager -->	  	
	<div class="page">
   		<ul class="pagination">
   			<c:if test="${pager.before}">
   				 <li><a href="#" class="list" title="${pager.startNum-1}">Before</a></li>
   			</c:if>
		  	<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
		  		 <li><a href="#" class="list" title="${i}">${i}</a></li>
		  	</c:forEach>
		  	<c:if test="${pager.after}">
   				 <li><a href="#" class="list" title="${pager.lastNum+1}">After</a></li>
   			</c:if>
		</ul>
	</div>



<script type="text/javascript">
	
	//$(document).ready(function(){}); 	// HTML 문서가 로딩이 끝났을 때

	//$(function(){ 	// document.ready의 축약형
	
	$("#search").val('${param.search}');
	var kind = '${param.kind}';
	if(kind != ''){
		$("#kind").val('${param.kind}');
	}
	// 검색어 없이 search하면 페이지 안나오게 나중에 보완하기
	
	$(".list").click(function(){
		var curPage = $(this).attr("title");
		$("#curPage").val(curPage);
		$("#frm").submit();
	});

	$("#write-btn").click(function() {
		location.href="./${board}Write";
	});


	//});

	
</script>

</body>
</html>