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
	href="http://localhost:8001/always5/resources/css/user_css/UpdatePwd.css" />
</head>

<body>
	<form action="updatepwd.ui" class="updatePwd-Container" method="POST">
		<div class="updatePwd">
		    <!-- X버튼 -->
			<img class="logo"
				src="http://localhost:8001/always5/resources/file/user_img/UpdateId-img/ph-x-thin.svg" />
				
			<!-- 상단 텍스트 -->
			<div class="id-preview">
				<div class="id-UserName">${User.userPwd}</div>
				<div class="id-UserName-text01">님의 회원정보 중</div>
				<div class="id-UserName-text02">비밀번호를 수정하기 위해 인증절차가 필요합니다.</div>
			</div>

			<img class="line-pass"
				src="http://localhost:8001/always5/resources/file/user_img/UpdatePwd-img/line-47.svg" />

			<!-- 사용자 아이디 입력 -->
			<div class="email-preview">
				<img class="mdi-email-icon"
					src="http://localhost:8001/always5/resources/file/user_img/UpdatePwd-img/mdi-light-email.svg" />
				<div class="user-email">${User.userId}</div>
			</div>

			<div class="input-email-box">
				<div class="input-email-text">
					<input type="text" name="input-email" class="input-email"
						value="현재 아이디 입력">
				</div>
			</div>

			<!-- 주의사항 안내 -->
			<p class="service-preview">
				왕밥빵 서비스의 변경/종료, 본인 작성 게시물 조치 등 대부분의 왕밥빵 안내에 사용합니다.<br /> 등록된 이메일
				주소가 기억나지 않는다면 휴대전화 인증 후 이메일을 수정할 수 있습니다.
			</p>

			<div class="updatePwd-checkbox">
				<button type="submit" class="updatePwd-checkbox-title">변경</button>
			</div>
			<script
				src="http://localhost:8001/always5/resources/js/user_js/UpdatePwd.js"></script>
		</div>
	</form>
</body>

</html>