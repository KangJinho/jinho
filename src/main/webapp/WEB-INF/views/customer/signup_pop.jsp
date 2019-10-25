<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/button.css">

<script src="resources/js/jquery-3.4.1.min.js"></script>
<script>
	$(function(){
		$("#submit").on('click', function(){
			alert("dd")
			$("#signup").submit(function(){
				alert('전송');
			});
		})
	})
	
	$("#modal").modal('hide')
</script>
</head>
<body>
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"  aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">회원 가입</h4>
	</div>
	<div class="modal-body">
			<div id="content" class="login-form">
			<form id="signup" action="signup" method="post" class="form-horizontal">
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
					
					
				</div>
			</form>
			</div>
	</div>
	<div class="modal-footer">
	
		<div id="submit" class="btn">
			<span>가입</span> 
			<div class="dot"></div>	
		</div>
		<div  id="cancle" class="btn"  data-dismiss="modal">	
			<span>취소</span>
			<div class="dot"></div>			
		</div>
	</div>

</body>
</html>