<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<link rel="stylesheet"
	href="http://localhost:8001/always5/resources/css/user_css/SearchPwd02.css" />
</head>

<body>
	<div class="SearchPwd02">

		<!-- 비밀번호 찾기 로고-->
		<div class="SearchPwd02-Verification">
			<div class="SearchPwd02-main">
				<img class="SearchPwd02-main-image"
					src="http://localhost:8001/always5/resources/file/upfile/user_upfile/searchpwd02-img/2x.png" />
			</div>
		</div>

		<div class="SearchPwd02-main-title">비밀번호 찾기</div>

		<!-- 비밀번호 인증 -->
		<div class="password-Verification">
			<div class="password-Verification-box">
				<div class="password-Verification-titlebox">
					<div class="password-Verification-radiobox">
						<input type="radio" name="password-Verification-radio"
							class="password-Verification-radio"
							value="password-Verification-radio" checked>
					</div>
					<div class="password-Verification-title">회원정보에 등록된 휴대전화로 인증</div>
				</div>

				<div class="password-Verification-title2">회원정보에 등록한 휴대전화 번호와
					입력한 휴대전화 번호가 같아야 인증번호를 받을 수 있습니다.</div>

				<img class="password-Verification-line"
					src="http://localhost:8001/always5/resources/file/upfile/user_upfile/searchpwd02-img/line-46.svg" />

				<div class="Search-Verification-titlebox">
					<div class="notice-searchPwd">등록된 회원정보로 찾기 어려우시다면, 본인 확인 후
						아이디를 찾아드립니다.</div>
				</div>

				<div class="Search-Verification-titlebox2">
					<input type="radio" name="Search-Verification-radio"
						class="Search-Verification-radio"
						value="Search-Verification-radio" checked>
					<div class="Search-Verification-title">본인확인 이메일로 인증</div>
				</div>

			</div>
		</div>


		<!-- 본인 인증 -->
		<div class="SearchPwd02-submit-box">
			<input type="submit" name="SearchPwd02-submit"
				class="SearchPwd02-submit" value="본인 인증">
		</div>

	</div>
</body>

</html>