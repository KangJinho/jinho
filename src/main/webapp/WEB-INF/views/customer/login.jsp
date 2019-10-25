<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOXNAIL_</title>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/button.css?after">

<script src="resources/js/jquery-3.4.1.min.js"></script>
<script>
	$(function() {
		$('#submit1').on('click', function() {
			var formdata = {
				userid : $('#userid').val(),
				userpwd : $('#userpwd').val()
			};
			$.ajax({
				url : "login",
				type : "POST",
				data : formdata,
				success : function() {
					alert("Successfully submitted.")
					location.reload();
				}
			});
		});
	});
</script>
</head>
<body>
	<div class="container">

		<div id="content" class="login-form">
			<form id="login" action="login" method="post" class="form-horizontal">
				<div class="form-group">
					<label for="userid" class="control-label col-md-2 ">아이디 </label>
					<div class="col-md-10">
						<input type="text" name="userid" id="userid" class="form-control"
							placeholder="아이디" />
					</div>
				</div>
				<div class="form-group">
					<label for="userpwd" class="control-label col-md-2">비밀번호</label>
					<div class="col-md-10">
						<input type="password" name="userpwd" id="userpwd"
							class="form-control" placeholder="비밀번호" />
					</div>
				</div>
			</form>
		</div>
		<div id="submit1" class="btn">
			<span>로그인</span>
			<div class="dot"></div>
		</div>
		<div id="cancle" class="btn" data-dismiss="modal">
			<span>취소</span>
			<div class="dot"></div>
		</div>
	</div>
</body>
</html>