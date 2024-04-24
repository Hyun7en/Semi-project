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
<script src="${pageContext.request.contextPath}/resources/js/cs_js/cs_center.js"></script>
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

    </main>       
  

    <!-- footer -->

    <%@  include file="../common/footer.jsp" %>
    
    </div>

   
    
    
</body>

</html>