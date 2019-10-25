<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/header.css">
</head>
<body>
	<div class="header">
		<nav class="navbar">
			<div class="container">
				<ul class="top navbar-right">
				<%String loginId = request.getParameter("login"); System.out.print(loginId); %>
					<c:if test="${empty sessionScope.loginId}">
						<li><a data-toggle="modal" href="#popsign" id="signup">회원가입</a></li>
						<li><a href="login" id="login">로그인</a></li>
					</c:if>
					<c:if test="${not empty sessionScope.loginId}">
						<li><a href="logout">${sessionScope.loginName}님, 로그아웃</a></li>
						<li><a href="dropout">탈퇴</a></li>
					</c:if>
				</ul>
			</div>
			<div class="container">
				<div id="logo" class="logo col-md-2 col-xs-2">
					<a href="home" class="logo-item">BOXNAIL__</a>
				</div>
				<div class=" bottom col-md-10 col-xs-10">
					<ul class="nav nav-pills navbar-right">
						<li role="presentation"><a class="smenu" href="itroduce">소개글</a></li>
						<li role="presentation"><a class="smenu" href="show">갤러리</a></li>
						<li role="presentation"><a class="smenu" href="reserve">예약</a></li>
						<li role="presentation"><a class="smenu" href="board">게시판</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<hr class="top-line">
		<div id="popsign" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
			<%@include file="../customer/signup_pop.jsp" %>
			</div>
		</div>
	</div>
	
	<div id="poplogin" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
			<%@include file="../customer/login.jsp" %>
			</div>
		</div>
	</div>
</body>
</html>