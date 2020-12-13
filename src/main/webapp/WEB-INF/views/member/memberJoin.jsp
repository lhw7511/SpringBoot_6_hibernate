<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 .idCheck0{
 	color: blue;
 }
 .idCheck1{
 	color: red;
 }
 .error{
 	color: red;
 }

</style>
<c:import url="../template/bootStrap.jsp"></c:import>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
	<h3>Member Join Page</h3>
	<form:form modelAttribute="memberVO" enctype="multipart/form-data">
    <div class="form-group">
      	<label for="id">Id:</label>
      	<form:input path="id" class="form-control" id="id"/>
		<form:errors path="id" cssClass="error"></form:errors>
    </div>
    
    <div id="idResult"></div>
    <div class="form-group">
      	<label for="pw">Password:</label>
      	<form:input path="pw" class="form-control" id="pw"/>
		<form:errors path="pw" cssClass="error"></form:errors>
    </div>
    
    <div class="form-group">
      	<label for="pw">Password:</label>
      	<form:input path="pw2" class="form-control" id="pw"/>
		<form:errors path="pw2" cssClass="error"></form:errors>
    </div>
    
    <div id="pwResult"></div>
    <div class="form-group">
      	<label for="name">Name:</label>
      	<form:input path="name" class="form-control" id="name"/>
		<form:errors path="name" cssClass="error"></form:errors>
    </div>
    
    <div class="form-group">
     	 <label for="age">age:</label>
      	<form:input path="age" class="form-control" id="age"/>
		<form:errors path="age" cssClass="error"></form:errors>
    </div>
    <div class="form-group">
      	<label for="email">Email:</label>
      	<form:input path="email" class="form-control" id="email"/>
		<form:errors path="email" cssClass="error"></form:errors>
    </div>
    
  	<button type="submit" class="btn btn-default" id="join">Join</button>
  </form:form>
</div>


</body>
</html>