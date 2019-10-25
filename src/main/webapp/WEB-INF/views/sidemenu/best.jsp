<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="resources/css/topnav2.css?after">
<link rel="stylesheet" href="resources/css/price.css">

</head>
<body>
<!-- 상단 메뉴부분 -->
	<%@include file="../content/header.jsp"%>

	<div class="body">
		<div class="container">
		<!-- 사이드 메뉴부분 -->
			<%@include file="../content/sidemenu.jsp"%>
			<!-- 바디부분 -->
				<div class="col-md-9 col-xs-9 main">
					<div class="col-md-12">
						<a href="home">홈</a>><a>기본 손정리</a>
					</div>
			<!-- 썸네일 부분 -->
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="resources/imag/cuticle.jpg" alt="cuticle">
						<div class="caption">
							<h3>Cuticle</h3>
							<del><p class="oriprice">20,000 원</p></del>
							<p class="price">
							<img src="resources/imag/arrow.png" class="under" alt="cuticle">15,000 원</p>
							<p></p>
						</div>
					</div>
				</div>
			<!-- 썸네일 끝 -->
			</div>
		</div>
	</div>



	<%@include file="../content/footer.jsp"%>
</body>
</html>