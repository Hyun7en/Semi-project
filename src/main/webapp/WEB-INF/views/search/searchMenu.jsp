<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/search_css/searchKinds.css">

    </head>
   
    <body>
        <div id="wrap">
            <%@ include file="../common/header.jsp" %>

                <main>
                    <section class="search-nav" style="padding: 0px;">
                        <div>
                        	<a class="백반">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/백반메뉴.png" alt="">
	                            <p>백반</p>
	                        </a>   
                        </div>
                        <div>
                        	<a class="찌개">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/찌개메뉴.png" alt="">
	                            <p>찌개</p>
	                        </a>    
                        </div>
                        <div>
                        	<a class="국밥">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/국밥메뉴.png" alt="">
	                            <p>국밥</p>
	                        </a>    
                        </div>
                        <div>
                        	<a class="제육">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/제육메뉴.png" alt="">
	                            <p>제육</p>
	                        </a>
                        </div>
                        <div>
                        	<a class="돈가스">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/돈가스메뉴.png" alt="">
	                            <p>돈가스</p>
	                        </a>
                        </div>
                        <div>
                        	<a class="김밥">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/김밥메뉴.png" alt="">
	                            <p>김밥</p>
	                        </a>
                        </div>
                        <div>
                        	<a class="초밥">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/초밥메뉴.png" alt="">
	                            <p>초밥</p>
	                        </a>
                        </div>
                        <div>
                        	<a class="패스트푸드">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/햄버거메뉴.png" alt="">
	                            <p>패스트푸드</p>
	                        </a>
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
	                                <p class="res-name"><span><b>${sr.restName}111</span><span>&nbsp;&nbsp;</span></b></p>
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
							url: "searchMenuList.sc",
							success: function(list) {
								// AJAX 요청이 성공한 후에 클릭 이벤트 핸들러를 설정
								$(".백반").click(function() {
									let str = "";
									// 클릭 이벤트가 발생했을 때의 처리
									
									// 메뉴카테고리 조인해서 넘겨 받아야함
									for (let r of list) {
										if(r.menuCategoryName === "백반"){
											str +=  `<div>`+
													`<div>` +
														`<div class='search-best-crownSmall'>` +
														`<img src='${pageContext.request.contextPath}` + r.at.filePath + r.at.changeName + `'>` +
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

								$(".찌개").click(function() {
									let str = "";
									// 클릭 이벤트가 발생했을 때의 처리
									
									for (let r of list) {
										if(r.menuCategoryName === "찌개"){
											str +=  `<div>`+
													`<div>` +
														`<div class='search-best-crownSmall'>` +
														`<img src='${pageContext.request.contextPath}` + r.at.filePath + r.at.changeName + `'>` +
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


								$(".국밥").click(function() {
									let str = "";
									// 클릭 이벤트가 발생했을 때의 처리
									
									for (let r of list) {
										if(r.menuCategoryName === "국밥"){
											str +=  `<div>`+
													`<div>` +
														`<div class='search-best-crownSmall'>` +
														`<img src='${pageContext.request.contextPath}` + r.at.filePath + r.at.changeName + `'>` +
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


								$(".제육").click(function() {
									let str = "";
									// 클릭 이벤트가 발생했을 때의 처리
									
									for (let r of list) {
										if(r.menuCategoryName === "제육"){
											str +=  `<div>`+
													`<div>` +
														`<div class='search-best-crownSmall'>` +
														`<img src='${pageContext.request.contextPath}` + r.at.filePath + r.at.changeName + `'>` +
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


								$(".돈가스").click(function() {
									let str = "";
									// 클릭 이벤트가 발생했을 때의 처리
									
									for (let r of list) {
										if(r.menuCategoryName === "돈가스"){
											str +=  `<div>`+
													`<div>` +
														`<div class='search-best-crownSmall'>` +
														`<img src='${pageContext.request.contextPath}` + r.at.filePath + r.at.changeName + `'>` +
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



								$(".김밥").click(function() {
									let str = "";
									// 클릭 이벤트가 발생했을 때의 처리
									
									for (let r of list) {
										if(r.menuCategoryName === "김밥"){
											str +=  `<div>`+
													`<div>` +
														`<div class='search-best-crownSmall'>` +
														`<img src='${pageContext.request.contextPath}` + r.at.filePath + r.at.changeName + `'>` +
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
								
								
								$(".초밥").click(function() {
									let str = "";
									// 클릭 이벤트가 발생했을 때의 처리
									
									for (let r of list) {
										if(r.menuCategoryName === "초밥"){
											str +=  `<div>`+
													`<div>` +
														`<div class='search-best-crownSmall'>` +
														`<img src='${pageContext.request.contextPath}` + r.at.filePath + r.at.changeName + `'>` +
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
								
								
								$(".패스트푸드").click(function() {
									let str = "";
									// 클릭 이벤트가 발생했을 때의 처리
									
									for (let r of list) {
										if(r.menuCategoryName === "패스트푸드"){
											str +=  `<div>`+
													`<div>` +
														`<div class='search-best-crownSmall'>` +
														`<img src='${pageContext.request.contextPath}` + r.at.filePath + r.at.changeName + `'>` +
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


							},
							error: function() {
								console.log("ajax통신 실패")
							}
						});
					});
                    
                    
                    </script>


                </main>

                <%@ include file="../common/footer.jsp" %>
        </div>
    </body>

    </html>