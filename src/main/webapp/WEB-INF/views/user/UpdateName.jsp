<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="User" value="${sessionScope.User}" />
<c:if test="${empty User}">
</c:if>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/user_css/UpdateName.css" />
</head>

<body>
	<form action="updatename.u" class="updateName-Container" method="POST">
		<div class="updateName">

			<!-- 닉네임 변경 로고 -->
			<div class="updateName-logo-main">
				<img class="logo-image"
					src="${pageContext.request.contextPath}/resources/file/user_img/UpdateName-img/1.png" />

			</div>

			<div class="updateName-title">닉네임 변경</div>

			<div class="updateName-notice">사용하고자 하는 닉네임으로 변경해주세요</div>

			<!-- 닉네임 변경 입력 -->
			<div class="inputupdateName-wrapper">
				<div class="inputupdateName-box">
					<div class="inputupdateName-text">
						<input type="text" name="nickName"
							class="inputupdateName-phone" placeholder="변경할 닉네임 입력">
					</div>
				</div>
			</div>

			<!-- 확인 -->
			<div class="updateName-checkbox-wrapper">
				<div class="updateName-checkbox">
					<button type="submit" class="updateName-checkbox-title">다음</button>
				</div>
			</div>
			<script
				src="${pageContext.request.contextPath}/resources/js/user_js/updateName.js"></script>
		</div>
	</form>
</body>

</html>