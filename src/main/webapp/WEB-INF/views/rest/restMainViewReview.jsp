<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/common_css/style.css">
<link rel="stylesheet" href="../../resources/css/rest_css/restMainViewReview.css">
<body>
    <div>
        <button id="rest-content-focus" class="rest-content-name" name="restContentName" value="review">리뷰</button>
        <button class="rest-content-name" name="restContentName" value="menu">메뉴</button>
        <button class="rest-content-name" name="restContentName" value="image">사진</button>
    </div>
    <div id="rest-review">
        <div class="rest-review-title">
            <!-- 왼쪽 총평점 -->
            <div id="review-title-left">
                <p>왕밥빵 1호점</p>
                <div>
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                    <h2>4.9</h2>
                </div>
            </div>
            <!-- 오른쪽 평점별 횟수 -->
            <div id="review-title-right">
                <!-- 왕관 -->
                <div>
                    <div class="review-crown-score">
                        <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                        <p>5.0</p>
                    </div>
                    <div class="review-crown-score">
                        <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                        <p>4.0</p>
                    </div>
                    <div class="review-crown-score">
                        <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                        <p>3.0</p>
                    </div>
                    <div class="review-crown-score">
                        <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                        <p>2.0</p>
                    </div>
                    <div class="review-crown-score">
                        <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                        <p>1.0</p>
                    </div>
                </div>

                <hr>

                <!-- 횟수 -->
                <div id="review-crown-count">
                    <p>59</p>
                    <p>3</p>
                    <p>0</p>
                    <p>0</p>
                    <p>2</p>
                </div>
            </div>
        </div>

        <!-- 리뷰 컨텐츠 -->
        <div class="rest-review-content">
            <!-- 리뷰 작성자, 등급, 날짜 -->
            <div id="review-content-title">
                <div>
                    <h2>왕고기</h2>
                    <p>밥백성</p>
                </div>
                <p>2024.04.06</p>
            </div>

            <hr>

            <!-- 리뷰 평점 -->
            <div id="review-content-crown">
                <p>평점 5.0</p>
                <div>
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                </div>
            </div>
            <!-- 리뷰 사진 -->
            <div id="review-content-image">
                <img src="../../resources/file/upfile/review_upfile/rest202404042242.jpg" alt="">
                <img src="../../resources/file/upfile/review_upfile/rest202404042242.jpg" alt="">
                <img src="../../resources/file/upfile/review_upfile/rest202404042242.jpg" alt="">
            </div>

            <!-- 리뷰 글 -->
            <p>너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요!</p>
        </div>

        <div class="rest-review-content">
            <div id="review-content-title">
                <div>
                    <h2>왕고기</h2>
                    <p>밥백성</p>
                </div>
                <p>2024.04.06</p>
            </div>
            <hr>
            <div id="review-content-crown">
                <p>평점 5.0</p>
                <div>
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                    <img src="../../resources/file/common_img/왕관 컬러.png" alt="">
                </div>
            </div>
            <div id="review-content-image">
                <img src="../../resources/file/upfile/review_upfile/rest202404042242.jpg" alt="">
                <img src="../../resources/file/upfile/review_upfile/rest202404042242.jpg" alt="">
                <img src="../../resources/file/upfile/review_upfile/rest202404042242.jpg" alt="">
            </div>
            <p>너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요!</p>
        </div>

        <!-- 더보기 버튼 -->
        <div class="more-content"><a href="">더보기</a></div>
    </div>
</body>
</html>