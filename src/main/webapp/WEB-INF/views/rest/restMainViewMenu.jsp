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
    <div id="rest-menu-content">
        <table>
            <c:forEach var="r" items="${menuList}">
                <!-- tr은 (menuList length + 1) / 2 만큼 반복해서 그리기 -->
                <!-- tr 안의 메뉴는 -->
                <tr>

                </tr>
            </c:forEach>
            
            for(int i = 0; i < (menuList.length() + 1) / 2; i++){
                <tr>
                    
                </tr>
            }

            <tr>
                <td class="menu-name">정말정말 맛있는 왕밥빵</td>
                <td class="menu-price">10000원</td>
                <td class="menu-margin"></td>
                <td class="menu-name">새우볶음밥</td>
                <td class="menu-price">9000원</td>
            </tr>
            <tr>
                <td class="menu-name">빵</td>
                <td class="menu-price">1000원</td>
                <td class="menu-margin"></td>
                <td class="menu-name">밥</td>
                <td class="menu-price">5000원</td>
            </tr>
            <tr>
                <td class="menu-name">정말정말 맛있는 왕밥빵</td>
                <td class="menu-price">10000원</td>
                <td class="menu-margin"></td>
                <td class="menu-name">정말정말 맛있는 왕밥빵</td>
                <td class="menu-price">10000원</td>
            </tr>
            <tr>
                <td class="menu-name">정말정말 맛있는 왕밥빵</td>
                <td class="menu-price">10000원</td>
                <td class="menu-margin"></td>
                <td class="menu-name">정말정말 맛있는 왕밥빵</td>
                <td class="menu-price">10000원</td>
            </tr>
            <tr>
                <td class="menu-name">정말정말 맛있는 왕밥빵</td>
                <td class="menu-price">10000원</td>
                <td class="menu-margin"></td>
                <td class="menu-name"></td>
                <td class="menu-price"></td>
            </tr>
        </table>
    </div>
</body>
</html>