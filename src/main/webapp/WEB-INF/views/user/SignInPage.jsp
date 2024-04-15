<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.always5.user.model.vo.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="http://localhost:8001/always5/resources/css/user_css/SignInPage.css" />
</head>
<body>
	<form action="/userInsert.me" class="Signin-Container">
		<div class="Signin">

			<!-- 회원가입 로고 -->
			<div class="Signin-logo-main">
				<img class="Signin-image"
					src="http://localhost:8001/always5/resources/file/user_img/signInpage-img/logo.png" />
			</div>

			<div class="Signin-title">회원가입</div>

			<!-- 계정정보 입력 -->
			<div class="input-account">
				<div class="id-box">
					<input type="text" name="input-UserId" class="input-UserId"
						placeholder="5~10자 이내의 영문+숫자 아이디를 입력하세요.">
				</div>
				<div class="pwd-box">
					<input type="text" name="input-UserPwd" class="input-UserPwd"
						value="비밀번호를 입력하세요.">
				</div>
				<div class="nickname-box">
					<input type="text" name="input-UserName" class="input-nickName"
						value="닉네임을 입력하세요.">
				</div>
			</div>

			<!-- 개인정보 입력 -->
			<div class="input-Privacy">
				<div class="name-box">
					<input type="text" name="iinput-UserName" class="input-UserName"
						value="이름">
				</div>
				<div class="birth-box">
					<input type="text" name="input-birth" class="input-birth"
						value="생년월일 8자리">
				</div>
				<div class="phone-box">
					<input type="text" name="input-phone" class="input-phone"
						value="휴대전화번호 ( - 입력)">
				</div>
				<div class="address-box">
					<input type="text" name="input-address" class="input-address"
						value="도로명 주소 입력">
				</div>
				<div class="gender-box">
					<input type="submit" name="gender-male-submit"
						class="gender-male-submit" value="남자"> <input
						type="submit" name="gender-female-submit"
						class="gender-female-submit" value="여자">
				</div>
			</div>

			<div class="signin-notice">
				<div class="notice">
					인증된 아이디로 가입, 위치기반 서비스 이용약관 (선택) <br/>
					이벤트 &amp; 혜택 정보 수신(선택) 동의를 포함합니다.
				</div>
			</div>

			<div class="Signin-checkwrapper">
				<div class="Signin-checkbox">
					<div class="Signin-checkbox-title">회원가입</div>
				</div>
			</div>

		</div>
	</form>
	<script src="http://localhost:8001/always5/resources/js/user_js/SignInPage.js"></script>
</body>
</html>
