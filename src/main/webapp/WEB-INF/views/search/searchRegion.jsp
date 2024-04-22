<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://localhost:8001/always5/resources/css/common_css/style.css">
        <link rel="stylesheet" href="http://localhost:8001/always5/resources/css/search_css/searchKinds.css">

    </head>


    <body>
        <div id="wrap">
            <%@ include file="../common/header.jsp" %>

                <main>
                    <section class="search-nav" style="padding: 0px;">
                        <div>
                            <a class="region-nav">
                                <p>서울</p>
                            </a>
                            
                        </div>
                        <div>
                            <a class="region-nav">
                                <p>경기</p>
                            </a>
                            
                        </div>
                        <div>
                            <a class="region-nav">
                                <p>부산</p>
                            </a>
                            
                        </div>
                        <div>
                            <a class="region-nav">
                                <p>대전</p>
                            </a>
                        </div>
                        <div>
                            <a class="region-nav">
                                <p>대구</p>
                            </a>
                            
                        </div>
                        <div>
                            <a class="region-nav">
                                <p>광주</p>
                            </a>
                        </div>
                        <div>
                            <a class="region-nav">
                                <p>울산</p>
                            </a>
                        </div>
                        <div>
                            <a class="region-nav">
                                <p>강원</p>
                            </a>
                        </div>
                        <div>
                            <a class="region-nav">
                                <p>충청</p>
                            </a>
                        </div>
                        <div>
                            <a class="region-nav">
                                <p>전라</p>
                            </a>
                        </div>
                        <div>
                            <a class="region-nav">
                                <p>경상</p>
                            </a>
                        </div>
                    </section>



                    <section class="search-best">
                        <div>
                            <h1>지역별 맛집 결과 "서울"</h1>
                            <h4>추천 맛집 매장 방문 고객님과 왕밤빵이 함께 엄선한 인기 맛집입니다.${region}</h4>
                        </div>
                        <div>
                            <h3>BEST 3 리뷰로 검증된 맛집입니다.</h3>
                            <div class="search-best-img">
                            	<c:forEach var="sr" begin="1" end="3" items="${list}">
	                                <div>
	                                    <div class="search-best-crown">
	                                        <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
	                                            alt="">
	                                        <img id="crown"
	                                            src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownBig.png"
	                                            alt="">
	                                    </div>
	                                    <div>
			                                <p class="res-name"><span><b>${sr.restName}</span><span>&nbsp;&nbsp;</span></b></p>
			                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;${sr.restAddress}</span></p>
			                                <p class="res-explain"><b>${sr.restIntro}</b></p>
	                                    </div>
	                                </div>
                                </c:forEach>
                            </div>
                            <br><br>
                            <hr size="3px" color="black" width="95%">
                            <br><br>
                        </div>

                    </section>

                    <section class="search-result">

                        <c:forEach var="sr" items="${list}">
                            <div>
                                <div class="search-best-crownSmall">
                                    <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                        alt="">
                                    <img id="smallCrown"
                                        src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                        alt="">
                                </div>
                                <div>
                                    <p class="res-name"><span><b>${sr.restName}1111</span><span>&nbsp;&nbsp;</span></b></p>
                                    <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;${sr.restAddress}</span></p>
                                    <p class="res-explain"><b>${sr.restIntro}</b></p>
                                </div>
                            </div>
                        </c:forEach>
                    </section>

                    <script>
                        $(document).ready(function() {
							// AJAX 요청
							$.ajax({
								type: "POST",
								url: "searchRegionList.sc",
								success: function(list) {
									// AJAX 요청이 성공한 후에 클릭 이벤트 핸들러를 설정
									$(".korean").click(function() {
										let str = "";
										// 클릭 이벤트가 발생했을 때의 처리
										
										for (let r of list) {
											if(??????????????????????????????? == 1){
												str +=  `<div>`+
														`<div>` +
															`<div class='search-best-crownSmall'>` +
															`<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
															`<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
															`</div>` +
														`</div>` +	                                    		
														`<div>` +
															`<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
															`<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
															`<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
														`</div>` +
												`</div>`;
											}
										}

										// 결과를 .search-result 요소에 설정
										$(".search-result").html(str);
									});



                    </script>


                </main>

                <%@ include file="../common/footer.jsp" %>
        </div>
    </body>

    </html>