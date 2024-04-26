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
            <script src="${pageContext.request.contextPath}/resources/js/cs_js/adminCsForm.js"></script>
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

                            <form id="enroll-form" action="insert.AdminCs" method="post">
                                <input type="hidden" name="csDetailWriter" value="${loginUser.userNo}">
                                <table class="table table-bordered">
                                    <tr>
                                        <th width="80">대분류</th>
                                        <td width="500">
                                            <!-- csType 테이블로부터 조회해오기 -->
                                            <select id="select-csType" name="csType" required >
                                                

                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>중분류</th>
                                        <td>
                                            <!-- csKeyword 테이블로부터 조회해오기 -->
                                            <select id="select-csKeyword" name="csKeyword" required >
                                                
                                               
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>제목</th>
                                        <td><input type="text" name="csDetailTitle" id="csTitle" autofocus  required></td>
                                    </tr>
                                    <tr>
                                        <th>내용</th>
                                        <td><textarea name="csDetailContent" rows="10" id="csContent" style="resize: none;" required></textarea></td>
                                    </tr>
                                </table>

                                <br>

                                <div align="center">
                                    <button type="submit" class="btn btn-primary btn-sm">작성하기</button>
                                    <button type="reset" class="btn btn-sm btn-danger">취소하기</button>
                                    <button type="button" onclick="history.back()" class="btn btn-sm btn-secondary" >뒤로가기</button>
                                </div>
                            </form>

                        </div>
                    </main>
            </div>

        </body>

    </html>