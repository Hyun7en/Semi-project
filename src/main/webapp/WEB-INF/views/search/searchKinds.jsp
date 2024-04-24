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
                        	<a class="korean" >
                        		<img src="${pageContext.request.contextPath}/resources/file/search_img/kindsKorean.png" alt="">
                            	<p>한식</p>
                        	</a>
                        </div>
                        <div>
                        	<a class="asian">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/kindsAsian.png"
	                                alt="">
	                            <p>아시안</p>
                            </a>
                        </div>
                        <div>
                        	<a class="chinese">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/kindsChinese.png"
	                                alt="">
	                            <p>중식</p>
                            </a>
                        </div>
                        <div>
                        	<a class="japanese">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/kindsJapanese.png"
	                                alt="">
	                            <p>일식</p>
                            </a>
                        </div>
                        <div>
                        	<a class="snack">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/kindsSnack.png"
	                                alt="">
	                            <p>분식</p>
                            </a>
                        </div>
                        <div>
	                        <a class="fastfood">
	                            <img src="${pageContext.request.contextPath}/resources/file/search_img/kindsFastfood.png"
	                                alt="">
	                            <p>패스트푸드</p>
	                         </a>
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
								url: "searchKindsList.sc",
								success: function(list) {
									// AJAX 요청이 성공한 후에 클릭 이벤트 핸들러를 설정
									$(".korean").click(function() {
										let str = "";
										// 클릭 이벤트가 발생했을 때의 처리
										
										for (let r of list) {
											if(r.foodCategoryNo == 1){
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

									$(".asian").click(function() {
										let str = "";
										// 클릭 이벤트가 발생했을 때의 처리
										
										for (let r of list) {
											if(r.foodCategoryNo == 2){
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


									$(".chinese").click(function() {
										let str = "";
										// 클릭 이벤트가 발생했을 때의 처리
										
										for (let r of list) {
											if(r.foodCategoryNo == 3){
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


									$(".japanese").click(function() {
										let str = "";
										// 클릭 이벤트가 발생했을 때의 처리
										
										for (let r of list) {
											if(r.foodCategoryNo == 4){
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


									$(".snack").click(function() {
										let str = "";
										// 클릭 이벤트가 발생했을 때의 처리
										
										for (let r of list) {
											if(r.foodCategoryNo == 5){
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



									$(".fastfood").click(function() {
										let str = "";
										// 클릭 이벤트가 발생했을 때의 처리
										
										for (let r of list) {
											if(r.foodCategoryNo == 6){
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


								},
								error: function() {
									console.log("ajax통신 실패")
								}
							});
						});

										// let str =  "";

										// for(let r of list){
										// 	str +=  `<div>`+
										// 				`<div>` +
										// 					`<div class='search-best-crownSmall'>` +
										// 					`<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										// 					`<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										// 					`</div>` +
										// 				`</div>` +	                                    		
										// 				`<div>` +
										// 					`<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										// 					`<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										// 					`<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										// 				`</div>` +
										// 		`</div>`;
																			
										// }

											

										// if else는 for문이 왜 안돌아갈까?
										// r.으로만 잡을 수 있나?
										

										// success: function(list){
										// 	let str = "";
										// 	let arrMenuClass = [];
										// 	let arrMenu = ["한식", "아시안", "중식", "일식", "분식", "패스트푸드"];

										//     // 메뉴바 클래스로 잡아서 배열에 넣음 
										// 	// 클래스로 가져온 매뉴바 = arrMenu 해서 같으면 결과값 나오게
										// 	// 매뉴바랑 list 함수를 바로 연결시키는 것보다 그 메뉴바 목록을 따로 배열로 만들어서
										// 	// 비교하면 나중에 수정하기 쉬우니까? 조건문의 글자 자체를 변경하기보다 배열의 숫자? 변경이 편하다고 생각
										// 	$('.menu').each(function(i){
										// 		arrMenuClass.push($(this).text());
												
										

										// 		// $('.menu').eq(i).text()	메뉴 클래스 중(.menu) i번째를 가져와서(eq(i)) 그 태그 사이의 값(texe())
										// 	// for(let r of list) {
										// 	// 	if ($(this).text() === arrMenu[0] && r.foodCategoryNo == 3) {
										// 	// 		str += `<div>`+
										// 	// 					`<div>` +
										// 	// 						`<div class='search-best-crownSmall'>` +
										// 	// 						`<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										// 	// 						`<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										// 	// 					`</div>` +
										// 	// 				`</div>` +	                                    		
										// 	// 					`<div>` +
										// 	// 						`<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										// 	// 						`<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										// 	// 						`<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										// 	// 					`</div>` +
										//     //             	`</div>`;
										// 	// 		} else if($(this).text() === arrMenu[1] && r.foodCategoryNo == 2) {
										// 	// 			str += `<div>`+
										// 	// 						`<div>` +
										// 	// 							`<div class='search-best-crownSmall'>` +
										// 	// 							`<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										// 	// 							`<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										// 	// 						`</div>` +
										// 	// 					`</div>` +	                                    		
										// 	// 						`<div>` +
										// 	// 							`<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										// 	// 							`<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										// 	// 							`<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										// 	// 						`</div>` +
										// 	// 					`</div>`;
														
										// 			// } else if($(this).text() === arrMenu[2] && r.foodCategoryNo == 3) {
										// 			// 	str += `<div>`+
										// 			// 				`<div>` +
										// 			// 					`<div class='search-best-crownSmall'>` +
										// 			// 					`<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										// 			// 					`<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										// 			// 				`</div>` +
										// 			// 			`</div>` +	                                    		
										// 			// 				`<div>` +
										// 			// 					`<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										// 			// 					`<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										// 			// 					`<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										// 			// 				`</div>` +
										// 			// 			`</div>`;
										// 			// } else if($(this).text() === arrMenu[3] && r.foodCategoryNo == 4) {
										// 			// 	str += `<div>`+
										// 			// 				`<div>` +
										// 			// 					`<div class='search-best-crownSmall'>` +
										// 			// 					`<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										// 			// 					`<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										// 			// 				`</div>` +
										// 			// 			`</div>` +	                                    		
										// 			// 				`<div>` +
										// 			// 					`<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										// 			// 					`<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										// 			// 					`<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										// 			// 				`</div>` +
										// 			// 			`</div>`;
										// 			// } else if($(this).text() === arrMenu[4] && r.foodCategoryNo == 5) {
										// 			// 	str += `<div>`+
										// 			// 				`<div>` +
										// 			// 					`<div class='search-best-crownSmall'>` +
										// 			// 					`<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										// 			// 					`<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										// 			// 				`</div>` +
										// 			// 			`</div>` +	                                    		
										// 			// 				`<div>` +
										// 			// 					`<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										// 			// 					`<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										// 			// 					`<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										// 			// 				`</div>` +
										// 			// 			`</div>`;
										// 			// } else if($(this).text() === arrMenu[5] && r.foodCategoryNo == 6) {
										// 			// 	str += `<div>`+
										// 			// 				`<div>` +
										// 			// 					`<div class='search-best-crownSmall'>` +
										// 			// 					`<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										// 			// 					`<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										// 			// 				`</div>` +
										// 			// 			`</div>` +	                                    		
										// 			// 				`<div>` +
										// 			// 					`<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										// 			// 					`<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										// 			// 					`<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										// 			// 				`</div>` +
										// 			// 			`</div>`;
										// 			// } 
										// 		// }
											





											
										//     	// switch($menu){
										//     	// 	case "한식":
										//         //     	for(let r of list){
										//         //             str +=  `<div>`+
										//         //             			`<div>` +
										//         //                             `<div class='search-best-crownSmall'>` +
										//         //                             `<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										//         //                             `<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										//         //                             `</div>` +
										//         //                         `</div>` +	                                    		
										//         //                     	`<div>` +
										//         //                             `<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										//         //                             `<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										//         //                             `<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										//         //                         `</div>` +
										//         //                   `</div>`;                              
										//         //             }
										//     	// 		break;
										//     	// 	case "아시안":
										//         //     	for(let r of list){
										//         //             str +=  `<div>`+
										//         //             			`<div>` +
										//         //                             `<div class='search-best-crownSmall'>` +
										//         //                             `<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										//         //                             `<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										//         //                             `</div>` +
										//         //                         `</div>` +	                                    		
										//         //                     	`<div>` +
										//         //                             `<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										//         //                             `<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										//         //                             `<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										//         //                         `</div>` +
										//         //                   `</div>`;
																							
										//         //             }
										//     	// 		break;
										//     	// 	case "중식":
										//     	// 		for(let r of list){
										//         //             // foodCategoryNo가 3일 때만 해당하는 HTML 문자열을 생성합니다.
														
										//         //             if(r.foodCategoryNo == 3){
										//         //             	console.log("dd");
										//         //             	continue;
										//         //             }
										//         //                 str +=  `<div>`+
										//         //                             `<div>` +
										//         //                                 `<div class='search-best-crownSmall'>` +
										//         //                                     `<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										//         //                                     `<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										//         //                                 `</div>` +
										//         //                             `</div>` +	                                    		
										//         //                             `<div>` +
										//         //                                 `<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										//         //                                 `<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										//         //                                 `<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										//         //                             `</div>` +
										//         //                         `</div>`;
															
										//         //         }
										//         //         break;
										//     	// 	case "일식":
										//         //     	for(let r of list){
										//         //             str +=  `<div>`+
										//         //             			`<div>` +
										//         //                             `<div class='search-best-crownSmall'>` +
										//         //                             `<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										//         //                             `<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										//         //                             `</div>` +
										//         //                         `</div>` +	                                    		
										//         //                     	`<div>` +
										//         //                             `<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										//         //                             `<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										//         //                             `<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										//         //                         `</div>` +
										//         //                   `</div>`;
																							
										//         //             }
										//     	// 		break;
										//     	// 	case "분식":
										//         //     	for(let r of list){
										//         //             str +=  `<div>`+
										//         //             			`<div>` +
										//         //                             `<div class='search-best-crownSmall'>` +
										//         //                             `<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										//         //                             `<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										//         //                             `</div>` +
										//         //                         `</div>` +	                                    		
										//         //                     	`<div>` +
										//         //                             `<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										//         //                             `<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										//         //                             `<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										//         //                         `</div>` +
										//         //                   `</div>`;
																							
										//         //             }
										//     	// 		break;
										//     	// 	case "패스트푸드":
										//         //     	for(let r of list){
										//         //             str +=  `<div>`+
										//         //             			`<div>` +
										//         //                             `<div class='search-best-crownSmall'>` +
										//         //                             `<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										//         //                             `<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										//         //                             `</div>` +
										//         //                         `</div>` +	                                    		
										//         //                     	`<div>` +
										//         //                             `<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										//         //                             `<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										//         //                             `<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										//         //                         `</div>` +
										//         //                   `</div>`;
																							
										//         //             }
										//     	// 		break;

										//     	//}
												

								
										// 	// for(let r of list){
										//     // str +=  `<div>`+
										//     // 			`<div>` +
										//     //                 `<div class='search-best-crownSmall'>` +
										//     //                 `<img src='https://cdn.kormedi.com/wp-content/uploads/2023/08/unnamed-file-27-18.jpg.webp' alt=''>` +
										//     //                 `<img id='smallCrown' src='${pageContext.request.contextPath}/resources/file/search_img/searchCrownSmall.png' alt=''>` +
										//     //                 `</div>` +
										//     //             `</div>` +	                                    		
										//     //         	`<div>` +
										//     //                 `<p class='res-name'><span><b>` + r.restName + `</b></span><span>&nbsp;&nbsp;</span></p>` +
										//     //                 `<p class='res-location'><span>한식집</span><span>&nbsp;&nbsp;` + r.restAddress + `</span></p>` +
										//     //                 `<p class='res-explain'><b>` + r.restIntro + `</b></p>` + 
										//     //             `</div>` +
										//     //       `</div>`;
																			
										//     // }
										// });
											
										//     document.querySelector(".search-result").innerHTML = str;

										// }, 

                    	
				 </script>


                </main>

                <%@ include file="../common/footer.jsp" %>
        </div>
    </body>

    </html>