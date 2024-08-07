<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="Mypage" value="${sessionScope.Mypage}" />
<c:if test="${empty Mypage}">
</c:if>
	<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
href="${pageContext.request.contextPath}/resources/css/user_css/MypageGoods.css" />
</head>

<body>
	<form action="mygoods.u" class="MypageGoods-Container" method="POST">
		<div class="MypageGoods">

			<!-- 찜 목록 -->
			<div class="MypageGoods-title-box">
				<div class="MypageGoods-Name">${loginUser.nickName}</div>
				<div class="MypageGoods-Name2">님의 찜 목록</div>
			</div>

			<!-- 1번 찜 -->
			<c:forEach var="rest" items="${list}">
			<div class="reviewbox01">
				<div class="reviewbox-wrapper">
					<div class="reviewbox-title">${rest.restName}</div>
					<div class="reviewbox-grade">${rest.restGrade}</div>
			
					<div class="crown-rank">
					<c:forEach begin="1" end="${rest.restGrade}">
						<img class="crown"
							src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/crown.png" />
					</c:forEach>
					</div>

					<button class="review-box-mainpagebox">
						<div class="review-box-mainpage">
							<a href="main.re?rno=${rest.restNo}">가게보기</a>
						</div>
					</button>

					<img class="reviewbox-line" src="img/line-50.svg" />
					<div class="reviewbox-text">${rest.restIntro}</div>
					
					<c:forEach var="menu" items="${rest.restAtList}">
					<img class="reviewbox-preview01"
						src="${pageContext.request.contextPath}/${menu.filePath}/${menu.changeName}" />
					</c:forEach>
					
					<c:forEach var="menu2" items="${rest.restAtList}">
					<img class="reviewbox-preview02"
						src="${pageContext.request.contextPath}/${menu.filePath}/${menu.changeName}" />
					</c:forEach>
					
					<c:forEach var="menu3" items="${rest.restAtList}">
					<img class="reviewbox-preview03"
						src="${pageContext.request.contextPath}/${menu.filePath}/${menu.changeName}" />
					</c:forEach>
				</div>
			</div>
		   </c:forEach>
		   
			<%-- <!-- 2번 찜 -->
			<div class="reviewbox02">
				<div class="reviewbox-wrapper">
					<div class="reviewbox-title">${rest.restName}</div>
					<div class="reviewbox-grade">${rest.restGrade}</div>

					<div class="crown-rank">
					<c:forEach var="crown" items="${rest.restGrade}">
						<img class="crown"
							src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/crown.png" />
						</c:forEach>
					</div>

					<button class="review-box-mainpagebox02">
						<div class="review-box-mainpage02">
							<a href="main.re">가게보기</a>
						</div>
					</button>

					<img class="reviewbox-line" src="img/line-50.svg" />
					<div class="reviewbox-text">소고기 쌀국수, 사이공 볶음면, 새우볼 6pcs, 돈까스
						덮밥</div>

					<img class="reviewbox-preview01"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식01.jpg" />
					<img class="reviewbox-preview02"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식02.jpg" />
					<img class="reviewbox-preview03"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식03.jpg" />
				</div>
			</div>

			<!-- 3번 찜 -->
			<div class="reviewbox03">
				<div class="reviewbox-wrapper">
					<div class="reviewbox-title">육회바른연어</div>
					<div class="reviewbox-grade">평점 5.0</div>

					<div class="crown-rank">
					<c:forEach var="crown" items="${rest.restGrade}">
						<img class="crown"
							src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/crown.png" />
						</c:forEach>
					</div>

					<button class="review-box-mainpagebox03">
						<div class="review-box-mainpage03"><a href="main.re">가게보기</a></div>
					</button>

					<img class="reviewbox-line" src="img/line-50.svg" />
					<div class="reviewbox-text">육회바른 연어 10p+모듬초밥(육회,연어,참치),
						육바연변신세트1(육덮+변신초밥)</div>

					<img class="reviewbox-preview01"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식01.jpg" />
					<img class="reviewbox-preview02"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식02.jpg" />
					<img class="reviewbox-preview03"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식03.jpg" />
				</div>
			</div>

			<!-- 4번 찜 -->
			<div class="reviewbox04">
				<div class="reviewbox-wrapper">
					<div class="reviewbox-title">평창동 원조곱창</div>
					<div class="reviewbox-grade">평점 3.0</div>

					<div class="crown-rank">
					<c:forEach var="crown" items="${rest.restGrade}">
						<img class="crown"
							src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/crown.png" />
						</c:forEach>
					</div>

					<button class="review-box-mainpagebox04">
						<div class="review-box-mainpage04"><a href="main.re">가게보기</a></div>
					</button>

					<img class="reviewbox-line" src="img/line-50.svg" />
					<div class="reviewbox-text">직화 야채곱창, 나홀로수비드 소곱창, 곱창전골, 직화
						야채곱창, 직화 소급곱창</div>

					<img class="reviewbox-preview01"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식01.jpg" />
					<img class="reviewbox-preview02"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식02.jpg" />
					<img class="reviewbox-preview03"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식03.jpg" />
				</div>
			</div>

			<!-- 5번 찜 -->
			<div class="reviewbox05">
				<div class="reviewbox-wrapper">
					<div class="reviewbox-title">오케이연탄장군갈비</div>
					<div class="reviewbox-grade">평점 5.0</div>

					<div class="crown-rank">
					<c:forEach var="crown" items="${rest.restGrade}">
						<img class="crown"
							src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/crown.png" />
						</c:forEach>
					</div>

					<button class="review-box-mainpagebox05">
						<div class="review-box-mainpage05"><a href="main.re">가게보기</a></div>
					</button>

					<img class="reviewbox-line" src="img/line-50.svg" />
					<div class="reviewbox-text">숯불직화양념쪽갈비, 쪽갈비600g + 버팔로윙,
						허브소금직화쪽갈비, 반반쪽갈비</div>

					<img class="reviewbox-preview01"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식01.jpg" />
					<img class="reviewbox-preview02"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식02.jpg" />
					<img class="reviewbox-preview03"
						src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/한식03.jpg" />
				</div>
			</div> --%>
			<script
				src="${pageContext.request.contextPath}/resources/js/user_js/MypageGoods.js"></script>
		</div>
	</form>
</body>
	</html>