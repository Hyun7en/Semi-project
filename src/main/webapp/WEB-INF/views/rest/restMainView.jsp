<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.always5.review.rest.model.vo.Restaurant, com.always5.review.rest.model.vo.Menu"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script> -->
<link rel="stylesheet" href="../../resources/css/common_css/style.css">
<link rel="stylesheet" href="../../resources/css/rest_css/restMainView.css">
<!-- <link rel="stylesheet" href="../../resources/js/restMainView.js"> -->
<body>
    <div id="wrap">
        <main>
            <div id="rest-img">
                <img src="../../resources/file/upfile/rest_upfile/rest202404042242.jpg" alt="">
            </div>

            <!-- 가게 정보 출력 필요 -->
            <div id="rest-info">
                <!-- 가게 이름, 리뷰 평점 및 찜 수 -->
                <div id="rest-title">
                    <h1>왕밥빵 1호점</h1>

                    <!-- 리뷰 평점 및 찜 수 -->
                    <div id="rest-record">
                        <div class="rest-record">
                            <button type="button" id="select-map">지도 보기</button>
                        </div>
                        <div class="rest-record">
                            <img src="../../resources/file/common_img/왕관 컬러.png" alt="평점 왕관">
                            <!-- 평점 데이터 출력 -->
                            <div>4.5</div>
                        </div>
                        <div class="rest-record">
                            <img src="../../resources/file/common_img/찜_선택후.png" alt="">
                            <!-- 찜 수 데이터 출력 -->
                            <div>1853</div>
                        </div>
                    </div>
                </div>
                <div id="rest-category">음식 카테고리 / 가게 카테고리</div>

                <br>

                <div id="rest-introduce">
                    왕밥빵 1호점은 영국에서 시작되어, 천년의 레시피를 지켜오는 유구한 전통의 레스토랑 입니다.
                    초대 왕밥빵 쉐프의 의지를 이어 저렴한 가격을 유지하며, 절대 가지마시....
                </div>
                <div id="rest-detail">
                    <div class="rest-detail">
                        <img src="../../resources/file/common_img/free-icon-tag-outline-58313.png" alt="">
                        <p>퓨전, 볶음밥, 왕밥빵, 밥, 빵, 빵빵빵</p>
                    </div>
                    <div class="rest-detail">
                        <img src="../../resources/file/common_img/free-icon-location-3865991.png" alt="">
                        <p>사랑시 고백구 행복동 1-1</p>
                    </div>
                    <div class="rest-detail">
                        <img src="../../resources/file/common_img/free-icon-telephone-107778.png" alt="">
                        <p>02-1588-8282</p>
                    </div>
                    <div class="rest-detail">
                        <img src="../../resources/file/common_img/free-icon-clock-88291.png" alt="">
                        <p>영업 종료 20:00
                            평일 11:00 ~ 20:00
                            주말 11:00 ~ 20:00
                            휴무일 : 매주 월요일</p>
                    </div>

                    <button type="button" id="regist-review" data-toggle="modal" data-target="#myModal">리뷰 작성</button>
                    
                    <!-- 리뷰 작성 modal -->
                    <!-- <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="">
                                    <div class="modal-header">
                                        <p>평점</p>
                                        <input type="text" name="reviewCrown">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                    
                                    <div class="modal-body" id="body">
                                        <textarea name="reviewContent" id=""></textarea>
                                    </div>
                    
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div> -->
                </div>
            </div>
            <div id="rest-content">
                <%@ include file="restMainViewReview.jsp" %>
                <%@ include file="restMainViewMenu.jsp" %>
                <%@ include file="restMainViewImage.jsp" %>
            </div>
        </main>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>