<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin_css/adminCsForm.css">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        </head>

        <body>

            <div id="wrap">

                <!-- 공통 헤더 -->
                <%@ include file="adminHeader.jsp" %>


                    <main>

                        <div class="outer" align="center">
                            <br>
                            <h2 align="center">고객센터 글 등록</h2>
                            <br>

                            <form id="enroll-form" action="insert.bo" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="userNo" value="${loginUser.userNo}">
                                <table class="table table-bordered">
                                    <tr>
                                        <th width="70">카테고리</th>
                                        <td width="500">
                                            <select name="category">
                                                <!-- category 테이블로부터 조회해오기 -->
                                                <c:forEach var="keyword" items="${list}">
                                                    <option value="${keyword.csKeywordNo}">${keyword.keywordValue}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>제목</th>
                                        <td><input type="text" name="title" required></td>
                                    </tr>
                                    <tr>
                                        <th>내용</th>
                                        <td><textarea name="content" rows="10" style="resize: none;"
                                                required></textarea></td>
                                    </tr>
                                </table>

                                <br>

                                <div align="center">
                                    <button type="submit">작성하기</button>
                                    <button type="reset">취소하기</button>
                                </div>
                            </form>

                        </div>
                    </main>
            </div>
        </body>

    </html>