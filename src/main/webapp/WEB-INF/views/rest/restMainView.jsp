<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainView.css">
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
                    <img src="${contextPath}/${at.filePath}/${at.changeName}" alt="가게 사진">
                </c:forEach>
            </div>

            <!-- 가게 정보 출력 필요 -->
            <div id="rest-info">
                <!-- 가게 이름, 리뷰 평점 및 찜 수 -->
                <div id="rest-title">
                    <h1>${restName }</h1>

                    <!-- 리뷰 평점 및 찜 수 -->
                    <div id="rest-record">
                        <div class="rest-record">
                            <button type="button" id="select-map">지도 보기</button>
                        </div>
                        <div class="rest-record">
                            <img src="../../../resources/file/common_img/왕관 컬러.png" alt="평점 왕관">
                            <!-- 평점 데이터 출력 -->
                            <div>${restRating }</div>
                        </div>
                        <div class="rest-record">
                            <c:if test="${(loginUser eq null) or (userDibs eq null)}">
                                <img src="../../../resources/file/common_img/찜_선택전.png" alt="">
                            </c:if>
                            <c:if test="${(loginUser ne null) and (userDibs ne null)}">
                                <img src="../../../resources/file/common_img/찜_선택후.png" alt="">
                            </c:if>
                            <div>${restLikeNo}</div>
                        </div>
                    </div>
                </div>
                <div id="rest-category">
                    ${foodCategoryNo}
                </div>

                <br>

                <div id="rest-introduce">
                    ${restIntro}
                </div>
                <div id="rest-detail">
                    <div class="rest-detail">
                        <img src="../../../resources/file/common_img/free-icon-tag-outline-58313.png" alt="">
                        <p>
                            <c:forEach var="mc" items="${mcList}">
                                ${mc.menuCategoryNo} 
                            </c:forEach>
                        </p>
                    </div>
                    <div class="rest-detail">
                        <img src="../../../resources/file/common_img/free-icon-location-3865991.png" alt="">
                        <p>${restAddress}</p>
                    </div>
                    <div class="rest-detail">
                        <img src="../../../resources/file/common_img/free-icon-telephone-107778.png" alt="">
                        <p>${restPhone}</p>
                    </div>
                    <div class="rest-detail">
                        <img src="../../../resources/file/common_img/free-icon-clock-88291.png" alt="">
                        <p>${restOperTime}</p>
                    </div>

                    <button type="button" id="regist-review" data-toggle="modal" data-target="#myModal">리뷰 작성</button>
                    
                    
                </div>
            </div>
            <div id="rest-content">
                
            </div>
        </main>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>