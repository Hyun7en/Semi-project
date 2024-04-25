<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/user_css/UserHeader.css">
</head>

<body>

	<!-- header -->

	<div class="header-container">
		<div class="header-container-wrapper">
			<div class="header-container-box">

				<!-- 로고 -->
				<div class="header-logo">
					<img class="header-logo-image"
						src="${pageContext.request.contextPath}/resources/file/common_img/왕밥빵로고 컬러.png">
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
				<c:choose>
					<c:when test="${empty loginUser}">
						<div class="member-Button">
							<a class="loginButton" href="login.ui">로그인</a> 
							<a class="SigninButton" href="signin.ui">회원가입</a>
						</div>
					</c:when>
					<c:otherwise>
						<div class="member-Button">
							<a class="loginButton" href="">${loginUser.nickName}님</a> 
							<a class="SigninButton" href="mypage.ui">마이페이지</a>
						</div>
					</c:otherwise>
				</c:choose>
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