<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://localhost:8001/always5/resources/css/user_css/UserHeader.css">
</head>

<body>

	<!-- header -->

	<div class="header-container">
		<div class="header-container-wrapper">
			<div class="header-container-box">

				<!-- 로고 -->
				<div class="header-logo">
					<img class="header-logo-image"
						src="http://localhost:8001/always5/resources/file/common_img/왕밥빵로고 컬러.png">
					<div class="header-logo-name">왕밥빵</div>
				</div>

				<!-- 검색창 -->
				<div class="search-bar-wrapper">
					<form action="" class="search-bar" method="GET">
						<input type="text" name="search-keyword" class="search-keyword">
						<input type="submit" value="검색" class="search-button">
					</form>
				</div>

				<!-- 회원가입, 로그인 -->
				<div class="member-Button">
					<div class="loginButton">
						<a href="">로그인</a>
					</div>
					<div class="SigninButton">
						<a href="">회원가입</a>
					</div>
				</div>
			</div>

			<!-- 카테고리 -->
			<div class="navigation">
				<div class="navigation-categories">
					<div class="categories-food">
						<a href="#">음식별</a>
					</div>
					<div class="categories-menu">
						<a href="#">메뉴별</a>
					</div>
					<div class="categories-location">
						<a href="#">지역별</a>
					</div>
					<div class="categories-help">
						<a href="#">고객센터</a>
					</div>
				</div>
			</div>

		</div>
	</div>



</body>

</html>