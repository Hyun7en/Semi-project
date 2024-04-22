<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<link rel="stylesheet"
	href="http://localhost:8001/always5/resources/css/user_css/logIn.css" />
</head>
<body>
	<form action="login.ui" class="login-Container" method="POST">
		<div class="login">

			<!-- 로고 -->
			<div class="login-logo-main">
				<img class="logo-image"
					src="${pageContext.request.contextPath}/resources/file/user_img/login-img/logo.png" />
		    </div>
		    
			<div class="login-title">로그인</div>

			<!--로그인 박스 -->
			<div class="login-main-box">

				<!-- 아이디, 비밀번호 입력 -->
				<div class="login-box">

					<div class="login-input-box">

						<div class="login-id-wrapper">
							<input type="text" name="login-input-id" class="login-input-id"
								placeholder="아이디 (현재 이메일 주소)">
						</div>
						<div class="login-Pwd-wrapper">
							<input type="password" name="login-input-Pwd" class="login-input-Pwd"
								placeholder="비밀번호를 입력하세요.">
						</div>

						<div class="login-checkbox">
							<button type="submit" class="login-checkbox-title">로그인</button>
						</div>

						<div class="login-option">
							<div class="login-option-searchId"><a href="">아이디 변경</a></div>
							<img class="login-option-line1"
								src="http://localhost:8001/always5/resources/file/user_img/login-img/line-41.svg" />
							<div class="login-option-searchPwd"><a href="/csCenter.ax">비밀번호 변경</a></div>
							<img class="login-option-line2"
								src="http://localhost:8001/always5/resources/file/user_img/login-img/line-42.svg" />
							<div class="login-option-signin"><a href="/signin.ui">회원가입</a></div>
						</div>

					</div>
				</div>

			</div>
			<script src="http://localhost:8001/always5/resources/js/user_js/Login.js"></script>
		</div>
	</form>
</body>
</html>