<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="http://localhost:8001/always5/resources/css/user_css/MyPage.css" />
</head>

<body>
	<%@ include file="../common/header.jsp" %>
	<form action="/MyPage.ui" class="Mypage-Container">
		<div class="Mypage">

			<!-- 회원정보 상단 -->
			<div class="Mypage-main-logo">
				<div class="Mypage-username">${user.username}</div>
				<div class="Mypage-usergrade">밥백성(회원)</div>

				<div class="Mypage-main-icon">
					<img class="Mypage-icon-crown"
						src="http://localhost:8001/always5/resources/file/user_img/mypage-img/image.png" />
					<img class="Mypage-line"
						src="http://localhost:8001/always5/resources/file/user_img/mypage-img/line-44.svg" />
					<div class="Mypage-icon-number">140</div>
				</div>
			</div>

			<!-- 내 프로필 -->
			<div class="Mypage-profile">

				<div class="Mypage-profile-box">
					<div class="profile-myprofile">내 프로필</div>
				</div>

				<div class="Mypage-username-box">
					<div class="profile-username">${user.username}</div>
					<div class="profile-username-checkbox">
						<div class="profile-username-checkbox-title">수정</div>
					</div>
				</div>

				<div class="Mypage-userid-box">
					<div class="profile-userid">${user.email}</div>
					<div class="profile-userid-checkbox">
						<div class="profile-userid-checkbox-title">수정</div>
					</div>
				</div>

				<div class="Mypage-userpwd-box">
					<div class="profile-userpwd">${user.userPwd}</div>
					<div class="profile-userpwd-checkbox">
						<div class="profile-userpwd-checkbox-title">수정</div>
					</div>
				</div>
			</div>

			<!-- 활동 이력 조회 -->
			<div class="Mypage-history">
				<div class="Mypage-history-box">
					<div class="profile-myhistory">활동 이력</div>
				</div>

				<div class="Mypage-goodreview-box">
					<div class="history-goodreview">추천한 리뷰</div>
					<div class="history-goodreview-checkbox">
						<div class="history-goodreview-checkbox-title">조회</div>
					</div>
				</div>

				<div class="Mypage-writereview-box">
					<div class="history-writereview">작성한 리뷰</div>
					<div class="history-writereview-checkbox">
						<div class="history-writereview-checkbox-title">조회</div>
					</div>
				</div>

				<div class="Mypage-cart-box">
					<div class="history-cart">찜 조회</div>
					<div class="history-cart-checkbox">
						<div class="history-cart-checkbox-title">조회</div>
					</div>
				</div>

				<div class="Mypage-coupon-box">
					<div class="history-coupon">내 쿠폰 관리</div>
					<div class="history-coupon-checkbox">
						<div class="history-coupon-checkbox-title">조회</div>
					</div>
				</div>

			</div>

			<!-- 로그아웃, 고객센터 -->
			<div class="Mypage-option">
				<div class="Mypage-option-logout">로그아웃</div>
				<img class="Mypage-option-img"
					src="http://localhost:8001/always5/resources/file/user_img/mypage-img/line-44.svg" />
				<div class="Mypage-option-service">고객센터</div>
			</div>

		</div>
	</form>
	<script src="http://localhost:8001/always5/resources/js/user_js/MyPage.js"></script>
</body>
</html>
