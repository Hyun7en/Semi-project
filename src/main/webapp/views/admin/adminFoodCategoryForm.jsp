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
<link rel="stylesheet" href="../../resources/css/admin_css/adminFoodCategoryForm.css">

<body>
    <div id="main-outer">
        <%@ include file="adminHeader.jsp"%>
        <div id="admin-title">
            음식 카테고리 관리
        </div>
        <main id="foodCategoryMain">
            <div>
                <p>등록 시 기존 카테고리 뒤에 단어를 입력하세요.</p> <br>
                <p>삭제 시 기존 카테고리 단어를 삭제하세요.</p> <br>
                <p>여러 개 등록 시 띄어쓰기 없이 쉼표를 사용해 구분하세요.</p>
            </div>
            <div id="registFoodCategory">
                <!-- 데이터 출력 필요 -->
                <textarea name="foodCategory" id=""rows="10">양식,중식,한식,일식</textarea>
                <button type="submit" class="black-button">수정 완료</button>
            </div>
        </main>
    </div>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>