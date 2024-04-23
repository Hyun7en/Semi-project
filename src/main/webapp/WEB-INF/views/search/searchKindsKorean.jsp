3<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.always5.review.rest.model.vo.Restaurant" %>

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
                        	<a class="korean" >
                        		<img src="${pageContext.request.contextPath}/resources/file/search_img/kindsKorean.png" alt="">
                            	<p>한식</p>
                        	</a>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/kindsAsian.png"
                                alt="">
                            <p>아시안</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/kindsChinese.png"
                                alt="">
                            <p>중식</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/kindsJapanese.png"
                                alt="">
                            <p>일식</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/kindsSnack.png"
                                alt="">
                            <p>분식</p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/file/search_img/kindsFastfood.png"
                                alt="">
                            <p>패스트푸드</p>
                        </div>
                    </section>



                    <section class="search-best">
                        <div>
                            <h1>종류별 맛집 결과 "한식"</h1>
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
                       <!-- <c:forEach var="sr" items="${list}">
	                        <div>
	                            <div class="search-best-crownSmall">
	                                <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
	                                    alt="">
	                                <img id="smallCrown"
	                                    src="${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png"
	                                    alt="">
	                            </div>
	                        </div> -->
	                       <!-- <div>
	                                <p class="res-name"><span><b>${sr.restName}</span><span>&nbsp;&nbsp;</span></b></p>
	                                <p class="res-location"><span>한식집</span><span>&nbsp;&nbsp;${sr.restAddress}</span></p>
	                                <p class="res-explain"><b>${sr.restIntro}</b></p>
	                            </div>
	                        </div>
	                    </c:forEach> -->
                    </section>
                    
                    
                    
                    
                    <script>                    
                    $(".korean").click(function(){
                        $.ajax({
                            url: "korean.sc",
                            data : {
                            	rpage: 1
                            },
                            success: function(list){

                                let str =  "";
                          
                                for(let r of list){
                     
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
	                                        `</div>`
                                      `</div>`;
                                                                   
                                }
								
                                document.querySelector(".search-result").innerHTML = str;

                            }, 
                            error: function(){
                                console.log("ajax통신 실패")
                            }
                        })
                    })
                    	
				 </script>
                 </main>

                <%@ include file="../common/footer.jsp" %>
        </div>
    </body>

    </html>