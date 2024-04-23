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
	href="http://localhost:8001/always5/resources/css/user_css/MypageGoods.css" />
</head>

<body>
	<form action="mygoods.ui" class="MypageGoods-Container"
		method="POST">
		<div class="MypageGoods">

			<!-- 찜 목록 -->
			<div class="MypageGoods-title-box">
				<div class="MypageGoods-Name">${User.userName}</div>
				<div class="MypageGoods-Name2">님의 찜 목록</div>
			</div>

			<!-- 1번 찜 -->
			<div class="reviewbox01">
				<div class="reviewbox-wrapper">
					<div class="reviewbox-title">한식 1번가 건대점</div>
					<div class="reviewbox-grade">평점 5.0</div>

					<div class="crown-rank">
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
					</div>

					<button class="review-box-deletebox">
						<div class="review-delete">
							<a href="">삭제</a>
						</div>
					</button>
					<button class="review-box-mainpagebox">
						<div class="review-box-mainpage">
							<a href="">가게보기</a>
						</div>
					</button>

					<img class="reviewbox-line" src="img/line-50.svg" />
					<div class="reviewbox-text">(전지로만) 부산식 돼지국밥, 모듬국밥, 살코기 순대국</div>

					<img class="reviewbox-preview01"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식01.jpg" />
					<img class="reviewbox-preview02"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식02.jpg" />
					<img class="reviewbox-preview03"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식03.jpg" />
				</div>
			</div>

			<!-- 2번 찜 -->
			<div class="reviewbox02">
				<div class="reviewbox-wrapper">
					<div class="reviewbox-title">미스사이공 세종대점</div>
					<div class="reviewbox-grade">평점 4.0</div>

					<div class="crown-rank">
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
					</div>

					<button class="review-box-mainpagebox02">
						<div class="review-box-mainpage02">
							<a href="">가게보기</a>
						</div>
					</button>
					<button class="review-box-deletebox02">
						<div class="review-delete02">삭제</div>
					</button>

					<img class="reviewbox-line" src="img/line-50.svg" />
					<div class="reviewbox-text">소고기 쌀국수, 사이공 볶음면, 새우볼 6pcs, 돈까스
						덮밥</div>

					<img class="reviewbox-preview01"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식01.jpg" />
					<img class="reviewbox-preview02"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식02.jpg" />
					<img class="reviewbox-preview03"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식03.jpg" />
				</div>
			</div>

			<!-- 3번 찜 -->
			<div class="reviewbox03">
				<div class="reviewbox-wrapper">
					<div class="reviewbox-title">육회바른연어</div>
					<div class="reviewbox-grade">평점 5.0</div>

					<div class="crown-rank">
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
					</div>

					<button class="review-box-mainpagebox03">
						<div class="review-box-mainpage03">가게보기</div>
					</button>
					<button class="review-box-deletebox03">
						<div class="review-delete03">삭제</div>
					</button>

					<img class="reviewbox-line" src="img/line-50.svg" />
					<div class="reviewbox-text">육회바른 연어 10p+모듬초밥(육회,연어,참치),
						육바연변신세트1(육덮+변신초밥)</div>

					<img class="reviewbox-preview01"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식01.jpg" />
					<img class="reviewbox-preview02"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식02.jpg" />
					<img class="reviewbox-preview03"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식03.jpg" />
				</div>
			</div>

			<!-- 4번 찜 -->
			<div class="reviewbox04">
				<div class="reviewbox-wrapper">
					<div class="reviewbox-title">평창동 원조곱창</div>
					<div class="reviewbox-grade">평점 3.0</div>

					<div class="crown-rank">
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
					</div>

					<button class="review-box-mainpagebox04">
						<div class="review-box-mainpage04">가게보기</div>
					</button>
					<button class="review-box-deletebox04">
						<div class="review-delete04">삭제</div>
					</button>

					<img class="reviewbox-line" src="img/line-50.svg" />
					<div class="reviewbox-text">직화 야채곱창, 나홀로수비드 소곱창, 곱창전골, 직화
						야채곱창, 직화 소급곱창</div>

					<img class="reviewbox-preview01"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식01.jpg" />
					<img class="reviewbox-preview02"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식02.jpg" />
					<img class="reviewbox-preview03"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식03.jpg" />
				</div>
			</div>

			<!-- 5번 찜 -->
			<div class="reviewbox05">
				<div class="reviewbox-wrapper">
					<div class="reviewbox-title">오케이연탄장군갈비</div>
					<div class="reviewbox-grade">평점 5.0</div>

					<div class="crown-rank">
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
						<img class="crown"
							src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/crown.png" />
					</div>

					<button class="review-box-mainpagebox05">
						<div class="review-box-mainpage05">가게보기</div>
					</button>
					<button class="review-box-deletebox05">
						<div class="review-delete05">삭제</div>
					</button>

					<img class="reviewbox-line" src="img/line-50.svg" />
					<div class="reviewbox-text">숯불직화양념쪽갈비, 쪽갈비600g + 버팔로윙,
						허브소금직화쪽갈비, 반반쪽갈비</div>

					<img class="reviewbox-preview01"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식01.jpg" />
					<img class="reviewbox-preview02"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식02.jpg" />
					<img class="reviewbox-preview03"
						src="http://localhost:8001/always5/resources/file/user_img/MypageGoods-img/한식03.jpg" />
				</div>
			</div>
			<script
				src="http://localhost:8001/always5/resources/js/user_js/MyPageGoods.js"></script>
		</div>
	</form>
</body>
</html>
