<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.always5.review.rest.model.vo.Restaurant"%>
    
<%
Restaurant r = new Restaurant();
// 세션에서 가게 이름을 가져온다.
String restName = (String) session.getAttribute("${r.restName }");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin_css/adminView.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin_css/adminRestMenuRegistForm.css">

<body>
    <div id="wrap">
        <%@ include file="adminHeader.jsp"%>
        <div id="admin-title">
            가게 등록/수정
        </div>
        <main class="rest-menu-regist-main">
            <form action="" class="main-form" method="GET">
                <table id="regist-menu">
                    <tr>
                        <th width="20%">가게 이름</th>
                        <td><input type="text" name="restName" value="<%= r %>" id="rest-name" readonly></td>
                        <!-- 방금 등록된 가게 이름 가져와야 함 -->
                    </tr>
                    <tr>
                        <th>메뉴 이름</th>
                        <td><input type="text" name="menuName" required></td>
                    </tr>
                    <tr>
                        <th>메뉴 카테고리</th>
                        <td><input type="text" name="menuCategory" required></td>
                    </tr>
                    <tr>
                        <th>메뉴 가격</th>
                        <td><input type="text" name="menuPrice" placeholder="숫자만 입력" required></td>
                    </tr>
                    
                    <tr>
                        <td colspan="2"><button type="submit" class="black-button">메뉴 등록</button></td>
                    </tr>
                </table>
            </form>

            <table width="100%">
                <!-- tr 클릭 시 가게 수정 페이지 요청(등록 페이지에 내용 담아 반환) -->
                <tr>
                    <th width="15%">번호</th>
                    <th width="45%">메뉴 이름</th>
                    <th width="25%">메뉴 카테고리</th>
                    <th width="15%">메뉴 가격</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>마라로제떡볶이</td>
                    <td>떡볶이</td>
                    <td>10000원</td>
                </tr>
                <!-- <tr>
                    <td>1</td>
                    <td>마라로제떡볶이</td>
                    <td>떡볶이</td>
                    <td>10000원</td>
                </tr> -->
                

                <tr style="border: none;">
                    <td colspan="4"><button type="submit" class="black-button">가게 등록 종료</button></td>
                </tr>
            </table>
        </main>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>