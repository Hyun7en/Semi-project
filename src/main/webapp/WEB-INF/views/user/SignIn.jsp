<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/user_css/SignIn.css" />
</head>
<body>
	<form action="signin.u" class="Signin-Container" method="POST">
		<div class="Signin">

			<!-- 회원가입 로고 -->
			<div class="Signin-logo-main">
				<img class="Signin-image"
					src="${pageContext.request.contextPath}/resources/file/user_img/SignIn-img/logo.png" />
			</div>

			<div class="Signin-title">회원가입</div>

			<!-- 계정정보 입력 -->
			<div class="input-account">
				<div class="id-box">
					<input type="text" name="userId" class="input-UserId"
						placeholder="5~10자 이내의 영문+숫자 아이디를 입력하세요." required>
				</div>
				<div class="pwd-box">
					<input type="password" name="userPwd" class="input-UserPwd"
						placeholder="비밀번호를 입력하세요." required>
				</div>
				<div class="nickname-box">
					<input type="text" name="nickName" class="input-nickName"
						placeholder="닉네임을 입력하세요." required>
				</div>
			</div>

			<!-- 개인정보 입력 -->
			<div class="input-Privacy">
				<div class="name-box">
					<input type="text" name="userName" class="input-UserName"
						placeholder="이름">
				</div>
				<div class="birth-box">
					<input type="text" name="userBirth" class="input-birth"
						placeholder="생년월일 8자리">
				</div>
				<div class="phone-box">
					<input type="text" name="userPhone" class="input-phone"
						placeholder="휴대전화번호 입력">
				</div>
				<div class="address-box">
					<input type="text" name="userAddress" class="input-address"
						placeholder="도로명 주소 입력">
				</div>
				<div class="gender-box">
					<input type="checkbox" name="userGender" class="gender-male-submit"
						value="남자" onclick="gendercheck(this)">남자 
					<input type="checkbox" name="userGender"
						class="gender-female-submit" value="여자" onclick="gendercheck(this)">여자
				</div>

				<div class="signin-notice">
					<div class="notice">
						인증된 아이디로 가입, 위치기반 서비스 이용약관 <br /> 이벤트 &amp; 혜택 정보 수신 동의를 포함합니다.
					</div>
				</div>

				<div class="Signin-checkwrapper">
					<div class="Signin-checkbox">
						<button type="submit" class="Signin-checkbox-title">회원가입</button>
					</div>
				</div>

			</div>
			<script
				src="${pageContext.request.contextPath}/resources/js/user_js/SignIn.js"></script>
		</div>
	</form>
</body>
</html>
