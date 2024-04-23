<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restReviewRegistForm.css">
<body>
    <%@ include file="../common/header.jsp" %>    
    <div id="wrap">
        <main id="review-main">
            <form action="${pageContext.request.contextPath}/insertReview.re" class="main-form" method="POST" enctype="multipart/form-data">
                <table>
                    <tr>
                        <th width="20%">가게 이름</th>
                        <td>
                            <input type="text" value="${rest.restName}" id="rest-name" readonly>
                            <input type="hidden" name="restNo" value="${rest.restNo}">
                            <!-- <input type="hidden" name="userNo" value="${loginUser.userNo}"> -->
                            <input type="hidden" name="userNo" value="1">
                        </td>
                    </tr>

                    <tr>
                        <th>별점</th>
                        <td>
                            <div>
                                <select name="reviewRating" id="">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>리뷰 사진</th>
                        <td class="rest-regist-img">
                            <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-plus-5054075.png" alt="" id="review-img1" onclick="chooseFile(1)">
                            <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-plus-5054075.png" alt="" id="review-img2" onclick="chooseFile(2)">
                            <img src="${pageContext.request.contextPath}/resources/file/common_img/free-icon-plus-5054075.png" alt="" id="review-img3" onclick="chooseFile(3)">
                        </td>
                        <div style="display: none;">
                            <input type="file" name="file1" id="file1" required onchange="loadImg(this, 1)">
                            <input type="file" name="file2" id="file2" onchange="loadImg(this, 2)">
                            <input type="file" name="file3" id="file3" onchange="loadImg(this, 3)">
                            <input type="file" name="file4" id="file4" onchange="loadImg(this, 4)">
                        </div>
                    </tr>
                    <tr>
                        <th>리뷰 내용</th>
                        <td><textarea name="reviewContent" placeholder="300자 이내"></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button type="submit" class="black-button">리뷰 등록</button></td>
                    </tr>

                    <script>
                        function chooseFile(num){
                            document.querySelector("#file" + num).click();
                        }

                        function loadImg(inputFile, num){
                            if(inputFile.files.length == 1) {
                                const reader = new FileReader();

                                reader.readAsDataURL(inputFile.files[0]);
                                reader.onload = function(ev){
                                    switch(num){
                                        case 1 : document.getElementById("review-img1").src = ev.target.result; break;
                                        case 2 : document.getElementById("review-img2").src = ev.target.result; break;
                                        case 3 : document.getElementById("review-img3").src = ev.target.result; break;
                                        case 4 : document.getElementById("review-img4").src = ev.target.result; break;
                                    }
                                }
                            } else {
                                switch(num){
                                        case 1 : document.getElementById("review-img1").src = null; break;
                                        case 2 : document.getElementById("review-img2").src = null; break;
                                        case 3 : document.getElementById("review-img3").src = null; break;
                                        case 4 : document.getElementById("review-img4").src = null; break;
                                    }
                            }
                        }
                    </script>
                </table>
            </form>
        </main>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>