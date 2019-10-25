<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOXNAIL_</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/topnav.css?after">
<link rel="stylesheet" href="resources/css/button.css?after">
<link rel="stylesheet" href="resources/css/bottom.css?after">
<script src="resources/js/jquery-3.4.1.min.js"></script>

<style>
@import	url('https://fonts.googleapis.com/css?family=Nanum+Brush+Script&display=swap');
@import url('https://fonts.googleapis.com/css?family=Cute+Font|Gaegu|Modak&display=swap&subset=devanagari,korean,latin-ext');


#body {
	position:relative;
	width:100%;
	height:685px;
	background-image: url("resources/imag/backg.jpg");
	background-size: 90% 760px;
	background-repeat : no-repeat;
	background-position :center;

}

#content {
	position:relative;
	background: rgba(0,0,0,.5);
	width:100%;
	height:685px;
}
#content .banner{
	position:absolute;
	color:white;
	margin:auto;
	font-size: 3em;
	left:45%;
	top:45%;
	transform: translatex(-45% -45%);
}


</style>
</head>
<body>
	<div id="header">
		<nav class="navbar navbar-fixed-top">
			<div id="top">
				<ul class="top-nav">
					<c:if test="${empty sessionScope.loginId}">
						<li><a href="signup">회원가입</a></li>
						<li><a href="login">로그인</a></li>
					</c:if>
					<c:if test="${not empty sessionScope.loginId}">
						<li><a href="signout">${sessionScope.loginName}님, 로그아웃</a></li>
						<li><a href="dropout">탈퇴</a></li>
					</c:if>
				</ul>
			</div>
			<div id	="bottom">
				<div id="logo" class="bottom-item">
					<a href="home" class="logo">BOXNAIL__</a>
				</div>
				<div id="menu" class="bottom-item">
					<ul class="menu-list">
						<li><a href="itroduce">소개글</a></li>
						<li><a href="show">갤러리</a></li>
						<li><a href="reserve">예약</a></li>
						<li><a href="board">게시판</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<div id="body">
		<div id="content">
			<p class="banner">welcome<br>
			BOXNAIL_ _</p>
		</div>
	</div>

	<div id="footer" class="footer">
		<div id="footer-content" class="footer-content">
			<div id="call" class="foot-item">
				<h3>content</h3>
				<p>
					전화번호 : 010-1414-4545<br /> 운영시간 : AM 10:00 ~ PM11:00<br /> 문의사항 :
					kakao ID dfsfs
				</p>
			</div>
			<div id="addr" class="foot-item">
				<h4>서울 특별시 양천구 목동중앙서로 48 3층 BOXNAIIL_ (우)07967</h4>
			</div>
		</div>
	</div>
</body>
</html>