<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리</title>
<!-- 부트스트랩 3버전 -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script src="resources/js/jquery-3.4.1.min.js"></script>

<link rel="stylesheet" href="resources/css/topnav2.css">
<link rel="stylesheet" href="resources/css/show.css?after">
</head>
<style>

</style>
<body>
<div class="modal fade" id="popimg">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        <img class="image" src="resources/imag/original.jpg">
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

	<!-- 상단 메뉴 -->
	<%@include file="../content/header.jsp"%>
	
	<div class="body">
		<div class="container">
			<!-- 사이드 메뉴 -->
			<%@include file="../content/sidemenu.jsp"%>
			<!-- 본문 -->
				<div class="col-md-9 main">
					<div class="col-md-12">
						<a href="home">홈</a>><a>갤러리</a>
					</div>
				<div class="content">
					<div class="col-md-3 showimg1"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show1.jpg"></a></div>
					<div class="col-md-6 showimg2"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show2.jpg"></a></div>
					<div class="col-md-3 showimg1"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show3.jpg"></a></div>
					
					<div class="col-md-3 showimg1"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show4.jpg"></a></div>
					<div class="col-md-3 showimg1"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show5.jpg"></a></div>
					<div class="col-md-6 showimg2"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show6.jpg"></a></div>
					
					<div class="col-md-3 showimg1"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show7.jpg"></a></div>
					<div class="col-md-3 showimg1"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show8.jpg"></a></div>
					<div class="col-md-3 showimg1"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show9.jpg"></a></div>
					<div class="col-md-3 showimg1"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show10.jpg"></a></div>
					
					<div class="col-md-3 showimg1"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show11.jpg"></a></div>
					<div class="col-md-6 showimg2"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show12.jpg"></a></div>
					<div class="col-md-3 showimg1"><a data-toggle="modal" href="#popimg"><img class="image" src="resources/imag/show13.jpg"></a></div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="../content/footer.jsp"%>
	
</body>
</html>