<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOXNAIL_</title>
<!-- 부트스트랩 3버전 -->
<link rel="stylesheet"	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="resources/js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="resources/css/topnav2.css">

<style>
.submitline {
	margin: 10px 0;
}

label {
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
}

</style>
</head>
<body>
	<!-- 상단 메뉴 -->
	<%@include file="../content/header.jsp"%>

	<div class="body">
		<div class="container">
			<!-- 사이드 메뉴 -->
			<%@include file="../content/sidemenu.jsp"%>
			<!-- 본문 -->
			<div class="col-md-9">
				<div class="col-md-12">
					<a href="home">홈</a>><a href="board">게시판</a>><a>글쓰기</a>
				</div>
				<div class="col-md-12">
					<form action="boardWrite" method="post">
						<div class="form-group">
							<label for="title" class="col-md-2 control-label">제목</label>
							<div class="col-md-10">
								<input type="text" id="title" class="form-control" name="title">
							</div>
						</div>

						<div class="form-group">
							<label for="userid" class="col-md-2 control-label">아이디</label>
							<div class="col-md-10">
								<input type="text" id="userid" class="form-control"
									name="userid" value="${sessionScope.loginId }"
									disabled="disabled">
							</div>
						</div>

						<div class="form-group">
							<label for="regdate" class="col-md-2 control-label">날짜</label>
							<div class="col-md-10">
								<input type="text" id="regdate" class="form-control"
									name="regdate"
									value="<fmt:formatDate value="${today}" pattern="yyyy년MM월dd일(E)"/>"
									disabled="disabled">
							</div>
						</div>

						<div class="form-group">
							<label for="content" class="col-md-2 control-label">내용</label>
							<div class="col-md-10">
								<textarea name="content" id="content" class="form-control"
									rows="15" cols="100"></textarea>
							</div>
						</div>

						<div class=" form-group text-right">
							<div class="col-md-12">
								<input type="submit" class="btn btn-default" value="저장">
								<input type="button" class="btn btn-default" value="취소" onclick="location='board'">
							</div> 
						</div>
					</form>
				</div>
			</div>
		</div>
</div>

	<%@include file="../content/footer.jsp"%>

</body>
</html>