<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>왕밥빵 - 가게관리</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common_css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin_css/adminView.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin_css/adminRestListView.css">

<body>
    <div id="wrap">
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
            	<thead>
	                <tr>
	                    <th width="15%">번호</th>
	                    <th width="50%">가게 이름</th>
	                    <!-- <th width="20%">등록자</th> -->
	                    <th width="15%">등록일</th>
	                </tr>
                </thead>
                <tbody>
	                <c:forEach var="r" items="${list}">
	            	<!-- list객체를 r에 담아서 tr을 반복해서 만들어줌 -->
	                <!-- tr 클릭 시 가게 수정 페이지 요청(등록 페이지에 내용 담아 반환) -->
		                <tr onclick="location.href = 'restupdate.ad?rno=${r.restNo}'">
		                    <td>${r.restNo }</td>
		                    <td>${r.restName }</td>
		                    <!-- <td>admin</td> -->
		                    <td>${r.restModifyDate }</td>
		                </tr>
		             </c:forEach>
                </tbody>
            </table>
            
            <div class="paging-area" align="center">
                <c:if test="${pi.currentPage ne 1}">
	        		<button onclick="">
	        			<a href="adrest.li?cpage=${pi.currentPage - 1}">&lt;</a>
	        		</button>	
	        </c:if>
	        
	        <c:forEach var="i" begin="${pi.startPage }" end="${pi.endPage }">
	        	<c:choose>
		        	<c:when test="${empty condition }">
		        		<button onclick="">
		        			<a href="adrest.li?cpage=${i}">${i}</a>
		        		</button>	
		        	</c:when>
		        	<c:otherwise>
		        		<a href="search.bo?cpage=${i}&condition=${condition}&keyword=${keyword}">${i}</a>
		        	</c:otherwise>
	        	</c:choose>
	        </c:forEach>
	        
	        <c:if test="${pi.currentPage ne pi.maxPage}">
	        	<button onclick="">	
	        		<a href="adrest.li?cpage=${pi.currentPage + 1}">&gt;</a>
	        	</button>
	        </c:if>
                

                <!-- 등록 페이지 요청 -->
                <button id="regist-store" onclick="location.href='restenroll.ad'">가게 등록</button>
            </div>
            <script>
                function adminRestListView(){
                    location.href = "${pageContext.request.contextPath}/views/admin/adminRestRegistView.jsp";
                }
            </script>
        </main>
    </div>
</body>
</html>