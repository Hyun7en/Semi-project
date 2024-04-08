<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="http://localhost:8001/always5/resources/css/common_css/style.css">
        <link rel="stylesheet" href="http://localhost:8001/always5/resources/css/search_css/searchKinds.css">

    </head>
   
    <body>
        <div id="wrap">
            <%@ include file="../common/header.jsp" %>

                <main>
                    <section class="search-nav" style="padding: 0px;">
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/백반메뉴.png" alt="">
                            <p>백반</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/찌개메뉴.png" alt="">
                            <p>찌개</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/국밥메뉴.png" alt="">
                            <p>국밥</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/제육메뉴.png" alt="">
                            <p>제육</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/돈가스메뉴.png" alt="">
                            <p>돈가스</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/김밥메뉴.png" alt="">
                            <p>김밥</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/초밥메뉴.png" alt="">
                            <p>초밥</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/햄버거메뉴.png" alt="">
                            <p>패스트푸드</p>
                        </div>
                    </section>



                    <section class="search-best">
                        <div>
                            <h1>종류별 맛집 결과 "국밥"</h1>
                            <h4>추천 맛집 매장 방문 고객님과 왕밤빵이 함께 엄선한 인기 맛집입니다.</h4>
                        </div>
                        <div>
                            <h3>BEST 3 리뷰로 검증된 맛집입니다.</h3>
                            <div class="search-best-img">
                                <div>
                                    <div class="search-best-crown">
                                        <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                            alt="">
                                        <img id="crown"
                                            src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownBig.png"
                                            alt="">
                                    </div>
                                    <div>
                                        <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                        <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                        <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                                    </div>
                                </div>
                                <div>
                                    <div class="search-best-crown">
                                        <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                            alt="">
                                        <img id="crown"
                                            src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownBig.png"
                                            alt="">
                                    </div>
                                    <div>
                                        <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                        <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                        <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                                    </div>
                                </div>
                                <div>
                                    <div class="search-best-crown">
                                        <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                            alt="">
                                        <img id="crown"
                                            src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownBig.png"
                                            alt="">
                                    </div>
                                    <div>
                                        <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                        <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                        <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                                    </div>
                                </div>
                            </div>
                            <br><br>
                            <hr size="3px" color="black" width="95%">
                            <br><br>
                        </div>

                    </section>


                    <section class="search-result">
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>
                        <div>
                            <div class="search-best-crownSmall">
                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                    alt="">
                                <img id="smallCrown"
                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                    alt="">
                            </div>
                            <div>
                                <p class="res-name"><span><b>할머니백반</span><span>&nbsp;&nbsp;4.0</span></b></p>
                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;청담동</span></p>
                                <p class="res-explain"><b>백반이 유명한 할머니집</b></p>
                            </div>
                        </div>




                    </section>


                </main>

                <%@ include file="../common/footer.jsp" %>
        </div>
    </body>

    </html>