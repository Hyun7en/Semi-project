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
	href="${pageContext.request.contextPath}/resources/css/user_css/Signout.css" />

</head>

<body>
	<form action="signout.u" class="Signout-Container" method="POST">
		<div class="Signout">

			<!-- 회원탈퇴 로고 -->
			<div class="signout-logo-main">
				<img class="signout-image"
					src="${pageContext.request.contextPath}/resources/file/user_img/Signout-img/logo.png" />

			</div>

			<div class="signout-title">닉네임 변경</div>

			<!-- 회원탈퇴 박스 -->
			<div class="input-signout">
				<div class="notice-wrapper">

					<div class="notice-subject">왕밥빵을 탈퇴하면,</div>
					<div class="notice-title">
						사용하고 계신 아이디 ${loginUser.userId}는 <br /> 탈퇴할 경우 재사용 및 복구가 불가능합니다.
					</div>
					<div class="notice-textbox">
						<span class="ntext1">탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</span> <span
							class="ntext2">하오니 <br />신중하게 선택하시기 바랍니다.
						</span>
					</div>

					<div class="warning-title">
						탈퇴 후 회원정보 및 개인형 서비스 이용기록은 <br />모두 삭제됩니다.
					</div>

					<div class="warning-text">
						탈퇴 후에도 서비스에 등록한 댓글, 리뷰 등 게시물은 그대로 남아 있습니다. <br /> 리뷰에 올린 게시글 및
						댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다. <br /> 삭제를 원하는 게시글이 있다면 반드시 탈퇴 전
						비공개 처리하거나 <br /> 삭제하시기 바랍니다.
					</div>
					<div class="warning-text2">
						탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, <br /> 게시글을 임의로 삭제할 수
						없습니다.
					</div>

					<div class="signout-checkwrapper">
						<div class="notice-agree">위 유의사항을 모두 확인하였고, 탈퇴를 진행합니다.</div>

					</div>

					<div class="signout-checkbox-wrapper">
						<div class="signout-checkbox">
							<button type="submit" class="signout-checkbox-title">다음</button>
						</div>
					</div>

				</div>

			</div>
			<script
				src="${pageContext.request.contextPath}/resources/js/user_js/Signout.js"></script>
		</div>
	</form>
</body>

</html>