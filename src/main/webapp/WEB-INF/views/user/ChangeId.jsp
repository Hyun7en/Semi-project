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
	href="http://localhost:8001/always5/resources/css/user_css/ChangeId.css" />
</head>

<body>
		<form action="/userIdUpdate.me" class="changeId-Container">
		<div class="changeId">
			<!-- X버튼 -->
			<img class="logo"
				src="http://localhost:8001/always5/resources/file/user_img/changeId-img/ph-x-thin.svg" />

			<!-- 상단 텍스트 -->
			<div class="id-preview">
				<div class="id-UserName">${user.userName}</div>
				<div class="id-UserName-text01">님의 회원정보 중</div>
				<div class="id-UserName-text02">이메일을 수정하기 위해 인증절차가 필요합니다.</div>
			</div>

			<img class="line-pass"
				src="http://localhost:8001/always5/resources/file/user_img/changeId-img/line-47.svg" />

			<!-- 사용자 이메일 입력 -->
			<div class="email-preview">
				<img class="mdi-email-icon"
					src="http://localhost:8001/always5/resources/file/user_img/changeId-img/mdi-light-email.svg" />
				<div class="user-email">${user.useremail}</div>
			</div>

			<div class="input-email-box">
				<div class="input-email-text">
					<input type="text" name="input-email" class="input-email"
						value="현재 연락처 이메일 입력.">
				</div>
				<div class="input-email-checkbox">
					<div class="input-email-checkbox-text">확인</div>
				</div>
			</div>

			<!-- 주의사항 안내 -->
			<p class="service-preview">
				왕밥빵 서비스의 변경/종료, 본인 작성 게시물 조치 등 대부분의 왕밥빵 안내에 사용합니다.<br />
				등록된 이메일 주소가 기억나지 않는다면 휴대전화 인증 후 이메일을 수정할 수 있습니다.
			</p>

			<!--전화번호 인증 -->
			<div class="phone-title">전화번호 인증</div>

			<div class="input-phone-box">
				<div class="input-phone-text">
					<input type="text" name="input-phone" class="input-phone"
						value="현재 전화번호 입력.">
				</div>
				<div class="input-phone-checkbox">
					<div class="input-phone-checkbox-text">확인</div>
				</div>
			</div>

			<div class="input-phone-box2">
				<div class="input-phone-text2">
					<input type="text" name="input-phone2" class="input-phone2"
						value="인증번호 입력.">
				</div>
				<div class="input-phone-checkbox2">
					<div class="input-phone-checkbox-text2">확인</div>
				</div>
			</div>

			<div class="ChangeId-checkbox">
				<div class="ChangeId-checkbox-title">변경</div>
			</div>
		</div>
	</form>
	<script src="http://localhost:8001/always5/resources/js/user_js/ChangeId.js"></script>
</body>

</html>