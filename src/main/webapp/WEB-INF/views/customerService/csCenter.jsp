<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cs_css/cs_center.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>

<body>                                
    
    <div id="wrap">
    
    <!-- header, nav -->

   <%@  include file="../common/header.jsp" %>

    <!-- main -->

    <main>     
        
        <section id="section-1">
            <div id="help" >
                <p>
                    무엇을 도와드릴까요?
                </p>
            </div> 
                <p class="p1">
                    고객 센터 09:00 ~ 18:00
                </p>
                <p class="p2">
                     평일: 전체 문의 상담 <br>
                     토요일, 일요일, 공휴일: 휴무
                </p>
                
                <div id="phone-number">
                    <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-mobile-phone-7424905.png">   
                
                    <p class="p3">
                        010-1111-2222
                    </p>
                </div>
                <div id="email">
                    <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-mail-415166.png">
                    <p class="p4">
                        WangBabBbang@gmail.com
                    </p>
                </div>
        </section>

        <section id="section-2">
            <div class="csType">
                
            </div>
        
            <script>
                $(document).ready(function() {
                    selectCsTypeList(); // 페이지 로드시 바로 실행
                });
            
                function selectCsTypeList() {
                    $.ajax({
                        url: "csType.ax", 
                        dataType: 'json',
                        success: function(res) {
                            let str = "";
                            for (let c of res) { // 서버로부터 받은 응답 데이터를 반복하여 처리
                                str += (
                                    `<a>` + c.csTypeValue + `</a>`
                                )
                            }
                            $(".csType").html(str); // 결과를 .csType 요소에 적용
                        },
                        error: function() {
                            console.log("ajax통신 실패")
                        }
                    });
                }
            </script>
          

            <nav id="nav-2">
                <ul id="navi-2" class="csKeyword">

                </ul>                    
            </nav>

            <script>
                $(document).ready(function() {
                    selectCsKeywordList(); // 페이지 로드시 바로 실행
                });
            
                function selectCsKeywordList() {
                    $.ajax({
                        url: "csKeyword.ax", 
                        dataType: 'json',
                        success: function(res) {
                            let str = "";
                            for (let c of res) { // 서버로부터 받은 응답 데이터를 반복하여 처리
                                str += (
                                    `<li><a>` + c.cskeywordValue + `</a></li>`
                                )
                            }
                            $(".csKeyword").html(str); // 결과를 .csType 요소에 적용
                        },
                        error: function() {
                            console.log("ajax통신 실패")
                        }
                    });
                }
            </script>

            <div class="csDetail">

                   
  
            </div>

        </section>

        <script>
            $(document).ready(function() {
                    selectCsDetailList(); // 페이지 로드시 바로 실행
                });
            
                function selectCsDetailList() {
                    $.ajax({
                        url: "csDetail.ax", 
                        dataType: 'json',
                        success: function(res) {
                            let str = "";
                            for (let c of res) { // 서버로부터 받은 응답 데이터를 반복하여 처리
                                str += (
                                    `<div>` + c.csDetailTitle + `</div>` +
                                    `<p>` + c.csDetailContent + `</p>`
                                )
                            }
                            $(".csDetail").html(str); // 결과를 .csDetail 요소에 적용
                        },
                        error: function() {
                            console.log("ajax통신 실패")
                        }
                    });
                }

                $(document).on("click", ".csDetail > div", function() {
                    //this => 클릭이벤트가 발생한 요소(div)
                    //$(this).next() => 선택된 요소의 뒤에있는 요소(p)
                    let tmp;
                    
                    const $p = $(this).next();
                    
                    if($p.css("display") === "none") {
                        $(".csDetail > p").slideUp();

                        $p.slideDown();
                    } else { //보여지고있는 상태
                        $p.slideUp();
                    }
                });
        </script>
    </main>        

    <!-- footer -->

    <%@  include file="../common/footer.jsp" %>
    
    </div>

   
    
    
</body>

</html>