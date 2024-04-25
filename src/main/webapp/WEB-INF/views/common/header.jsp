<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/common_css/header.css">


</head>
<body>

<!-- header -->

	<header>
		<div id="header">
			<div class="header-logo">
				<!-- <img src="${pageContext.request.contextPath}/resources/image/headerColorLogo.png"> -->
				<img onclick="location.href='${pageContext.request.contextPath}'"
					src="${pageContext.request.contextPath}/resources/file/common_img/왕밥빵로고 컬러.png">
				<p onclick="location.href='${pageContext.request.contextPath}'"
					id="logo-name">왕밥빵</p>
			</div>
			<div>
				<form action="" id="search-bar" method="GET">
					<input type="text" name="search-keyword" id="search-box"> <input
						type="submit" value="검색" id="search-button">
				</form>
			</div>

			<c:choose>
				<c:when test="${empty loginUser}">
					<div id="memberButton">
						<a href="login.ui">로그인</a> <a href="signin.ui">회원가입</a>
					</div>
				</c:when>

				<c:otherwise>
					<c:choose>
						<c:when test="${loginUser.authority == 'N'}">
							<div id="memberButton">
								<a href="">${loginUser.userName}님</a> <a href="mypage.ui">마이페이지</a>
								<a href="logout.ui">로그아웃</a>
							</div>
						</c:when>
						<c:otherwise> 
							<div id="memberButton">
								<a href="">${loginUser.userName}님</a> <a href="adminPage.ad">관리자페이지</a>
								<a href="logout.ui">로그아웃</a>
							</div>
						</c:otherwise>
					</c:choose>
				</c:otherwise>

			</c:choose>
		</div>

		<!-- nav -->
		<nav id="nav-1">
			<ul id="navi-1">
				<li><a onclick="location.href='searchKinds.sc?rpage=1'">음식별</a></li>
				<li><a onclick="location.href='searchMenu.sc?rpage=1'">메뉴별</a></li>
				<li><a onclick="location.href='searchRegion.sc?rpage=1'">지역별</a></li>
				<li><a href="CsCenter">고객센터</a></li>
			</ul>
		</nav>

	</header>


</body>
</html>