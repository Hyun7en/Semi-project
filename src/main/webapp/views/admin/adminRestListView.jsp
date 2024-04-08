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
<link rel="stylesheet" href="../../resources/css/admin_css/adminRestListView.css">

<body>
    <div id="main-outer">
        <%@ include file="adminHeader.jsp"%>
        <div id="admin-title">
            가게 관리
        </div>
        <main id="adminRestList">
            <div class="main-div">
                <!-- 가게명 검색 요청 -->
                <form action="" id="search-bar" method="GET">
                    <input type="text" name="search-keyword" id="search-box" placeholder="가게명을 입력하세요">
                    <input type="submit" value="검색" id="search-button">
                </form>
            </div>
            <table width="100%">
                <!-- tr 클릭 시 가게 수정 페이지 요청(등록 페이지에 내용 담아 반환) -->
                <tr>
                    <th width="15%">번호</th>
                    <th width="50%">가게 이름</th>
                    <th width="20%">등록자</th>
                    <th width="15%">등록일</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>떡볶이 스타</td>
                    <td>admin</td>
                    <td>2024-03-20</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>떡볶이 스타</td>
                    <td>admin</td>
                    <td>2024-03-20</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>떡볶이 스타</td>
                    <td>admin</td>
                    <td>2024-03-20</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>떡볶이 스타</td>
                    <td>admin</td>
                    <td>2024-03-20</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>떡볶이 스타</td>
                    <td>admin</td>
                    <td>2024-03-20</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>떡볶이 스타</td>
                    <td>admin</td>
                    <td>2024-03-20</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>떡볶이 스타</td>
                    <td>admin</td>
                    <td>2024-03-20</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>떡볶이 스타</td>
                    <td>admin</td>
                    <td>2024-03-20</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>떡볶이 스타</td>
                    <td>admin</td>
                    <td>2024-03-20</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>떡볶이 스타</td>
                    <td>admin</td>
                    <td>2024-03-20</td>
                </tr>
            </table>
            <div class="paging-area" align="center">
                <!-- for문으로 수정 필요 -->
                <button onclick="">&lt;</button>
                <button onclick="">1</button>
                <button onclick="">2</button>
                <button onclick="">3</button>
                <button onclick="">4</button>
                <button onclick="">5</button>
                <button onclick="">6</button>
                <button onclick="">7</button>
                <button onclick="">8</button>
                <button onclick="">9</button>
                <button onclick="">10</button>
                <button onclick="">&gt;</button>

                <!-- 등록 페이지 요청 -->
                <button id="regist-store" onclick="adminRestListView()">가게 등록</button>
            </div>
            <script>
                function adminRestListView(){
                    location.href = "${pageContext.request.contextPath}/views/admin/adminRestRegistView.jsp";
                }
            </script>
        </main>
        <%@ include file="../common/footer.jsp" %>
    </div>
    
</body>
</html>