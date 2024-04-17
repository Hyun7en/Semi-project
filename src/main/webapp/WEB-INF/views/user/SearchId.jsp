<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="http://localhost:8001/always5/resources/css/user_css/SearchId.css" />
</head>
<body>
	<form action="/SearchId.ui" class="SearchId-Container">
		<div class="SearchId">

			<!-- 로고 -->
			<div class="SearchId-main">
				<img class="SearchId-main-image"
					src="http://localhost:8001/always5/resources/file/user_img/SearchId-img/2x.png" />
			</div>

			<div class="SearchId-main-title">아이디 찾기</div>

			<!-- 휴대전화 인증 -->
			<div class="phone-Verification">
				<div class="phone-Verification-box">
					<div class="phone-Verification-titlebox">
						<div class="phone-Verification-title">본인명의 휴대전화로 인증</div>
					</div>

					<div class="phone-Verification-inputbox">
						<div class="phone-Verification-username">이름</div>
						<div class="input-Verification-phone-box">
							<input type="text" name="input-Verification-phone"
								class="input-Verification-phone" value="휴대전화번호 ( - 빼고).">
						</div>
					</div>

					<div class="username-Verification-inputbox">
						<div class="username-Verification-input">휴대전화</div>
						<div class="input-Verification-username-box">
							<input type="text" name="input-Verification-username"
								class="input-Verification-username" value="인증번호 6자리 숫자 입력.">
						</div>
					</div>


					<img class="Verification-line"
						src="http://localhost:8001/always5/resources/file/user_img/SearchId-img/line-45.svg" />

					<div class="email-Verification-titlebox">
						<input type="radio" name="email-Verification-radio"
							class="phone-Verification-radio" value="phone-Verification-radio"
							checked>
						<div class="email-Verification-title">본인확인 이메일로 인증</div>
					</div>
				</div>
			</div>

			<!-- 본인인증 아이디 찾기 -->
			<div class="Id-Verification">
				<div class="Id-Verification-box">

					<div class="id-Verification-titlebox">
						<div class="notice-searchId">등록된 회원정보로 찾기 어려우시다면, 본인 확인 후
							아이디를 찾아드립니다.</div>
					</div>

					<div class="myphone-Verification-titlebox">
						<input type="radio" name="myphone-Verification-radio"
							class="myphone-Verification-radio"
							value="phone-Verification-radio" checked>
						<div class="myphone-Verification-title">본인확인 이메일로 인증</div>
					</div>
				</div>
			</div>

			<!-- 본인 인증 -->
			<div class="SearchId-submit-box">
				<input type="submit" name="SearchId-submit" class="SearchId-submit"
					value="본인 인증">
			</div>

		</div>
	</form>
	<script src="http://localhost:8001/always5/resources/js/user_js/SearchId.js"></script>
</body>

</html>