<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restReviewView.css">
<body>
    <%@ include file="../common/header.jsp" %>    
    <div id="wrap">
        <main>
            <div id="rest-review">
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
                            <!-- 가져온 reviewList 안의 review 중 reviewRating이 5인 사람, 4인 사람, 3인 사람 ... -->
                            <c:forEach var="r" items="${ratingCount}">
                                <p>${r}</p>
                            </c:forEach>
                        </div>
                    </div>
                </div>

                <!-- 리뷰 컨텐츠 -->

                <c:forEach var="review" items="${reviewList}">
                    <div class="rest-review-content">
                        <!-- 리뷰 작성자, 등급, 날짜 -->
                        <div id="review-content-title">
                            <div>
                                <h2>${review.userNo}</h2>
                            </div>
                            <p>${review.reviewEnrollDate}</p>
                        </div>
    
                        <hr>
    
                        <!-- 리뷰 평점 -->
                        <div id="review-content-crown">
                            <p>평점 ${review.reviewRating}</p>
                            <div>
                                <c:forEach var="r" begin="1" end="${review.reviewRating}">
                                    <img src="${pageContext.request.contextPath}/resources/file/common_img/왕관 컬러.png" alt="">
                                </c:forEach>
                            </div>
                        </div>
                        <!-- 리뷰 사진 -->
                        <div id="review-content-image">
                            <c:forEach var="reviewAt" items="${review.reviewAtList}">
                                <img src="${pageContext.request.contextPath}/${reviewAt.filePath}/${reviewAt.changeName}.jpg" alt="">
                            </c:forEach>
                        </div>
    
                        <!-- 리뷰 글 -->
                        <p>${review.reviewContent}</p>
                    </div>
                </c:forEach>
                <div class="paging-area" align="center">
                    <!-- for문으로 수정 필요 -->
                    <button onclick="">&lt;</button>
                    <button onclick="">1</button>
                    <button onclick="">2</button>
                    <button onclick="">3</button>
                    <button onclick="">4</button>
                    <button onclick="">5</button>
                    <button onclick="">6</button>
                    <button onclick="">7</button>
                    <button onclick="">8</button>
                    <button onclick="">9</button>
                    <button onclick="">10</button>
                    <button onclick="">&gt;</button>
                </div>

                <!-- <div id="rest-review-regist">
                    <form action="">
                        <div></div>
                        <button type="submit">리뷰 등록</button>
                    </form>
                </div> -->
            </div>
        </main>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>