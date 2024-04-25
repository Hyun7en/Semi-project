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
	href="${pageContext.request.contextPath}/resources/css/user_css/MypageReview.css" />
</head>

<body>
    <form action="myreview.ui" class="MypageReview-Container" method="POST">
        <div class="MypageReview">

            <!-- 작성 리뷰 -->
            <div class="MypageReview-title-box">
                <div class="MypageReview-Name">${loginUser.nickName}</div>
                <div class="MypageReview-Name2">님의 작성 리뷰</div>
            </div>

            <!-- 1번 리뷰 -->
            <c:forEach var="review" items="${list}">
            <div class="reviewbox01">
                <div class="reviewbox-wrapper">
                    <div class="reviewbox-title">${review.restName}</div>
                    <div class="reviewbox-grade">${review.reviewRating}</div>
					
                    <div class="crown-rank">
					<c:forEach begin="1" end="${review.reviewRating}">
						<img class="crown"
							src="${pageContext.request.contextPath}/resources/file/user_img/MypageGoods-img/crown.png" />
					</c:forEach>
					</div>

                    <div class="review-box-mainpage">
                        <button class="review-box-mainpagebox"><a href="main.re?rno=${review.restNo}">가게보기</a></button>
                    </div>
					
                    <img class="reviewbox-line" src="img/line-50.svg" />
                    <div class="reviewbox-text">${review.reviewContent}</div>
                    
					<c:forEach var="menu" items="${review.restAtList}">
                    <img class="reviewbox-preview01" src="${pageContext.request.contextPath}/${menu.filePath}/${menu.changeName}" />
                    </c:forEach>
                    
                    <c:forEach var="menu" items="${rest.restAtList}">
                    <img class="reviewbox-preview02" src="${pageContext.request.contextPath}/${menu.filePath}/${menu.changeName}" />
                   	</c:forEach>
                   
                   	<c:forEach var="menu" items="${rest.restAtList}">
                    <img class="reviewbox-preview03" src="${pageContext.request.contextPath}/${menu.filePath}/${menu.changeName}" />
					</c:forEach>

                </div>
            </div>
            </c:forEach>

    
       <%--  <!-- 2번 리뷰 -->
        <div class="reviewbox02">
            <div class="reviewbox-wrapper">
                    <div class="reviewbox-title">미스사이공 세종대점</div>
                    <div class="reviewbox-grade">평점 4.0</div>

                    <div class="crown-rank">
                        <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                        <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                        <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                        <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                    </div>

                    <div class="review-box-mainpage">
                        <button class="review-box-mainpagebox"><a href="#">가게보기</a></button>
                    </div>

                    <img class="reviewbox-line" src="img/line-50.svg" />
                    <div class="reviewbox-text">남김없이 다 먹었어요 배터질것같아요 배빵빵</div>

                    <img class="reviewbox-preview01" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/쌀국수01.jpg" />
                    <img class="reviewbox-preview02" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/쌀국수02.jpg" />

                    <div class="reviewbox-usermenu">
                        <div class="reviewbox-usermenu-title">양지쌀국수</div>
                    </div>
            </div>
        </div>

        <!-- 3번 리뷰 -->
        <div class="reviewbox03">
            <div class="reviewbox-wrapper">
                <div class="reviewbox-title"><a href="#">육회에빠진연어</a></div>
                <div class="reviewbox-grade">평점 5.0</div>

                <div class="crown-rank">
                    <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                    <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                    <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                    <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                    <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                </div>

                	<div class="review-box-mainpage">
                        <button class="review-box-mainpagebox"><a href="#">가게보기</a></button>
                    </div>

                <img class="reviewbox-line" src="img/line-50.svg" />
                <div class="reviewbox-text">GOOD!!</div>

                <img class="reviewbox-preview01" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/육회01.jpg" />
                <img class="reviewbox-preview02" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/육회02.jpg" />
                <img class="reviewbox-preview03" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/육회03.jpg" />

                <div class="reviewbox-usermenu">
                    <div class="reviewbox-usermenu-title">육회덮밥</div>
                </div>

            </div>
        </div>

            <!-- 4번 리뷰 -->
            <div class="reviewbox04">
                <div class="reviewbox-wrapper">
                    <div class="reviewbox-title">평창동 원조곱창</div>
                    <div class="reviewbox-grade">평점 3.0</div>

                    <div class="crown-rank">
                        <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                        <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                        <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                    </div>

                    <div class="review-box-mainpage">
                        <button class="review-box-mainpagebox"><a href="#">가게보기</a></button>
                    </div>
                    
                    <img class="reviewbox-line" src="img/line-50.svg" />
                    <div class="reviewbox-text">냠냠 잘먹었습니다</div>

                    <img class="reviewbox-preview01" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/곱창01.jpg" />
                    <img class="reviewbox-preview02" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/곱창02.jpg" />
                    <img class="reviewbox-preview03" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/곱창03.jpg" />

                    <div class="reviewbox-usermenu">
                        <div class="reviewbox-usermenu-title">막창소금구이</div>
                    </div>

                </div>
            </div>
        

            <!-- 5번 리뷰 -->
            <div class="reviewbox05">
                <div class="reviewbox-wrapper">
                        <div class="reviewbox-title">오케이연탄장군갈비</div>
                        <div class="reviewbox-grade">평점 2.0</div>

                        <div class="crown-rank">
                            <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                            <img class="crown" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/crown.png" />
                        </div>

                        <div class="review-box-mainpage">
                            <button class="review-box-mainpagebox"><a href="#">가게보기</a></button>
                        </div>

                        <img class="reviewbox-line" src="img/line-50.svg" />
                        <div class="reviewbox-text">식을까봐 허겁지겁 먹었네요</div>

                        <img class="reviewbox-preview01" src="${pageContext.request.contextPath}/resources/file/user_img/MypageReview-img/갈비02.jpg" />

                        <div class="reviewbox-usermenu">
                            <div class="reviewbox-usermenu-title">제주쪽갈비</div>
                        </div>

                </div>
            </div>
			<script src="${pageContext.request.contextPath}/resources/js/user_js/MyPageReview.js"></script>
        </div>
    </form>
</body> --%>

</html>