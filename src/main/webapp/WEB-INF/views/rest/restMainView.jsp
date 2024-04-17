<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> -->

<!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script> -->

<!-- <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script> -->

<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainView.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainViewReview.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainViewMenu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainViewImage.css">

<!-- <link rel="stylesheet" href="../../resources/js/restMainView.js"> -->
<body>
    <%@ include file="../common/header.jsp"%>
    <!-- 
        1. 지도 보기 구현
        2. 
     -->
    <div id="wrap">
        <main>
            <div id="rest-img">
                <c:forEach var="at" items="${rest.restAtList}">
                    <img src="${pageContext.request.contextPath}/${at.filePath}/${at.changeName}.jpg" alt="가게 사진">
                </c:forEach>
            </div>

            <!-- 가게 정보 출력 필요 -->
            <div id="rest-info">
                <!-- 가게 이름, 리뷰 평점 및 찜 수 -->
                <div id="rest-title">
                    <h1>${rest.restName }</h1>

                    <!-- 리뷰 평점 및 찜 수 -->
                    <div id="rest-record">
                        <div class="rest-record">
                            <button type="button" id="select-map">지도 보기</button>
                        </div>
                        <div class="rest-record">
                            <img src="${pageContext.request.contextPath}/resources/file/common_img/왕관 컬러.png" alt="평점 왕관">
                            <!-- 평점 데이터 출력 -->
                            <div>${rest.restGrade }</div>
                        </div>
                        <div class="rest-record">
                            <!-- $ 표시 필요 -->
                            <!-- <c:if test="{(loginUser eq null) or (userDibs eq null)}">
                                <img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택전.png" alt="">
                            </c:if>
                            <c:if test="{(loginUser ne null) and (userDibs ne null)}">
                                <img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택후.png" alt="">
                            </c:if> -->
                            <img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택전.png" alt="">
                            <div>${rest.restLikeNo}</div>
                        </div>
                    </div>
                </div>
                <div id="rest-category">
                    ${rest.foodCategoryNo} |
                    <c:forEach var="mc" items="${mcList}">
                        ${mc.menuCategoryNo}
                    </c:forEach>
                </div>

                <br>

                <div id="rest-introduce">
                    ${rest.restIntro}
                    <!-- <div>${rest.restIntro}</div>
                    <button></button> -->
                </div>
                

                <script>

                </script>
                <div id="rest-detail">
                    <div class="rest-detail">
                        <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-tag-outline-58313.png" alt="">
                        <p>
                            <c:forEach var="mc" items="${mcList}">
                                ${mc.menuCategoryNo} 
                            </c:forEach>
                        </p>
                    </div>
                    <div class="rest-detail">
                        <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-location-3865991.png" alt="">
                        <p>${rest.restAddress}</p>
                    </div>
                    <div class="rest-detail">
                        <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-telephone-107778.png" alt="">
                        <p>${rest.restPhone}</p>
                    </div>
                    <div class="rest-detail">
                        <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-clock-88291.png" alt="">
                        <p>${rest.restOperDate}</p>
                    </div>

                    <button type="button" id="regist-review" data-toggle="modal" data-target="#myModal">리뷰 작성</button>
                    
                    
                </div>
            </div>
            <div id="rest-detail-page">
                <div>
                    <button class="rest-detail-page-name" onclick="detailPage(1)">리뷰</button>
                    <button class="rest-detail-page-name" onclick="detailPage(2)">메뉴</button>
                    <button class="rest-detail-page-name" onclick="detailPage(3)">사진</button>
                </div>

                <div id="rest-detail-page-content">
                    <!-- ajax로 데이터 넘겨 받아 그릴 것 -->
                    <!-- jsp:include page="restMainViewReview.jsp"/jsp:include -->
                </div>

                
                <!-- 
                    if test detailPage eq 'review'
                    jsp include page = restMainViewReview.jsp
                    EL 구문은 서버를 다녀오므로 이미 한 번 서버를 다녀온 이상 데이터가 바뀔 수 없음
                    EL로 include 하고 싶다면 비동기를 포기해야 함, 서버를 다시 다녀와야 하므로 페이지가 바뀌기 때문에
                -->
            </div>

            <script>
                let restNo = "<c:out value='${rest.restNo}'/>";
                function detailPage(num){
                    switch(num){
                        case 1:
                            $.ajax({
                                url: "${pageContext.request.contextPath}/detailReview.re",
                                data: {restNo: restNo},
                                success: function(map){
                                    restReviewContentDraw(map);
                                },
                                error: function(){
                                    errorRestContentDraw("등록된 리뷰가 없습니다.");
                                }
                            })
                            break;
                        case 2:
                            $.ajax({
                                url: "detailMenu.re",
                                data: restNo,
                                success: function(menuList){
                                    restReviewContentDraw(menuList);
                                },
                                error: function(){
                                    errorRestContentDraw("등록된 메뉴가 없습니다.");
                                }
                            })
                            break;
                        case 3:
                            $.ajax({
                                url: "detailImg.re",
                                data: restNo,
                                success: function(imgList){
                                    restReviewContentDraw(imgList);
                                },
                                error: function(){
                                    errorRestContentDraw("등록된 사진이 없습니다.");
                                }
                            })
                            break;
                    }
                }

                function restReviewContentDraw(reviewList){
                    const str = `<div class="rest-review-title">
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
                ${ratingCount.value}
                <c:forEach var="r" items="${ratingCount}">
                    <p>1</p>
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
    <div class="more-content"><a href="">더보기</a></div>`
                    document.querySelector("#rest-detail-page-content").innerHTML = str;
                }

                function restMenuContentDraw(menuList){
                    const str = ``
                    document.querySelector("#rest-detail-page-content").innerHTML = str;
                }

                function restImageContentDraw(imgList){
                    const str = ``
                    document.querySelector("#rest-detail-page-content").innerHTML = str;
                }

                function errorRestContentDraw(errorMsg){
                    const str = ``
                    document.querySelector("#rest-detail-page-content").innerHTML = str;
                }
            </script>
        </main>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>