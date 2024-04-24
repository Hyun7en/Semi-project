<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mainPage_css/mainPage.css">
    </head>

    <body>
        <div class="wrap"></div>
            <%@ include file="../common/header.jsp" %>
                <main>
            
                

                    <!-- 큰 메인 사진 -->
                    <div class="main-pic">
                        <p align="center">왕밥빵</p>
                        <h3 align="center">싸고 맛좋은 식당을 <br>
                            소개해 드립니다.</h3>
                    </div>


                    <!-- 왕밥빵 BEST5, 지수님이 rest_no로 가져온 list 활용 -->
                    <div class="best5">
                        <div>
                            <p class="best5-font">왕밥빵 BEST5</p>
                            <p class="best5-font-small">가격, 서비스, 맛 3박자를 갖춘 최고의 맛집을 소개해 드립니다.</p>
                        </div>
                        
                        <div class="slider">
                            <div class="slides">
                                <div class="best5-slide-set">
                                	
                                    	<div>
	                                        <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
	                                            alt="">
	                                    </div>
	                                    <div>
	                                        <p>베스트 리뷰</p>
	                                        <hr width="50" align="left">
	                                        <p>${rest.restName}</p>
	                                        <p>${rest.restIntro}</p>
	                                        <p>${rest.restGrade}</p>
	                                        <p>${rest.restAddress}</p>
	                                    </div>
                                  
                                </div>
                                
                                
                          
                                
                                <!-- <div class="best5-slide-set">
                                    <div>
                                        <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                            alt="">
                                    </div>
                                    <div>
                                        <p>베스트 리뷰</p>
                                        <hr width="50" align="left">
                                        <p>왕고기</p>
                                        <p>평점</p>
                                        <p>너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 ...</p>
                                    </div>
                                </div>
                                <div class="best5-slide-set">
                                    <div>
                                        <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                            alt="">
                                    </div>
                                    <div>
                                        <p>베스트 리뷰</p>
                                        <hr width="50" align="left">
                                        <p>왕고기</p>
                                        <p>평점</p>
                                        <p>너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 ...</p>
                                    </div>
                                </div>
                                <div class="best5-slide-set">
                                    <div>
                                        <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                            alt="">
                                    </div>
                                    <div>
                                        <p>베스트 리뷰</p>
                                        <hr width="50" align="left">
                                        <p>왕고기</p>
                                        <p>평점</p>
                                        <p>너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 ...</p>
                                    </div>
                                </div>
                                <div class="best5-slide-set">
                                    <div>
                                        <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
                                            alt="">
                                    </div>
                                    <div>
                                        <p>베스트 리뷰</p>
                                        <hr width="50" align="left">
                                        <p>왕고기</p>
                                        <p>평점</p>
                                        <p>너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 맛있어요! 너무 ...</p>
                                    </div>
                                </div> -->

                            </div>
                        </div>
                    </div>
                    
                    
                    
                    
                    
                <!-- 왜!!!!!!!!!!!!!!!!!!!!!!! css 안먹는가!!!!!!!!!!!!!!!!!!!!!!! -->
               		<script>
               		
               		$(document).ready(function(){
                        init();
                    });
               		
				function init(){
					// 서버로부터 조회수가 높은 게시글 5개 조회해서 가져오기(ajax)
					// tbody 요소로써 추가해주기

					getTopRestList(function(tlist){ //callback 함수를 실행하는 함수
						drawTopListBody(tlist);
					})

				}
				
				function drawTopListBody(tlist){
					const topBody = document.querySelector(".slides");
					$(topBody).empty(); 
					
					for(let r of tlist) {
						
						const slides = document.createElement("div");

						slides.classList.add("best5-slide-set");
						
						slides.innerHTML = "<div>"
										 	+ "<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp'>"
										 + "</div>"
										 + "<div>"
										 	+ "<p>" + r.restName + "</p>"
										 	+ "<p>" + r.restGrade + "</p>"
										 	+ "<p>" + r.restIntro + "</p>"
										 	+ "<p>" + r.restAddress + "</p>"	
										 + "</div>"
				
						slides.onclick = function(){
							location.href = 'main.re?rno=' + r.restNo;
						}
					

						topBody.appendChild(slides);
					}

				}


				// 서버로부터 조회수가 높은 게시글 5개 조회해서 가져오는 함수
				function getTopRestList(callback){
					$.ajax({
						url: "topList.ma",
						success: callback,
						error: function(){
							console.log("top5 ajax 실패")
						}
					})
				}

				</script>










                    <!-- 요즘 핫한 검색어 -->
                    <div class="hotSearch">
                        <div>
                            <p class="best5-font">요즘 핫한 검색어</p>
                            <p class="best5-font-small">많이 찾는 검색어로 요듬 유행하는 맛집을 찾아보세요!</p>
                        </div>
                        <div>
                            <table>
                                <tr>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                </tr>
                                <tr>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                </tr>
                            </table>
                        </div>

                    </div>



                    <!-- 목적에 따라 찾는 맛집 -->
                    <div class="purposeRes">
                        <div>
                            <p class="best5-font">목적에 따라 찾는 맛집</p>
                            <p class="best5-font-small">특별한 날인가요? 목적에 맞는 맛집을 쉽게 찾아보세요.</p>
                        </div>
                        <div>
                            <table>
                                <tr>
                                    <td><button class="main-button">회식</button></td>
                                    <td><button class="main-button">직장동료</button></td>
                                    <td><button class="main-button">점심</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                </tr>
                                <tr>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>
                                    <td><button class="main-button">핫플맛집</button></td>

                                </tr>
                            </table>
                        </div>

                    </div>




                    <!-- 최근 등록된 맛집 -->
                    <div class="recentRes">
                        <div>
                            <p class="best5-font">최근 등록된 맛집</p>
                            <p class="best5-font-small">새로 등록되어 당신의 평가를 기다리는 곳입니다.</p>
                        </div>
                        <div class="slider">
                            <div class="slides">
     
                                <div class="best5-slide-set">
                                	
                                    	<div>
	                                        <img src="https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp"
	                                            alt="">
	                                    </div>
	                                    <div>
	                                        <p>베스트 리뷰</p>
	                                        <hr width="50" align="left">
	                                        <p>${rest.restName}</p>
	                                        <p>${rest.restIntro}</p>
	                                        <p>${rest.restGrade}</p>
	                                        <p>${rest.restAddress}</p>
	                                    </div>
                                  
                                </div>
           
                            </div>
                        </div>
                    </div>
               		<script>
               		
               		$(document).ready(function(){
                        init();
                    });
               		
				function init(){
					// 서버로부터 조회수가 높은 게시글 5개 조회해서 가져오기(ajax)
					// tbody 요소로써 추가해주기

					getTopRestList(function(nlist){ //callback 함수를 실행하는 함수
						drawTopListBody(nlist);
					})

				}
				
				function drawTopListBody(nlist){
					const topBody = document.querySelector(".slides");
					$(topBody).empty(); 
					
					for(let r of nlist) {
						
						const slides = document.createElement("div");

						slides.classList.add("best5-slide-set");
						
						slides.innerHTML = "<div>"
										 	+ "<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp'>"
										 + "</div>"
										 + "<div>"
										 	+ "<p>" + r.restName + "</p>"
										 	+ "<p>" + r.restGrade + "</p>"
										 	+ "<p>" + r.restIntro + "</p>"
										 	+ "<p>" + r.restAddress + "</p>"	
										 + "</div>"
				
						slides.onclick = function(){
							location.href = 'main.re?rno=' + r.restNo;
						}
					

						topBody.appendChild(slides);
					}

				}


				// 서버로부터 조회수가 높은 게시글 5개 조회해서 가져오는 함수
				function getTopRestList(callback){
					$.ajax({
						url: "topNewList.ma",
						success: callback,
						error: function(){
							console.log("top5 ajax 실패")
						}
					})
				}

				</script>
                    
                    
                </main>
            <%@ include file="../common/footer.jsp" %>
        </div>
    </body>

</html>