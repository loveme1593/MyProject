<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
<script>
	function check() {
		var user_id = document.getElementById('user_id');
		var user_password = document.getElementById('user_password');
		var passwordC = document.getElementById('passwordC');
		var user_name = document.getElementById('user_name');
		var user_password_q = document.getElementById('user_password_q');
		var user_password_a = document.getElementById('user_password_a');

		if (user_id.value == '' || user_name.value == ''
				|| user_password_q == '' || user_password_a == '') {
			alert('빈 칸 없이 작성해주세요.');
			return false;
		}
		if (user_password.value != passwordC.value) {
			alert('비밀번호와 확인 값이 일치하지 않습니다.');
			passwordC.focus();
			return false;
		}
		return true;
	}
	function openIdCheck() {
		var idCheck = window.open("idCheck", "idCheck",
				"width=355,height=133, resizable=no");
	}
</script>
<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/landing-page.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-fixed-top topnav"
		role="navigation">
		<div class="container topnav">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand topnav"
					href="${pageContext.request.contextPath}/">MK Music</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${!empty loginUser }">
						<li><a href="${pageContext.request.contextPath}/users/logout">로그아웃</a></li>
					</c:if>
					<c:if test="${empty loginUser }">
						<li><a href="${pageContext.request.contextPath}/users/join">회원가입</a></li>
						<li><a href="${pageContext.request.contextPath}/users/login">로그인</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
	<!-- /.navbar-collapse -->

	<!-- Page Content -->
	<a name="services"></a>
	<div class="content-section-a">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<hr class="section-heading-spacer">
					<div class="clearfix"></div>
					<h2 class="section-heading">
						Join Us:<br>MK Music
					</h2>
					<p class="lead">가입 후 여러 서비스를 즐겨보세요.</p>

					<form action="${pageContext.request.contextPath}/users/join"
						method="post" onsubmit="return check();">
						<table>
							<tr>
								<th>아이디</th>
								<td><input type="text" id="user_id" name="user_id" readonly>
									&nbsp;&nbsp;&nbsp;<input type="button" value="아이디 중복 체크"
									onclick="openIdCheck();" class="btn btn-default"></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><input type="password" id="user_password"
									name="user_password" required></td>
							</tr>
							<tr>
								<th>비밀번호 확인</th>
								<td><input type="password" id="passwordC" name="passwordC"
									required></td>
							</tr>
							<tr>
								<th>이름</th>
								<td><input type="text" id="user_name" name="user_name"
									required></td>
							</tr>
							<tr>
								<th>회원 타입</th>
								<td><input type="radio" name="user_type" value="customer">고객
									<input type="radio" name="user_type" value="seller">판매자</td>
							</tr>
							<tr>
								<th>비밀번호 찾기 질문</th>
								<td><select id="user_password_q" name="user_password_q">
										<option value=""></option>
										<option value="1">반려동물의 이름은?</option>
										<option value="2">좋아하는 장소는?</option>
										<option value="3">태어난 장소는?</option>
								</select></td>
							</tr>
							<tr>
								<th>비밀번호 찾기 답</th>
								<td><input type="text" id="user_password_a"
									name="user_password_a"></td>
							</tr>
						</table>
						<br> <input type="submit" value="가입하기"
							class="btn btn-default">
					</form>
				</div>
			</div>

		</div>
		<!-- /.container -->

	</div>
	<!-- /.content-section-a -->

	<!-- /.intro-header -->

	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="list-inline">
						<li><a href="${pageContext.request.contextPath}/">Home</a></li>
					</ul>
					<p class="copyright text-muted small">Copyright &copy;
						MoonKyung PARK, All Rights Reserved</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>