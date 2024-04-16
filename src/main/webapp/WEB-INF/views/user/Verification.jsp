<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="http://localhost:8001/always5/resources/css/user_css/Verification.css" />
</head>
<body>
	<form action="Verification.ui" class="Verification-Container">
		<div class="Verification">

			<!-- X버튼 -->
			<img class="logo"
				src="http://localhost:8001/always5/resources/file/user_img/Verification-img/ph-x-thin.svg" />

			<!-- 본인인증 로고 -->
			<div class="Verification-main">
				<img class="Verification-image"
					src="http://localhost:8001/always5/resources/file/user_img/Verification-img/2x.png" />
			</div>

			<div class="Verification-title">본인 휴대전화 인증</div>


			<!-- 인증 정보 입력-->
			<div class="Verification-wrapper">

				<div class="Verification-username-box">
					<input type="text" name="Verification-input-username"
						class="Verification-input-username" value="이름">
				</div>

				<div class="Verification-birth-box">
					<div class="Verification-birthYear-box">
						<input type="text" name="Verification-input-birthYear"
							class="Verification-input-birthYear" value="년 (4자)">
					</div>

					<div class="Verification-birthMonth-box">
						<input type="text" name="Verification-input-birthMonth"
							class="Verification-input-birthMonth" value="월">
					</div>

					<div class="Verification-birthDay-box">
						<input type="text" name="Verification-input-birthDay"
							class="Verification-input-birthDay" value="일">
					</div>

				</div>

				<div class="Verification-phone-box">
					<div class="Verification-phoneAgency-box">
						<input type="text" name="Verification-input-phoneAgency"
							class="Verification-input-phoneAgency" value="SKT">
					</div>
					<div class="Verification-phoneaddress-box">
						<input type="text" name="Verification-input-phoneaddress"
							class="Verification-input-phoneaddress" value="휴대전화번호 (- 입력)">
					</div>
				</div>

				<div class="Verification-address-box">
					<input type="text" name="Verification-input-address"
						class="Verification-input-address" value="도로명 주소 입력">
				</div>

				<div class="Verification-gender-box">
					<input type="submit" name="gender-male-submit"
						class="gender-male-submit" value="남자"> <input
						type="submit" name="gender-female-submit"
						class="gender-female-submit" value="여자">
				</div>
			</div>


			<!-- 공지사항 -->
			<div class="Verification-notice-titlebox">
				<div class="Verification-notice-title">인증받은 휴대전화 번호는 내 회원정보에
					등록하겠습니다.</div>
			</div>

			<!-- 회원가입 -->
			<div class="Verification-checkWrapper">
				<div class="Verification-checkbox">
					<div class="Verification-checkbox-title">회원가입</div>
				</div>
			</div>

		</div>
	</form>
	<script src="http://localhost:8001/always5/resources/js/user_js/Verification.js"></script>
</body>
</html>
