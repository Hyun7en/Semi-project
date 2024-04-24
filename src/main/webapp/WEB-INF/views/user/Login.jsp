<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="User" value="${sessionScope.User}" />
<c:if test="${empty User}">
</c:if>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/user_css/logIn.css" />
</head>
<body>
	<form action="login.u" class="login-Container" method="POST">
		<div class="login">

			<!-- 로고 -->
			<div class="login-logo-main">
				<img class="logo-image"
					src="${pageContext.request.contextPath}/resources/file/user_img/login-img/logo.png" />
		    </div>
		    
			<div class="login-title">로그인</div>

			<!--로그인 박스 -->
			<div class="login-main-box">

				<!-- 아이디, 비밀번호 입력 -->
				<div class="login-box">

					<div class="login-input-box">

						<div class="login-id-wrapper">
							<input type="text" name="userId" class="login-input-id"
								placeholder="아이디 (현재 이메일 주소)">
						</div>
						<div class="login-Pwd-wrapper">
							<input type="password" name="userPwd" class="login-input-Pwd"
								placeholder="비밀번호를 입력하세요.">
						</div>

						<div class="login-checkbox">
							<button type="submit" class="login-checkbox-title">로그인</button>
						</div>
					</div>
				</div>

			</div>
			<script src="${pageContext.request.contextPath}/resources/js/user_js/login.js"></script>
		</div>
	</form>
</body>
</html>