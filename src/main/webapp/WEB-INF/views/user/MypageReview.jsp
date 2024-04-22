<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet"
	href="http://localhost:8001/always5/resources/css/user_css/MypageReview.css" />
</head>

<body>
    <form action="MypageReview.ui" class="MypageReview-Container" method="POST">
        <div class="MypageReview">

            <!-- 작성 리뷰 -->
            <div class="MypageReview-title-box">
                <div class="MypageReview-Name">${User.userName}</div>
                <div class="MypageReview-Name2">님의 작성 리뷰</div>
            </div>

            <!-- 1번 리뷰 -->
            <div class="reviewbox01">
                <div class="reviewbox-wrapper">
                    <div class="reviewbox-title">한식 1번가 건대점</div>
                    <div class="reviewbox-grade">평점 5.0</div>

                    <div class="crown-rank">
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/ccrown.png" />
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                    </div>

                    <button class="review-box-deletebox">
                        <div class="review-delete">삭제</div>
                    </button>
                    <button class="review-box-mainpagebox">
                        <div class="review-box-mainpage">가게보기</div>
                    </button>

                    <img class="reviewbox-line" src="img/line-50.svg" />
                    <div class="reviewbox-text">푸짐하고 맛있어염</div>

                    <img class="reviewbox-preview01" src="img/한식01.jpg" />
                    <img class="reviewbox-preview02" src="img/한식02.jpg" />
                    <img class="reviewbox-preview03" src="img/한식03.jpg" />

                    <div class="reviewbox-usermenu">
                        <div class="reviewbox-usermenu-title">비빔밥 + 찌개세트</div>
                    </div>

                </div>
            </div>

    
        <!-- 2번 리뷰 -->
        <div class="reviewbox02">
            <div class="reviewbox-wrapper">
                    <div class="reviewbox-title">미스사이공 세종대점</div>
                    <div class="reviewbox-grade">평점 4.0</div>

                    <div class="crown-rank">
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                    </div>

                    <button class="review-box-mainpage02">
                        <div class="review-box-mainpagebox02">가게보기</div>
                    </button>
                    <button class="review-box-deletebox02">
                        <div class="review-delete02">삭제</div>
                    </button>

                    <img class="reviewbox-line" src="img/line-50.svg" />
                    <div class="reviewbox-text">남김없이 다 먹었어요 배터질것같아요 배빵빵</div>

                    <img class="reviewbox-preview01" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식01.jpg" />
                    <img class="reviewbox-preview02" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식02.jpg" />
                    <img class="reviewbox-preview03" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식03.jpg" />

                    <div class="reviewbox-usermenu2">
                        <div class="reviewbox-usermenu-title2">양지쌀국수 + 치킨텐더</div>
                    </div>
            </div>
        </div>

        <!-- 3번 리뷰 -->
        <div class="reviewbox03">
            <div class="reviewbox-wrapper">
                <div class="reviewbox-title">육회에빠진연어</div>
                <div class="reviewbox-grade">평점 5.0</div>

                <div class="crown-rank">
                    <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                    <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                    <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                    <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                    <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                </div>

                <button class="review-box-mainpage03">
                    <div class="review-box-mainpagebox03">가게보기</div>
                </button>
                <button class="review-box-deletebox03">
                    <div class="review-delete03">삭제</div>
                </button>

                <img class="reviewbox-line" src="img/line-50.svg" />
                <div class="reviewbox-text">GOOD!!</div>

                <img class="reviewbox-preview01" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식01.jpg" />
                <img class="reviewbox-preview02" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식02.jpg" />
                <img class="reviewbox-preview03" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식03.jpg" />

                <div class="reviewbox-usermenu3">
                    <div class="reviewbox-usermenu-title3">육회덮밥 + 새우튀김</div>
                </div>

            </div>
        </div>

            <!-- 4번 리뷰 -->
            <div class="reviewbox04">
                <div class="reviewbox-wrapper">
                    <div class="reviewbox-title">평창동 원조곱창</div>
                    <div class="reviewbox-grade">평점 3.0</div>

                    <div class="crown-rank">
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                        <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                    </div>

                    <button class="review-box-mainpage04">
                        <div class="review-box-mainpagebox04">가게보기</div>
                    </button>
                    <button class="review-box-deletebox04">
                        <div class="review-delete04">삭제</div>
                    </button>

                    <img class="reviewbox-line" src="img/line-50.svg" />
                    <div class="reviewbox-text">냠냠 잘먹었습니다</div>

                    <img class="reviewbox-preview01" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식01.jpg" />
                    <img class="reviewbox-preview02" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식02.jpg" />
                    <img class="reviewbox-preview03" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식03.jpg" />

                    <div class="reviewbox-usermenu4">
                        <div class="reviewbox-usermenu-title4">막창 소금구이 260g</div>
                    </div>

                </div>
            </div>
        

            <!-- 5번 리뷰 -->
            <div class="reviewbox05">
                <div class="reviewbox-wrapper">
                        <div class="reviewbox-title">오케이연탄장군갈비</div>
                        <div class="reviewbox-grade">평점 2.0</div>

                        <div class="crown-rank">
                            <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                            <img class="crown" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/crown.png" />
                        </div>

                        <button class="review-box-mainpage05">
                            <div class="review-box-mainpagebox05">가게보기</div>
                        </button>
                        <button class="review-box-deletebox05">
                            <div class="review-delete05">삭제</div>
                        </button>

                        <img class="reviewbox-line" src="img/line-50.svg" />
                        <div class="reviewbox-text">식을까봐 허겁지겁 멋었네요</div>

                        <img class="reviewbox-preview01" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식01.jpg" />
                        <img class="reviewbox-preview02" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식02.jpg" />
                        <img class="reviewbox-preview03" src="http://localhost:8001/always5/resources/file/user_img/MypagReview-img/한식03.jpg" />

                        <div class="reviewbox-usermenu5">
                            <div class="reviewbox-usermenu-title5">막창 소금구이(260g)</div>
                        </div>

                </div>
            </div>
			<script src="http://localhost:8001/always5/resources/js/user_js/MyPageReview.js"></script>
        </div>
    </form>
</body>

</html>