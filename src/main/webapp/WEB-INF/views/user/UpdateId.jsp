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
	href="${pageContext.request.contextPath}/resources/css/user_css/UpdateId.css" />
</head>

<body>
	<form action="updateid.u" class="updateId-Container" method="POST">
		<div class="updateId">

			<!-- 상단 텍스트 -->
			<div class="id-preview">
				<div class="id-UserName">${loginUser.userId}</div>
				<div class="id-UserName-text01">님의 회원정보 중</div>
				<div class="id-UserName-text02">사용하고자 하는 아이디를 입력해주세요.</div>
			</div>

			<img class="line-pass"
				src="${pageContext.request.contextPath}/resources/file/user_img/UpdateId-img/line-47.svg" />

			<!-- 사용자 이메일 입력 -->
			<div class="email-preview">
				<img class="mdi-email-icon"
					src="${pageContext.request.contextPath}/resources/file/user_img/UpdateId-img/mdi-light-email.svg" />
				<div class="user-email">${loginUser.userId}</div>
			</div>

			<div class="input-email-box">
				<div class="input-email-text">
					<input type="text" name="updateId" class="input-email"
						placeholder="변경할 아이디 입력">
				</div>
			</div>

			<!-- 주의사항 안내 -->
			<p class="service-preview">
				왕밥빵 서비스의 변경/종료, 본인 작성 게시물 조치 등 대부분의 왕밥빵 안내에 사용합니다.<br />
			</p>


			<div class="updateId-checkbox">
				<button type="submit" class="updateId-checkbox-title">변경</button>
			</div>
			
			<script
				src="${pageContext.request.contextPath}/resources/js/user_js/UpdateId.js"></script>
		</div>
	</form>
</body>

</html>