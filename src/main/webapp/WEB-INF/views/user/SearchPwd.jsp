<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="http://localhost:8001/always5/resources/css/user_css/SearchPwd.css" />
</head>

<body>
	<form action="" class="SearchPwd-Container">
		<div class="SearchPwd">

			<!-- 로고 -->
			<div class="SearchPwd-main">
				<img class="SearchPwd-main-image"
					src="http://localhost:8001/always5/resources/file/user_img/searchpwd-img/2x.png" />
			</div>

			<div class="SearchPwd-main-title">비밀번호 찾기</div>

			<div class="SearchPwd-text-wrapper">비밀번호를 찾고자 하는 아이디를 입력해주세요</div>

			<!-- 아이디 입력 -->
			<div class="inputPwd-wrapper">
				<div class="inputPwd-box">
					<div class="inputPwd-text">
						<input type="text" name="inputPwd-phone" class="inputPwd-phone"
							value="네이버 아이디 또는 단체 아이디">
					</div>
				</div>
			</div>

			<!-- Pwd02 페이지 연결 -->
			<div class="SearchPwd-checkbox-wrapper">
				<div class="SearchPwd-checkbox">
					<div class="SearchPwd-checkbox-title">다음</div>
				</div>
			</div>

		</div>
	</form>
	<script src="http://localhost:8001/always5/resources/js/user_js/SearchPwd.js"></script>
</body>

</html>