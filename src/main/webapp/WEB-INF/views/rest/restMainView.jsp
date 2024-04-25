<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainView.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainViewReview.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainViewMenu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainViewImage.css">

<body>
    <%@ include file="../common/header.jsp" %>
    <div id="wrap">
        <main>
            <div id="rest-img">
                <c:forEach var="restAt" items="${rest.restAtList}">
                    <img src="${pageContext.request.contextPath}/${restAt.filePath}/${restAt.changeName}.jpg" alt="가게 사진">
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
                            <!-- <button type="button" id="select-map">지도 보기</button> -->
                        </div>
                        <div class="rest-record">
                            <img src="${pageContext.request.contextPath}/resources/file/common_img/왕관 컬러.png"
                                alt="평점 왕관">
                            <!-- 평점 데이터 출력 -->
                            <div>${rest.restGrade }</div>
                        </div>
                        
                        <c:choose>
                            <c:when test="${not empty loginUser}">
                                <div class="rest-record" id="rest-dibs" onclick="selectDibs()">
                            
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="rest-record" id="rest-dibs">
                            
                                </div>
                            </c:otherwise>
                        </c:choose>
                        
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
                    <!-- <div>${rest.restIntro}</div> <button></button> -->
                </div>


                <script>

                </script>
                <div id="rest-detail">
                    <div class="rest-detail">
                        <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-tag-outline-58313.png"
                            alt="">
                        <p>
                            <c:forEach var="mc" items="${mcList}">
                                ${mc.menuCategoryNo}
                            </c:forEach>
                        </p>
                    </div>
                    <div class="rest-detail">
                        <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-location-3865991.png"
                            alt="">
                        <p>${rest.restAddress}</p>
                    </div>
                    <div class="rest-detail">
                        <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-telephone-107778.png"
                            alt="">
                        <p>${rest.restPhone}</p>
                    </div>
                    <div class="rest-detail">
                        <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-clock-88291.png"
                            alt="">
                        <p>${rest.restOperDate}</p>
                    </div>
                    <c:if test="${not empty loginUser}">
                        <button type="button" id="regist-review" onclick="location.href = '${pageContext.request.contextPath}/enrollReviewForm.re?rno=${rest.restNo}'">리뷰 작성</button>
                    </c:if>
                </div>
            </div>
            <div id="rest-detail-page">
                <div>
                    <button class="rest-detail-page-name" onclick="detailPage(1)">리뷰</button>
                    <button class="rest-detail-page-name" onclick="detailPage(2)">메뉴</button>
                    <button class="rest-detail-page-name" onclick="detailPage(3)">사진</button>
                </div>

                <div id="rest-detail-page-content" value=""></div>
            </div>

            <script>
                function ajaxGetItemList(url, data, callback){
                    $.ajax({
                        url: url,
                        data: data,
                        success: function (result) {
                            callback(result)
                            // console.log("성공");
                        },
                        error: function () {
                            noRestContentDraw("정보를 불러오는데 실패 했습니다.");
                        }
                    })
                }

                function detailPage(num){
                    switch(num){
                        case 1:
                            ajaxGetItemList("${pageContext.request.contextPath}/detailReview.re", 
                                            {restNo : ${rest.restNo}}, 
                                            function(result){restReviewContentDraw(result)});
                                            break;
                        case 2:
                            ajaxGetItemList("${pageContext.request.contextPath}/detailMenu.re", 
                                            {restNo : ${rest.restNo}}, 
                                            function(result){restMenuContentDraw(result)});
                                            break;
                        case 3:
                            ajaxGetItemList("${pageContext.request.contextPath}/detailImg.re", 
                                            {restNo : ${rest.restNo}}, 
                                            function(result){restImageContentDraw(result)});
                                            break;
                    }
                };
                
                // 데이터 가져오기 성공 시 리뷰 디테일 페이지 출력
                function restReviewContentDraw(map) {
                    const reviewList = map.reviewList;
                    const ratingCount = map.ratingCount;

                    if (reviewList[0] != null){
                        let str = `<div class="rest-review-title">
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
                                            <div id="review-crown-count">`
                                            for(let c of ratingCount){
                                                    str += `<p>`+c+`</p>`
                                                }                                         
                                            str += `</div>
                                                </div>
                                            </div>`

                                            for (let num in reviewList) {
                                                str += `<div class="rest-review-content">
                                                        <!-- 리뷰 작성자, 등급, 날짜 -->
                                                        <div id="review-content-title">
                                                            <div>
                                                                <h2>`+reviewList[num].userNo+`</h2>
                                                            </div>
                                                            <p>`+reviewList[num].reviewEnrollDate+`</p>
                                                        </div>
                                    
                                                        <hr>
                                    
                                                        <!-- 리뷰 평점 -->
                                                        <div id="review-content-crown">
                                                            <p>평점 `+reviewList[num].reviewRating+`</p>
                                                        <div>`
                                                for(let i = 0; i < reviewList[num].reviewRating; i++){
                                                    str += `<img src="${pageContext.request.contextPath}/resources/file/common_img/왕관 컬러.png" alt="">`
                                                }
                                                str += `</div>
                                                        </div>
                                                        <!-- 리뷰 사진 -->
                                                        <div id="review-content-image">`

                                                for (let reviewAt of reviewList[num].reviewAtList) {
                                                    str += `<img src="${pageContext.request.contextPath}/`+reviewAt.filePath+`/`+reviewAt.changeName+`" alt="">`
                                                }
                                                str += `</div>
                                                        <p>`+reviewList[num].reviewContent+`</p>
                                                    </div>
                                                </div>`
                                                
                                                if((num == 1) && (reviewList.length > 2)){
                                                    str += `<div class="more-content" onclick="location.href = '${pageContext.request.contextPath}/review.re?rno=${rest.restNo}&pno=1'">더보기</div>`
                                                    break;
                                                }
                                            }
                        document.querySelector("#rest-detail-page-content").innerHTML = str;
                    } else {
                        noRestContentDraw("등록된 리뷰가 없습니다.");
                    }
                }

                // 데이터 가져오기 성공 시 메뉴 디테일 페이지 출력
                function restMenuContentDraw(menuList) {
                    if (menuList[0] != null){
                        let str = "";
                        str += `<div id="rest-menu-content">
                                <table>`
                                    let num = 0;
                                    for (let i = 0; i < (menuList.length + 1) / 2; i++){
                                        str += `<tr>
                                            <td class="menu-name">`+menuList[num].menuName+`</td>
                                            <td class="menu-price">`+menuList[num].menuPrice+`</td>`
                                        if ((num != menuList.length - 1) && (num < menuList.length)){
                                            str += `<td class="menu-margin"></td>
                                                    <td class="menu-name">`+menuList[num+1].menuName+`</td>
                                                    <td class="menu-price">`+menuList[num+1].menuPrice+`</td>`
                                        }
                                        num += 2;
                                        str += `</tr>`
                                    }
                                str += `</table>
                            </div>`
                        document.querySelector("#rest-detail-page-content").innerHTML = str;
                    } else {
                        noRestContentDraw("등록된 메뉴가 없습니다.");
                    }
                }

                // 데이터 가져오기 성공 시 사진 디테일 페이지 출력
                function restImageContentDraw(imgList) {
                    if (imgList[0] != null){
                        let str = "";
                        str += `<div id="rest-image-content">
                                    <div>`
                                        for(let img of imgList){
                                            str += `<img src="${pageContext.request.contextPath}/`+img.filePath+`/`+img.changeName+`" alt="">`
                                        }
                                    str += `</div>
                                </div>`
                        document.querySelector("#rest-detail-page-content").innerHTML = str;
                    } else {
                        noRestContentDraw("등록된 사진이 없습니다.");
                    }
                }

                // 가져온 데이터가 없을 경우 / 실패 했을 경우 페이지 출력
                function noRestContentDraw(errorMsg) {
                    const str = `<div class="rest-review-content">`+errorMsg+`</div>`
                    document.querySelector("#rest-detail-page-content").innerHTML = str;
                }

                function dibsStatus(){
                    ajaxGetItemList("${pageContext.request.contextPath}/dibsCount.re", 
                                    {restNo : "${rest.restNo}",
                                    userNo : "${loginUser.userNo}"}, 
                                    function(map){dibsFirstStatusDraw(map)});
                                    // "" 안 쓰니까 아예 null도 아니고 없는 걸로 인식해서 넣어줌
                };

                function dibsFirstStatusDraw(map){
                    const userDibs = map.userDibs;
                    const dibsCount = map.dibsCount;
                    console.log(userDibs);
                    console.log(dibsCount);
                    // 왜 restNo도 같이 들어오지?

                    // 로그인 되어 있는 경우
                    if(${not empty loginUser}){
                        // const dibs = document.createElement('#rest-dibs');
                        if(userDibs == null){
                            // > 찜 X -> 찜 O
                            let str = `<img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택전.png" alt="">
                                        <div>`+dibsCount.likeNo+`</div>`;
                            document.getElementById("rest-dibs").innerHTML = str;
                        } else {
                            // > 찜 O -> 찜 X
                            let str = `<img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택후.png" alt="">
                                        <div>`+dibsCount.likeNo+`</div>`;
                            document.getElementById("rest-dibs").innerHTML = str;
                        }
                    } else {
                        // 로그인 되어 있지 않은 경우
                        let str = `<img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택전.png" alt="">
                                        <div>`+dibsCount.likeNo+`</div>`;
                        document.getElementById("rest-dibs").innerHTML = str;
                    }
                }

                function dibsStatusDraw(map){
                    const userDibs = map.userDibs;
                    const dibsCount = map.dibsCount;
                    console.log(userDibs);
                    console.log(dibsCount);
                    // 왜 restNo도 같이 들어오지?

                    // 로그인 되어 있는 경우
                    if(${not empty loginUser}){
                        // const dibs = document.createElement('#rest-dibs');
                        if(userDibs != null){
                            // > 찜 X -> 찜 O
                            let str = `<img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택전.png" alt="">
                                        <div>`+dibsCount.likeNo+`</div>`;
                            document.getElementById("rest-dibs").innerHTML = str;
                        } else {
                            // > 찜 O -> 찜 X
                            let str = `<img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택후.png" alt="">
                                        <div>`+dibsCount.likeNo+`</div>`;
                            document.getElementById("rest-dibs").innerHTML = str;
                        }
                    } else {
                        // 로그인 되어 있지 않은 경우
                        let str = `<img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택전.png" alt="">
                                        <div>`+dibsCount.likeNo+`</div>`;
                        document.getElementById("rest-dibs").innerHTML = str;
                    }
                }

                function selectDibs(){
                    // console.log("클릭");
                    ajaxGetItemList("${pageContext.request.contextPath}/selectDibs.re", 
                                    {restNo : "${rest.restNo}",
                                    userNo : "${loginUser.userNo}"}, 
                                    function(map){dibsStatusDraw(map)});
                }
                
                // 로그인 되어 있는 경우
                // > 찜 한 경우
                // > 찜 하지 않은 경우

                // 로그인 되어 있지 않은 경우
                // 사진만 출력

            
                // 페이지 첫 로딩 시 리뷰 디테일 페이지 출력
                $(document).ready(function() {
                    detailPage(1);
                })
                $(document).ready(function() {
                    dibsStatus();
                })
            
            
            
            
            
            </script>
        </main>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>

</html>