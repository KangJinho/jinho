<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 3버전 -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="resources/js/jquery-3.4.1.min.js"></script>

<link rel="stylesheet" href="resources/css/topnav2.css">
</head>
<body>
		<%@include file="content/header.jsp" %>

	<div class="body">
		<div class="container">
		<%@include file="content/sidemenu.jsp" %>
			<!-- 슬라이드 -->
			<div id="mainslide" class="carousel slide col-md-9" data-ride="carousel">
			<!-- 슬라이드 순서 -->
				<ol class="carousel-indicators">
					<li data-target="#mainslide" data-slide-to="0" class="active"></li>
					<li data-target="#mainslide" data-slide-to="1"></li>
					<li data-target="#mainslide" data-slide-to="2"></li>
					<li data-target="#mainslide" data-slide-to="3"></li>
				</ol>
			<!-- 슬라이드 이미지 -->	
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img class="image" src="resources/imag/1boxnail-90.png" alt="0">
					</div>
					<div class="item">
						<img class="image" src="resources/imag/back.jpg" alt="1">
					</div>
					<div class="item">
						<img class="image" src="resources/imag/11-3.jpg" alt="2">
					</div>
					<div class="item">
						<img class="image" src="resources/imag/11-4.jpg" alt="3">
					</div>
				</div>
			
			</div>
		</div>
	</div>

	
		
		<%@include file="content/footer.jsp" %>
		
</body>
</html>