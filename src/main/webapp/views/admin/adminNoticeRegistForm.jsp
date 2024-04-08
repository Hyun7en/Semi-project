<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../resources/css/admin_css/style.css">
<link rel="stylesheet" href="../../resources/css/common_css/footer.css">
<link rel="stylesheet" href="../../resources/css/admin_css/adminView.css">
<link rel="stylesheet" href="../../resources/css/admin_css/adminNoticeRegistForm.css">

<body>
    <div id="main-outer">
        <%@ include file="adminHeader.jsp"%>
        <div id="admin-title">
            공지사항 등록/수정
        </div>
        <main id="noticeRegistMain">
            <form action="" method="GET">
                <table id="">
                    <tr>
                        <th width="20%">제목</th>
                        <td><input type="text" name="notiTitle" required></td>
                    </tr>
                    <tr>
                        <th width="80%">내용</th>
                        <td><textarea name="notiContent"></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2"><button type="submit" class="black-button">등록</button></td>
                    </tr>
                </table>
            </form>
        </main>
        <%@ include file="../common/footer.jsp" %>
    </div>
</body>
</html>