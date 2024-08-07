<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainViewReview.css">
<body>
    <div class="rest-review-title">
        <!-- 왼쪽 총평점 -->
        <div id="review-title-left">
            <p>${rest.restName}</p>
            <div>
                <img src="${pageContext.request.contextPath}/resources/file/common_img/왕관 컬러.png" alt="">
                <h2>${rest.restGrade}</h2>
            </div>
        </div>
        <!-- 오른쪽 평점별 횟수 -->
        <div id="review-title-right">
            <!-- 왕관 -->
            <div>
                <div class="review-crown-score">
                    <img src="${pageContext.request.contextPath}/resources/file/common_img/왕관 컬러.png" alt="">
                    <p>5.0</p>
                </div>
                <div class="review-crown-score">
                    <img src="${pageContext.request.contextPath}/resources/file/common_img/왕관 컬러.png" alt="">
                    <p>4.0</p>
                </div>
                <div class="review-crown-score">
                    <img src="${pageContext.request.contextPath}/resources/file/common_img/왕관 컬러.png" alt="">
                    <p>3.0</p>
                </div>
                <div class="review-crown-score">
                    <img src="${pageContext.request.contextPath}/resources/file/common_img/왕관 컬러.png" alt="">
                    <p>2.0</p>
                </div>
                <div class="review-crown-score">
                    <img src="${pageContext.request.contextPath}/resources/file/common_img/왕관 컬러.png" alt="">
                    <p>1.0</p>
                </div>
            </div>

            <hr>

            <!-- 횟수 -->
            <div id="review-crown-count">
                <c:forEach var="r" items="${map.ratingCount}">
                    <p>${r}</p>
                </c:forEach>
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
</body>
</html>