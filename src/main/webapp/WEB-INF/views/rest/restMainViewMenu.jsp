<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rest_css/restMainViewMenu.css">
<body>
    str += `<div id="rest-menu-content">
        <table>`
            let num = 0;
            for (let i = 0; i < (menuList.size() + 1) / 2; i++){
                str += `<tr>
                    <td class="menu-name">`+menuList.get(num).menuName+`</td>
                    <td class="menu-price">`+menuList.get(num).menuPrice+`</td>`
                if ((num != menuList.size() - 1) && (num < menuList.size())){
                    str += `<td class="menu-margin"></td>
                            <td class="menu-name">`+menuList.get(num).menuName+`</td>
                            <td class="menu-price">`+menuList.get(num).menuPrice+`</td>`
                }
                num += 2;
                str += `</tr>`
            }
        `</table>
    </div>`

    // let restNo = "<c:out value='${rest.restNo}'/>";
                // function detailPage(num) {
                //     switch (num) {
                //         case 1:
                //             $.ajax({
                //                 url: "${pageContext.request.contextPath}/detailReview.re",
                //                 data: { restNo: restNo },
                //                 success: function (map) {
                //                     let reviewList = map.reviewList;
                //                     let ratingCount = map.ratingCount;
                //                     if (reviewList[0] != null){
                //                         restReviewContentDraw(reviewList, ratingCount);
                //                     } else {
                //                         noRestContentDraw("등록된 리뷰가 없습니다.");
                //                     }
                //                 },
                //                 error: function () {
                //                     errorRestContentDraw("정보를 불러오는데 실패 했습니다.");
                //                 }
                //             })
                //             break;
                //         case 2:
                //             $.ajax({
                //                 url: "detailMenu.re",
                //                 data: { restNo: restNo },
                //                 success: function (menuList) {
                //                     if (menuList[0] != null){
                //                         restMenuContentDraw(menuList);
                //                     } else {
                //                         noRestContentDraw("등록된 메뉴가 없습니다.");
                //                     }
                //                 },
                //                 error: function () {
                //                     errorRestContentDraw("정보를 불러오는데 실패 했습니다.");
                //                 }
                //             })
                //             break;
                //         case 3:
                //             $.ajax({
                //                 url: "detailImg.re",
                //                 data: { restNo: restNo },
                //                 success: function (imgList) {
                //                     if (imgList[0] != null){
                //                         restImageContentDraw(imgList);
                //                     } else {
                //                         noRestContentDraw("등록된 사진이 없습니다.");
                //                     }
                //                 },
                //                 error: function () {
                //                     errorRestContentDraw("정보를 불러오는데 실패 했습니다.");
                //                 }
                //             })
                //             break;
                //     }
                // }
                


                <c:choose>
                    <c:when test="${(not empty loginUser) and (not empty userDibs)}">
                        <img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택후.png" alt="" onclick="selectDibs('off')">
                        <div>${rest.likeNo}</div>
                     </c:when>   

    //                 <c:otherwise>
    //                     <c:choose>

    //                         <c:when test="${(not empty loginUser)}">
    //                             <img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택전.png" alt="" onclick="selectDibs('on')">
    //                             <div>${rest.likeNo}</div>
    //                         </c:when>


    //                         <img src="${pageContext.request.contextPath}/resources/file/common_img/찜_선택전.png" alt="">
    //                         <div>${rest.likeNo}</div>
                            
    //                     </c:choose>
    //                 </c:otherwise>
    //             </c:choose>
                
</body>
</html>