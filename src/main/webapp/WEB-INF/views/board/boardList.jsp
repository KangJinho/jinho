
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 3버전 -->
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="resources/js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="resources/css/topnav2.css">
<link rel="stylesheet" href="resources/css/boardlist.css">


</head>
<body>
	<!-- 상단 메뉴 -->
	<%@include file="../content/header.jsp"%>

	<div class="body">
		<div class="container">
			<!-- 사이드 메뉴 -->
			<%@include file="../content/sidemenu.jsp"%>

			<div class="col-md-9">
				<div class="col-md-12">
					<a href="home">홈</a>><a>게시판</a>
				</div>
				<div class="table">
					<table class="table table-hover">
						<colgroup>
							<col style="width: 10%;" />
							<col style="width: auto;" />
							<col style="width: 15%;" />
							<col style="width: 20%;" />
							<col style="width: 10%;" />
						</colgroup>
						<tr class="tablemenu">
							<td>번호</td>
							<td>제목</td>
							<td>작성자</td>
							<td>작성일</td>
							<td>조회수</td>
						</tr>
						<c:forEach var="board" items="${list}" varStatus="stat">
							<tr>
								<td>${board.boardseq}</td>
								<td><a href="boardDetail?boardseq=${board.boardseq}">${board.title}</a></td>
								<td>${board.userid}</td>
								<td>${board.regdate}</td>
								<td>${board.viewcount}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<button class="write" id="write" onclick="location='boardWrite'">글쓰기</button>
				<!-- Paging 시작 -->
				<div class="text-center">
					<ul class="pagination">
						<li><a	href="board?currentPage=${navi.currentPage-navi.pagePerGroup}">◀</a></li>
						<!-- 앞그룹 요청 -->
						<li><a	href="board?currentPage=${navi.currentPage-1}">◁</a></li>
						<!-- 앞 페이지 요청 -->

						<c:forEach var="page" begin="${navi.startPageGroup}" end="${navi.endPageGroup }">
							<li><a href="board?currentPage=${page}">${page}</a></li>
						</c:forEach>

						<li><a href="">▷</a></li>
						<li><a href="">▶</a></li>
					</ul>
				</div>
				<!-- Paging 끝 -->
			</div>
		</div>
	</div>

	<%@include file="../content/footer.jsp"%>

</body>
</html>
