<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="http://localhost:8001/always5/resources/css/user_css/UpdateName.css" />
</head>

<body>
	<form action="/UpdateName.ui" class="updateName-Container">
		<div class="updateName">

			<!-- 닉네임 변경 로고 -->
			<div class="updateName-logo-main">
				<img class="logo-image" src="http://localhost:8001/always5/resources/file/user_img/UpdateName-img/1.png" />
			</div>

			<div class="updateName-title">닉네임 변경</div>

			<div class="updateName-notice">사용하고자 하는 닉네임으로 변경해주세요</div>

			<!-- 닉네임 변경 입력 -->
			<div class="inputupdateName-wrapper">
				<div class="inputupdateName-box">
					<div class="inputupdateName-text">
						<input type="text" name="inputupdateName-phone"
							class="inputupdateName-phone" value="왕밥빵 아이디 또는 단체 아이디">
					</div>
				</div>
			</div>

			<!-- 확인 -->
			<div class="updateName-checkbox-wrapper">
				<div class="updateName-checkbox">
					<div class="updateName-checkbox-title">다음</div>
				</div>
			</div>

		</div>
	</form>
	<script
		src="http://localhost:8001/always5/resources/js/user_js/updateName.js"></script>
</body>

</html>