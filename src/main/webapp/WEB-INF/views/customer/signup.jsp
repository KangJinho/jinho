<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOXNAIL_</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/topnav.css?after">
<link rel="stylesheet" href="resources/css/button.css?after">
<link rel="stylesheet" href="resources/css/bottom.css?after">
<script src="resources/js/jquery-3.4.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
@import
	url('https://fonts.googleapis.com/css?family=Cute+Font|Gaegu|Modak&display=swap&subset=devanagari,korean,latin-ext')
	;
body {
	margin: 0;
}

#body {
	position: relative;
	background :rgba(255,186,186,0.3);
	width: 100%;
	height: 680px
}
.container{
	width:600px;
	padding-top: 50px;
}

.btn_group{
	text-align: center;
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
		<div id="content" class="login-form">
			<form action="signup" method="post" class="form-horizontal">
				<div class="form-group">
					<label for="userid" class="control-label col-md-2 ">아이디 </label>
					<div class="col-md-10"> 
					<input type="text" name="userid" id="userid" class="form-control" placeholder="아이디" />
					</div>
				</div>
				<div class="form-group">
					<label for="userpwd" class="control-label col-md-2">비밀번호</label> 
					<div class="col-md-10"> 
					<input type="password" name="userpwd" id="userpwd" class="form-control" placeholder="비밀번호" />
					</div> 
				</div>
				<div class="form-group">
					<label for="username" class="control-label col-md-2">이름 </label> 
					<div class="col-md-10"> 
					<input type="text" name="username" id="usename" class="form-control" placeholder="이름" />
					</div>
				</div>
				<div class="form-group">
					<label  class="control-label col-md-2">성별 </label> 
					<div class="col-md-10">
						<label for="gender">
						<input type="radio" name="gender" value="female" id="femaele" checked="checked" /> 
						여성 </label> 
						<label >
						<input type="radio" name="gender" value="male" id="maele" />
						남성 </label> 
					</div>
				</div>
				<div class="form-group">
					<label for="phone" class="control-label col-md-2">전화번호 </label> 
					<div class="col-md-10"> 
					<input type="text" name="phone"	id="phone" class="form-control" placeholder="전화번호" />
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="control-label col-md-2">이메일 </label> 
					<div class="col-md-10"> 
					<input type="email" name="email" id="email" class="form-control" placeholder="이메일" />
					</div>
				</div>
				<div class="form-group">
					<label for="address" class="control-label col-md-2">주소 </label> 
					<div class="col-md-10"> 
					<input type="text" name="address" id="address"  class="form-control" placeholder="주소" /> 
					</div>
				</div>
				<div class="form-group btn_group">
					<div class="btn">
						<span id="submit" >가입</span> 	
						<div class="dot"></div>
					</div>
					<div class="btn">	
						<span id="cancle" >취소</span>
						<div class="dot"></div>
					</div>
				</div>
			</form>
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