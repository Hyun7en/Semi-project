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
<link rel="stylesheet" href="../../resources/css/admin_css/adminRestRegistForm.css">

<body>
    <div id="main-outer">
        <%@ include file="adminHeader.jsp"%>
        <div id="admin-title">
            가게 등록/수정
        </div>
        <main id="rest-regist-main">
            <form action="" class="main-form" method="GET">
                <table>
                    <tr>
                        <th width="20%">가게 이름</th>
                        <td><input type="text" name="restName" required></td>
                    </tr>
                    <tr>
                        <th>가게 주소</th>
                        <td><input type="text" name="restAddress"required></td>
                    </tr>
                    <tr>
                        <th>가게 전화번호</th>
                        <td><input type="text" name="restPhone" placeholder="010-0000-0000"></td>
                    </tr>
                    <tr>
                        <th>가게 소개글</th>
                        <td><textarea name="restIntro" placeholder="휴무일, 운영시간을 함께 입력하세요"></textarea></td>
                    </tr>
                    <tr>
                        <th>음식 카테고리</th>
                        <td>
                            <div>
                                <!-- for문으로 데이터 가져와서 출력 필요 -->
                                <select name="" id="">
                                    <option value="양식">양식</option>
                                    <option value="한식">한식</option>
                                    <option value="중식">중식</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>가게 사진</th>
                        <td></td>

                    </tr>
                    <tr>
                        <td colspan="2"><button type="" class="black-button" onclick="adminRestMenuRegist()">메뉴 등록 가기</button></td>
                    </tr>
                </table>
                <script>
                    function adminRestMenuRegist(){
                        location.href = "${pageContext.request.contextPath}/views/admin/adminRestMenuRegistView.jsp";
                    }
                </script>
            </form>
        </main>
        <%@ include file="../common/footer.jsp" %>
    </div>
    
</body>
</html>