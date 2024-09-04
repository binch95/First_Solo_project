<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="MAIN"></c:set>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Preview</title>
<script src="https://cdn.tailwindcss.com"></script>
<%@ include file="../common/head.jspf"%>
<style>
.slider {
    position: relative;
    width: 70%;
    margin: 0 auto;
    overflow: hidden;
    border: 2px solid #ddd;
    border-radius: 5px;
}

table {
    width: 200%; /* 한 번에 3개의 상품이 보이도록 테이블의 전체 너비를 설정 */
    transition: transform 0.5s ease-in-out;
}

td.slide {
    width: calc(100% / 6); /* 각 셀의 너비를 슬라이드의 1/3로 설정 */
    padding: 0;
}

td.slide img {
    width: 100%;
    display: block;
}

.abtn {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0, 0, 0, 0.5);
    color: white;
    border: none;
    padding: 10px;
    cursor: pointer;
    border-radius: 50%;
    z-index: 10; /* 슬라이드보다 앞에 배치 */
}

.prev {
    left: 10px;
}

.next {
    right: 10px;
}

.abtn:hover {
    background-color: rgba(0, 0, 0, 0.8);
}

</style>
    
</head>
<body>
			<div>
		메인 그림
		</div>
		
    <div class="slider">
        <table>
            <tr class="slides">
                <!-- Thymeleaf를 사용하여 상품 이미지를 반복 출력 -->
                <c:forEach var="product" items="${products}">
                    <td class="slide">
                        <img th:src="${product }" alt="상품">
                    </td>
                </c:forEach>
            </tr>
        </table>
        <!-- 네비게이션 버튼 -->
        <script src="/js/script.js"></script>
        <button class="prev" onclick="prevSlide()">&#10094;</button>
        <button class="next" onclick="nextSlide()">&#10095;</button>
    </div>
    
    
    <div class="slider">
        <table>
            <tr class="slides">
                <!-- Thymeleaf를 사용하여 상품 이미지를 반복 출력 -->
                <c:forEach var="product" items="${products}">
                    <td class="slide">
                        <img th:src="${product }" alt="상품">
                    </td>
                </c:forEach>
            </tr>
        </table>
        <!-- 네비게이션 버튼 -->
        <script src="/js/script.js"></script>
        <button class="prev" onclick="prevSlide()">&#10094;</button>
        <button class="next" onclick="nextSlide()">&#10095;</button>
    </div>
	

</body>
