<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/header.css">


</head>
<body>

    <!-- header -->
    
    <header>
        <div id="header">
            <div class="header-logo">
                <!-- <img src="${pageContext.request.contextPath}/resources/image/headerColorLogo.png"> -->
                <img onclick="location.href='${pageContext.request.contextPath}'" src="${pageContext.request.contextPath}/resources/file/common_img/왕밥빵로고 컬러.png">
                <p onclick="location.href='${pageContext.request.contextPath}'"  id="logo-name">왕밥빵</p>
            </div>
            <div>
                <form action="" id="search-bar" method="GET">
                    <input type="text" name="search-keyword" id="search-box">
                    <input type="submit" value="검색" id="search-button">
                </form>
            </div>
            <div id="memberButton">
                <a href="">로그인</a>
                <a href="">회원가입</a>
            </div>
        </div>

        <!-- nav -->
        <nav id="nav-1">
                <ul id="navi-1">
                    <li><a onclick="location.href='searchKinds.sc?rpage=1'">음식별</a></li>
                    <li><a onclick="location.href='searchMenu.sc?rpage=1'">메뉴별</a></li>
                    <li><a onclick="location.href='searchRegion.sc?rpage=1'">지역별</a></li>
                    <li><a href="#">고객센터</a></li>
                </ul>
        </nav>

    </header>
 

    
</body>
</html>