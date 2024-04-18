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
</body>
</html>