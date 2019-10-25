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
<script	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="resources/js/jquery-3.4.1.min.js"></script>

<link rel="stylesheet" href="resources/css/topnav2.css">
</head>
<style>

</style>
<body>
	<!-- 상단 메뉴 -->
	<%@include file="../content/header.jsp"%>
	
	<div class="body">
		<div class="container">
			<!-- 사이드 메뉴 -->
		<%@include file="../content/sidemenu.jsp"%>
		
			<div class="col-md-9">
				<div class="col-md-12">
					<a href="home">홈</a>><a>소개글</a>
				</div>
			
			</div>
		</div>
	</div>
	
	<%@include file="../content/footer.jsp"%>
	
</body>
</html>