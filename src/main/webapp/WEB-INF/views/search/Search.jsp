<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <link rel="stylesheet" href="http://localhost:8001/always5/resources/css/common_css/style.css">
        <link rel="stylesheet" href="http://localhost:8001/always5/resources/css/search_css/search.css">


    </head>

    <body>
        <div id="wrap">


            <%@ include file="../common/header.jsp" %>

                <main>


                    <section class="search-best">
                        <div>
                            <h1>검색 결과 "떡볶이"</h1>
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
                        <c:forEach var="sr" items="${rlist}">
                            <a a href="main.re?rno=${sr.restNo}">
                                <div class="search-best-crownSmall">
                                    <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                        alt="">
                                    <img id="smallCrown"
                                        src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
                                        alt="">
                                </div>
                                <div>
                                    <p class="res-name"><span><b>${sr.restName}</span><span>&nbsp;&nbsp;</span></b>
                                    </p>
                                    <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;${sr.restAddress}</span>
                                    </p>
                                    <p class="res-explain"><b>${sr.restIntro}</b></p>
                                </div>
                            </a>
                        </c:forEach>	        
                    </section>
                    
                    
                    
                    <div id="paging-area" align="center">
					        <!-- <c:if test="${re.currentPage ne 1}">
					        	<a href="search.sc?rpage=${pi.currentPage - 1}">[이전]</a>
					        </c:if> -->
					        
					        <c:forEach var="i" begin="${re.startPage }" end="${re.endPage }">
					        	<!-- <c:choose>
					        	 	<c:when test="${empty condition }">
					        			<a href="search.sc?rpage=${i}">${i}</a>
					        		</c:when>
					        		<c:otherwise> -->
					        			<a href="search.sc?rpage=${i}&keyword=${keyword}">${i}</a>
					        		<!-- </c:otherwise>
					        	</c:choose> -->
				
					        </c:forEach>
					        
					        <c:if test="${re.currentPage ne re.maxPage}">
					        	<a href="search.sc?rpage=${re.currentPage + 1}">[더보기]</a>
					        </c:if> <!-- 왜 페이지 수가 자꾸 올라가는가? 엥 없어짐 -->
				      </div>
                </main>


                <%@ include file="../common/footer.jsp" %>
        </div>
    </body>

    </html>