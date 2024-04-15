<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="http://localhost:8001/always5/resources/css/user_css/logIn.css" />
</head>
<body>
	<form class="login-Container">
		<div class="login">

			<!-- 로고 -->
			<div class="login-logo-main">
				<img class="logo-image"
					src="http://localhost:8001/always5/resources/file/user_img/login-img/logo.png" />
			</div>

			<div class="login-title">로그인</div>

			<!--로그인 박스 -->
			<div class="login-main-box">

				<!-- 로그인 권한 -->
				<div class="authority-box">
					<div class="authority-common">일반회원</div>
					<img class="authority-line"
						src="http://localhost:8001/always5/resources/file/user_img/login-img/line-40.svg" />
					<div class="authority-admin">관리자</div>
				</div>

				<!-- 아이디, 비밀번호 입력 -->
				<div class="login-box">

					<div class="login-input-box">

						<div class="login-id-wrapper">
							<input type="text" name="login-input-id" class="login-input-id"
								value="아이디 (현재 이메일 주소)">
						</div>
						<div class="login-Pwd-wrapper">
							<input type="text" name="login-input-Pwd" class="login-input-Pwd"
								value="비밀번호를 입력하세요.">
						</div>

						<div class="login-checkbox">
							<div class="login-checkbox-title">로그인</div>
						</div>

						<div class="login-option">
							<div class="login-option-searchId"><a href="">아이디 찾기</a></div>
							<img class="login-option-line1"
								src="http://localhost:8001/always5/resources/file/user_img/login-img/line-41.svg" />
							<div class="login-option-searchPwd"><a href="">비밀번호 찾기</a></div>
							<img class="login-option-line2"
								src="http://localhost:8001/always5/resources/file/user_img/login-img/line-42.svg" />
							<div class="login-option-signin"><a href="">회원가입</a></div>
						</div>

					</div>
				</div>

			</div>
		</div>
	</form>
	<script src="http://localhost:8001/always5/resources/js/user_js/login.js"></script>
</body>
</html>
