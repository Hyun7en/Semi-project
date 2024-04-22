<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainViewImage.css">
<body>
    str += `<div id="rest-image-content">
        <div>`
            for(let img of imgList){
                str += `<img src="${pageContext.request.contextPath}/`+img.filePath+`/`+img.changeName+`.jpg" alt="">`
            }
        str += `</div>
    </div>`

    <!-- 더보기 버튼 -->
    <div class="more-content"><a href="">더보기</a></div>
</body>
</html>