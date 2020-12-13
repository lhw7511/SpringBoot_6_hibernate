<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
  
	<div class="container">
	<form action="" id="frm">
		<input type="hidden" value="${vo.num}" name="num">
	</form>
	
		<h3>${board} Select Page</h3>
	  	<h3>${vo.num}</h3>
	  	<h3>Title : ${vo.title}</h3>
	  	<h3>Writer : ${vo.writer}</h3>
	  	<h3>Contents : ${vo.contents}</h3>
	  	
	  	<h3>Files</h3>
	  	<c:forEach items="${vo.files}" var="file">
		  	<p><a href="${board}FileDown?fnum=${file.fnum}">${file.oriName}</a></p>
	  	</c:forEach>
	  	
	  	<button class="btn btn-primary go" title="Update">Update</button>
	  	<button class="btn btn-danger go" title="Delete">Delete</button>
	  	<c:if test="${board ne 'notice'}">
  			<a href="./${board}Reply?num=${vo.num}" class="btn btn-info">Reply</a>
 		</c:if>
 		
 		
	  <%-- 	<input type="button" class="btn btn-primary" value="Update" id="update">
	  	<input type="button" class="btn btn-danger" value="Delete" title="${vo.num}" id="del">
	  	<c:if test="${board ne 'notice'}">
  			<a href="./${board}Reply?num=${vo.num}" class="btn btn-info">Reply</a>
 		</c:if> --%>
	</div>


<script type="text/javascript">
/* 	$("#update").click(function() {
		location.href="./${board}Update?num=${vo.num}";
	});

	$("#del").click(function() {
		//var num = $("#num").html();
		var num = $(this).attr("title");
		location.href="./${board}Delete?num="+num;
	}); */

	$(".go").click(function(){
		var board = '${board}';
		var t = $(this).attr("title");

		$("#frm").attr("action", board+t);
		
/*  		if(t=='Delete'){
			$("#frm").attr("method", "post");
		} */
		
		$("#frm").submit();
		
	});
</script>

</body>
</html>