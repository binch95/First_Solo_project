<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	width: 60%;
	margin: 0 auto;
	overflow: hidden;
	border: 2px solid #ddd;
	border-radius: 5px;
}

table {
	width: 100% ; /* 테이블 전체 너비를 한 번에 3개의 슬라이드가 보이도록 설정 */
	white-space: nowrap; /* 슬라이드가 한 줄로 나오도록 설정 */
	transition: transform 0.5s ease-in-out;
}

td.slide {
	width: calc(100% / 3); /* 각 슬라이드의 너비를 3등분 */
	padding: 0;
	display: inline-block; /* 한 줄에 나란히 보이도록 설정 */
	vertical-align: top; /* 슬라이드들이 수직으로 맞춰지도록 설정 */
	box-sizing: border-box; /* padding과 border를 너비에 포함 */
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

.mainImg>img {
	width: 50%;
	height: 100vh;
	max-height: 400px;
}

.mainImg {
	max-height: 400px;
}
</style>

</head>
<body>

	<div class="mainImg border flex justify-center">
		<img src="${pageContext.request.contextPath}/resource/images/main/main.png" alt="">
	</div>

	<script src="/resource/mainSlideBtn.js"></script>

<div class="slider" id="slider1">
    <table>
        <tr class="slides text-center">
            <c:forEach var="article" items="${articles}">
                <td class="slide">
                    <!-- 상품 이미지 -->
                    	
					<!-- 	<img class="" src="${rq.getImgUri(article.id)}" onerror="${rq.profileFallbackImgOnErrorHtml}" alt="" /> -->
						
                    
                    <!-- 상품명 -->
                    <div class="product-name">${article.title}</div>
                    
                    <!-- 가격 정보 -->
                    <div class="price-info">
                        <p>즉시구매가: ${article.price}원</p>
                        <p>입찰가: ${article.bid}원</p>
                    </div>
                    
                </td>
                
            </c:forEach>
        </tr>
    </table>

    <button class="prev" onclick="prevSlide(1)">&#10094;</button>
    <button class="next" onclick="nextSlide(1)">&#10095;</button>
</div>

	<div class="slider" id="slider2">
    <table>
        <tr class="slides text-center">
            <c:forEach var="article" items="${articles}">
                <td class="slide">
                    <!-- 상품 이미지 -->
                    	
					<!-- 	<img class="" src="${rq.getImgUri(article.id)}" onerror="${rq.profileFallbackImgOnErrorHtml}" alt="" /> -->
						
                    <!-- 상품명 -->
                    <div class="product-name">${article.title}</div>
                    
                    <!-- 가격 정보 -->
                    <div class="price-info">
                        <p>즉시구매가: ${article.price}원</p>
                        <p>입찰가: ${article.bid}원</p>
                    </div>
                </td>
            </c:forEach>
        </tr>
    </table>
		<button class="prev" onclick="prevSlide(2)">&#10094;</button>
		<button class="next" onclick="nextSlide(2)">&#10095;</button>
	</div>




</body>
<%@ include file="../common/foot.jspf"%>