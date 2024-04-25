<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/user_css/MyPage.css" />
</head>

<body>
	 <%@ include file="UserHeader.jsp"%>
		<div class="Mypage">

			<!-- 회원정보 상단 -->
			<div class="Mypage-main-logo">
				<div class="Mypage-username">${loginUser.userName}</div>

				<div class="Mypage-main-icon">
					<img class="Mypage-icon-crown"
						src="${pageContext.request.contextPath}/resources/file/user_img/Mypage-img/image.png" />
					<img class="Mypage-line"
						src="${pageContext.request.contextPath}/resources/file/user_img/Mypage-img/line-44.svg" />
					<div class="Mypage-icon-number">140</div>
				</div>
			</div>

			<!-- 내 프로필 -->
			<div class="Mypage-profile">

				<div class="Mypage-profile-box">
					<div class="profile-myprofile">내 프로필</div>
				</div>

				<div class="Mypage-username-box">
					<div class="profile-username">${loginUser.nickName}</div>
					<div class="profile-username-checkbox">
						<button class="profile-username-checkbox-title" onclick='openUpdateName()'>수정</button>
					</div>
				</div>

				<div class="Mypage-userid-box">
					<div class="profile-userid">${loginUser.userId}</div>
					<div class="profile-userid-checkbox">
						<button class="profile-userid-checkbox-title" onclick='openUpdateId()'>수정</button>
					</div>
				</div>

				<div class="Mypage-userpwd-box">
					<div class="profile-userpwd">${loginUser.userPwd}</div>
					<div class="profile-userpwd-checkbox">
						<button class="profile-userpwd-checkbox-title" onclick='openUpdatePwd()'>수정</button>
					</div>
				</div>
			</div>

			<!-- 활동 이력 조회 -->
			<div class="Mypage-history">
				<div class="Mypage-history-box">
					<div class="profile-myhistory"><a href="Mypage.ui">활동 이력</a></div>
				</div>

				<div class="Mypage-goodreview-box">
					<div class="history-goodreview">추천한 리뷰</div>
					<div class="history-goodreview-checkbox">
						<div class="history-goodreview-checkbox-title"><a href="myreviewgoods.ui">조회</a></div>
					</div>
				</div>

				<div class="Mypage-writereview-box">
					<div class="history-writereview">작성한 리뷰</div>
					<div class="history-writereview-checkbox">
						<div class="history-writereview-checkbox-title"><a href="myreview.ui">조회</a></div>
					</div>
				</div>

				<div class="Mypage-cart-box">
					<div class="history-cart">찜 조회</div>
					<div class="history-cart-checkbox">
						<div class="history-cart-checkbox-title"><a href="mygoods.ui">조회</a></div>
					</div>
				</div>

				<div class="Mypage-coupon-box">
					<div class="history-coupon">회원 탈퇴</div>
					<div class="history-cart-checkbox">
						<div class="history-cart-checkbox-title"><a href="signout.ui">확인</a></div>
					</div>
				</div>

			</div>

			<!-- 로그아웃, 고객센터 -->
			<div class="Mypage-option">
				<div class="Mypage-option-logout"><a href="logout.ui">로그아웃</a></div>
				<img class="Mypage-option-img"
					src="${pageContext.request.contextPath}/resources/file/user_img/Mypage-img/line-44.svg" />
				<div class="Mypage-option-service"><a href="CsCenter">고객센터</a></div>
			</div>
			<script src="${pageContext.request.contextPath}/resources/js/user_js/MyPage.js"></script>
		</div>
</body>
</html>
