<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../../resources/css/common_css/style.css">
<link rel="stylesheet" href="../../resources/css/common_css/footer.css">
<link rel="stylesheet" href="../../resources/css/admin_css/adminView.css">
<link rel="stylesheet" href="../../resources/css/admin_css/adminMainView.css">

<body>
    
    <div id="main-outer">
        <%@ include file="adminHeader.jsp"%>
        <div id="admin-title">
            환영합니다, 관리자 admin 님
            <!-- 관리자 admin에 데이터베이스에서 가져온 유저 정보 기입 필요 -->
        </div>
        <main id="adminMain">
            <div>
                <div><a href="${pageContext.request.contextPath}/views/admin/adminRestListView.jsp">가게 관리</a></div>
                <div><a href="${pageContext.request.contextPath}/views/admin/adminFoodCategoryView.jsp">음식 카테고리 관리</a></div>
                <div><a href="">공지사항 / Q&A 관리</a></div>
            </div>
            <div>
                <div><a href="">회원 / 포인트 관리</a></div>
                <div><a href="">쿠폰 관리</a></div>
                <div><a href="">리뷰 관리</a></div>
            </div>
        </main>
        <%@ include file="../common/footer.jsp" %>
    </div>
</body>
</html>