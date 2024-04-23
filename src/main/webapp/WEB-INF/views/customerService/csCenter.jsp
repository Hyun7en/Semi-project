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

            <nav id="nav-2">
                <ul id="navi-2" class="csKeyword">

                </ul>                    
            </nav>

            <div class="csDetail">

                   
  
            </div>

        </section>

        <script>
            $(document).ready(function() {
                // 페이지 로드시 바로 실행
                selectCsTypeList(null, function(res){

                    let csTypeList = [];
                    for(let csType of res){
                        // csTypeList.push({
                        //     csTypeNo: res.csTypeNo,
                        //     csTypeValue: res.csTypeValue,
                        // })
                        csTypeList.push({
                          ...csType,
                          clickEvent: function(item){
                            //클릭됐을 시

                            selectCsKeywordList({ "csTypeNo": item.csTypeNo }, function(list){
                                drawCsKeywordList(list, function(){
                                    document.querySelector('.csKeyword').children[1].click();
                                });
                            });
                          }
                        })
                    }

                    //CsTypeList를 그려줘
                    drawCsTypeList(csTypeList, document.querySelector("#section-2 .csType"), function(){
                        document.querySelector("#section-2 .csType").children[0].click();
                    });
                }); 
            });
            
            function drawCsTypeList(list, parent, callback){
                $(parent).empty();
                // csType 목록 생성
                $.each(list, function(index, item) {
                    let csTypeBtn = document.createElement('a');
                    csTypeBtn.innerText = item.csTypeValue;
                    csTypeBtn.onclick = function(){
                        item.clickEvent(item);
                    }

                    parent.appendChild(csTypeBtn);
                });

                callback();
            }
            
            function selectCsTypeList(data, callback) {
                $.ajax({
                    url: "csType.ax", 
                    data: data,
                    success: function(res) {
                        callback(res)
                    },
                    error: function() {
                        console.log("csType.ax 통신 실패");
                    }
                });
            }

       

            function drawCsKeywordList(keywordlist, callback){
                $(document.querySelector('.csKeyword')).empty();
                // csKeyword 목록 생성
                $.each(keywordlist, function(index, item) {
                    let csKeywordBtn = document.createElement('li');
                    csKeywordBtn.innerText = item.cskeywordValue;
                    csKeywordBtn.onclick = function(){
                        selectCsDetailList(item.cskeywordNo)
                    }

                    document.querySelector('.csKeyword').appendChild(csKeywordBtn);
                });

                callback();        
                            
            }
        
            function selectCsKeywordList(data, callback) {
                $.ajax({
                    url: "csKeyword.ax", 
                    method: "GET", 
                    data: data, // 선택한 csTypeNo를 서버에 전달
                    success: function(res) {
                        callback(res);
                    },
                    error: function() {
                        console.log("csKeyword.ax 통신 실패");
                    }
                });
            }
    
        
            function selectCsDetailList(csKeywordNo) {
                $.ajax({
                    url: "csDetail.ax", 
                    method: "GET", 
                    data: { "csKeywordNo": csKeywordNo }, // 선택한 csKeywordNo를 서버에 전달
                    success: function(res) {
                        // csDetail 내용 생성
                        var csDetailContent = '';
                        $.each(res, function(index, item) {
                            csDetailContent += `<div>` + item.csDetailTitle + `</div>` +  
                                               `<p>` + item.csDetailContent + `</p>`;
                        });
                        $(".csDetail").html(csDetailContent); // 결과를 .csDetail 요소에 적용
                    },
                    error: function() {
                        console.log("csDetail.ax 통신 실패");
                    }
                });
            }

            //선택시 원래 이벤트 닫고 새 이벤트 시작

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