<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <div>
                <a href="#" onclick="return false" class="fcode" id="f0">공지사항</a>
                <a href="#" onclick="return false" class="fcode" id="f1">자주하는 질문</a>
            </div>

            <script type="text/javascript">
                $(document).ready(function(){
              
                  $(".fcode").click(function() {
              
                    var fcode = $(this).attr('id');
                    fcode = fcode.substring(1);	
              
                    // ajax로 보내서 출력
                    $.ajax({
                      url: '/cscenter.ax',
                      type: "POST",
                      data: {"fcode": fcode},
                      dataType: "TEXT",
                      success: function() {
                       
                      }, 
                      error: function(request, status, error) {
                        console.log("code: "+request.status+"\n"+"message : "+request.responseText+"\n"+"error: "+error);
                      } 
                    });
                  });
                });
              </script>

            <nav id="nav-2">
                <ul id="navi-2">
                    <li><a href="#" onclick="return false" class="csCode" id="c1">전체</a></li>
                    <li><a href="#" onclick="return false" class="csCode" id="c2">중요공지</a></li>
                    <li><a href="#" onclick="return false" class="csCode" id="c3">일반공지</a></li>
                    <li><a href="#" onclick="return false" class="csCode" id="c4">이벤트 공지</a></li>
                </ul>                    
            </nav>

            <div class="noti_box">
                <!-- <c:forEach var="b" items="${list}"> -->
                    <div>이벤트 공지 쿠폰 발행</div>

                    <p>A. 택배사의 사정에따라 2~3일 소요됩니다.</p>
            
                    <div>이벤트 공지 쿠폰 발행</div>
                    <p>A. 택배사의 사정에따라 2~3일 소요됩니다.</p>

                    <div>이벤트 공지 쿠폰 발행</div>
                    <p>A. 택배사의 사정에따라 2~3일 소요됩니다.</p>

                    <div>이벤트 공지 쿠폰 발행</div>
                    <p>A. 택배사의 사정에따라 2~3일 소요됩니다.</p>

                    <div>이벤트 공지 쿠폰 발행</div>
                    <p>A. 택배사의 사정에따라 2~3일 소요됩니다.</p>
                    
                <!-- </c:forEach> -->
            </div>

        </section>
    </main>        

    <!-- footer -->

    <%@  include file="../common/footer.jsp" %>
    
    </div>
    
    <script>
        $(" #section-2 > .noti_box > div").click(function(){
            
            let tmp;
            
            const $p = $(this).next();
            
            if($p.css("display") === "none") {
                $(".noti_box > p").slideUp();

                $p.slideDown();
            } else { //보여지고있는 상태
                $p.slideUp();
            }
        })
    </script>
    
</body>

</html>