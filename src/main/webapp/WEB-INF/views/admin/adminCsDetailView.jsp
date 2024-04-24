<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> -->
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
        <link rel="stylesheet"href="${pageContext.request.contextPath}/resources/css/admin_css/adminCsListView.css">
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
                            <h1 align="center">고객센터 관리 게시판 상세조회</h1>
                            <br>
                    
                            <table align="center" border="1" class="table table-bordered">
                                <tr>
                                    <td width="100">글번호</td>
                                    <td width="500">${ csDetail.csDetailNo }</td>
                                </tr>
                                <tr>
                                    <td>제목</td>
                                    <td>${ csDetail.csDetailTitle }</td>
                                </tr>
                                <tr>
                                    <td>작성 관리자</td>
                                    <td>${ csDetail.csDetailWriter }</td>
                                </tr>
                                <tr>
                                    <td>작성일</td>
                                    <td>${ csDetail.csDetailEnrollDate }</td>

                
                                </tr>
                                <tr>
                                    <td>내용</td>
                                    <td height="100">
                                        ${ csDetail.csDetailContent }
                                    </td>
                                </tr>
                            </table>
                        </div>

                        <div align="center">
                            <a href="list.AdminCs" class="btn btn-sm btn-secondary">목록가기</a>
                            <a href="update.AdminCs" class="btn btn-sm btn-warning">수정하기</a>
                            <a href="delete.AdminCs" class="btn btn-sm btn-danger">삭제하기</a>
                        </div>


            </main>
        </body>

    </html>