<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> <%-- CDN 절대링크 --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script> <%-- CDN 절대링크 --%>

<title>PuppyHome 관리자 상품목록 Page</title>

<link rel="shortcut icon" href="<%=request.getContextPath()%>/images/favicon.ico" type="image/x-icon"> <%-- 파비콘 --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/include/css/header.css"> <%-- header.css --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/include/css/footer.css"> <%-- footer.css --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/admin/css/admin.css"> <%-- admin 계정.css --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/admin/css/adminMemProductList.css"> <%-- adminMemProductList.css --%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/fontium/css/fontium.css"/>

<style type="text/css">
/* 폰트 CSS */
@font-face {
	font-family: 'KIMM_Bold';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KIMM_Bold.woff2') format('woff2'); /* CDN 절대링크  */
	font-weight: 700;
	font-style: normal;
}
/* 되도록 안건드리는 영역 */
* {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
}
html {
	height: 100%;
}
body {
	margin: 0px;
	height: 100%;
	padding: 0px;
}
header {
	width: 100%;
    position: fixed;
	z-index: 2;
}
footer {
	bottom: 0;
	z-index: 5;
	position: relative;
}
.wrap {
	margin-top: -110px;
	min-height: 100%;
    position: relative;
}
.main { 
	width: 1400px;
	height: 2000px; /* UI 개발할 때 각 페이지에 맡게 해당 영역 px수치 수정해야함 */
	position : relative;
	top: 105px;
	left: 50%;
       transform: translateX( -50% );
	background-color: white;  /* 영역 보기 편하라고 배경색 지정함 : 하얀색 */
}
section {
	height: 2000px; /* UI 개발할 때 각 페이지에 맡게 해당 영역 px수치 수정해야함 */
	/* background-color: rgb(236, 226, 202); 영역 보기 편하라고 배경색 지정함 : 연주황 */
}
/* 클리어 */
.clear {
	clear: both;
}
/* 밑의 영역부터 css시작 */
.container {
	width: 100%;
}
/* 관리자 프로필 계정 NOTOCH */
.adminMainpage {
	width: 1100x;
	height: 300px;
	position : relative;
	left: 50%;
       transform: translateX( -50% );
}
.profile_img{
	width: 1400px;
	height: 200px;
	padding-left: 50px; 
	padding-right: 100px;
	background-color: #fc9300;
}
/* 상품 목록 */ 
.product{
	width: 1400px;
	height: 80px;
	padding-top: 50px;
	padding-left: 50px; 
	padding-right: 100px;
	font-family: 'KIMM_Bold';
} 
/* 상품 등록 리스트 테두리 */ 
.productList{
	width: 1250px;
	margin-left: 0px;
	margin-right: 0px;
	border-top: 2px solid #FC5400;
    border-bottom: 2px solid #FC5400;	    
	font-family: 'KIMM_Bold';
}
.productList th {
	border-bottom: 1px solid #f5ad56;
}
#btn {
	border-color: #FC5400; 
	background-color: #FC5400; 
	color: #fff;
}
/* 페이징 처리 */
/* 페이징 전체 틀 */
.pagination-container {
	margin: 10px auto;
	display: flex;
    justify-content: center;
}

.pagination {
	position: relative;
}
/* 'PREV' 전체 틀 */
.pagination a {
	position: relative;
	display: inline-block;
	color: #FC5400; /* 글자색상 */
	text-decoration: none;
	font-size: 1.2rem;
	padding: 8px 16px 10px;
}
/* 'PREV' 부분 */
.pagination a:before {
	z-index: -1;
	position: absolute;
	height: 100%;
	width: 100%;
	content: "";
	top: 0;
	left: 0;
	background-color: #FC5400;
	border-radius: 24px;
	-webkit-transform: scale(0);
	transform: scale(0);
	transition: all 0.2s;
}

.pagination a:hover, .pagination a .pagination-active {
	color: #fff;
}

.pagination a:hover:before, .pagination a .pagination-active:before {
	-webkit-transform: scale(1);
	transform: scale(1);
}

.pagination .pagination-active {
	color: #fff;
}

.pagination .pagination-active:before {
	-webkit-transform: scale(1);
	transform: scale(1);
}
/*'NEXT' 전체 틀 */
.pagination-newer {
	margin-right: 50px;
}

.pagination-older {
	margin-left: 50px;
}
</style>
</head>
<body>
	<%-- 전체 영역 --%>
	<div class="wrap">
		<%-- 헤더 영역 --%>
		<header>
			<%-- header include --%>
			<jsp:include page="/page/include/header.jsp"/>
		</header>
		<%-- 본문 영역(ui깨질시 본인이 ui 수정바람..) --%>
		<section>
			<div class="main">
				<div class="adminMainpage"> <%-- adminMainpage --%>
										
						<%-- admin 계정 --%>
						<h1 class="name" style="color: #fc9300">Admin Page</h1>
						 
						 <div class="profile_img" align="center">
						 <a href="adminMain.shop"><img width="150px" height="190px" align="left" alt="adminImage" src="<%=request.getContextPath() %>/images/admin.png">
						 </a>
						 
						 <div class="location" align="right" style="color: white;">
							 <a href="adminMemList.shop">회원 관리</a> | 
							 <a href="adminMemBoard.shop">고객 게시판</a> | 
							 <a href="adminProductList.shop">상품 목록</a> | 
							 <a href="adminSalesManagement.shop">매출 관리</a>
						 </div>
						
						 
						  <h3 class="myinfo" align="left"><b>관리자 계정</b> <br></h3>
						  	<div class="myinfo_date" align="left"> 가입일 : 2023.03.15.</div> <br>
						  </div> <%-- end profile_img --%>
						  
				</div><%-- adminMainpage 끝--%>
				
			<%-- 상품 목록 제목 + 버튼 --%>
			<div class="product">
					<h3 align="center">&nbsp;상품&nbsp;목록</h3><p>
														
					<%-- 검색 테이블 --%>
					<form method="post">
					<table align="center">
						<tr>
						<td align="center">
							<select>
								<option value="상품명">상품명</option>
								<option value="가격">가격</option>
							</select>
							<input type="text" name="seachWord" />
							<input id="btn" type="submit" value="검색" />
						</td>
						</tr>
					</table>
					</form><p>	
								
				<%-- 상품 리스트(productList) --%>
				<table class="productList" align="center">
				<colgroup>
					<col width="50"> <%-- 체크박스 : 상품 삭제 여부  --%>
					<col width="50"> <%-- No --%> 
					<col width="200"> <%-- 상품번호 --%>
					<col width="500"> <%-- 상품명 --%>
					<col width="200"> <%-- 대분류 --%>
					<col width="200"> <%-- 소분류 --%>
					<col width="200"> <%-- 가격 --%>
					<col width="200"> <%-- 등록날짜 --%>
					<col width="100"> <%-- 비고(편집) --%>
				</colgroup>
						
				<tr align="center">
				<th>&nbsp;</th>
				<th>No</th> 
				<th>상품번호</th> 
				<th>상품명</th> 
				<th>대분류</th> 
				<th>소분류</th> 
				<th>가격</th>
				<th>등록날짜</th> 
				<th>비고</th>
				</tr>
						
				<tr align="center">
					<th><input type="checkbox" value="check"></th>
					<th>1</th>
					<th>123456789</th>
					<th>퍼피가 탐내는 개사료</th>
					<th>사료</th>
					<th>퍼피</th>
					<th>15,000 원</th>
					<th>2023.03.26.</th>
					<th>
					<input id="btn" type="button" value="수정" onclick="location='http://localhost:8046/MVC/adminProdurctModify.shop'"/>
					</th>
				</tr>				
									
				</table> 
				<%-- end productList --%>
				
				<p><br>
				<input id="btn" type="button" value="상품등록" onclick="location='http://localhost:8046/MVC/product_register.shop'"/>
				<input id="btn" type="button" value="상품삭제" onclick="#"/>

			<%-- 페이징 처리 --%>
			<div class="pagination-container">
				<div class="pagination">
					<a class="pagination-newer" href="${servlet}product&command=${command}&keyword=${keyword}&category=${category}&pageNo=${pageNo>1?pageNo-1:1}">PREV</a> 
						<span class="pagination-inner"> 
						<c:forEach var='i' begin='1' end='${pageCnt}'>
						<a class="${i==pageNo?'pagination-active':page}" href="${servlet}product&command=${command}&category=${category}&keyword=${keyword}&pageNo=${i}">${i}</a> 
						</c:forEach>
						</span> 
					<a class="pagination-older" href="${servlet}product&command=${command}&keyword=${keyword}&category=${category}&pageNo=${pageNo<pageCnt?pageNo+1:pageCnt}">NEXT</a>
				</div>
			</div>
			<%-- 페이징처리 끝 --%>
								
				</div> <%-- end product --%>
					
			</div> <%-- end main --%>
			
			<%-- top버튼 삭제 X --%>
			<div id="topBtn">
				<span class="fonti um-arrow-circle-up um-3x icon"></span>TOP
			</div>
		</section>
	<%-- 푸터 영역 --%>
	<footer>
	<!-- footer -->
	<jsp:include page="/page/include/footer.jsp" />
	<!-- footer 끝 -->
	</footer>
	<script type="text/javascript">
	
		<%-- top버튼 부분 --%>
		// 클릭 이벤트 핸들러
		$("#topBtn").click(function(e) {
			e.stopPropagation();
			$("html, body").animate({
				scrollTop : 0
			}, 'fast', 'easeOutCubic');
		});

		// 스크롤 이벤트 핸들러
		$(window).scroll(function() {
			if ($(window).scrollTop() == 0) {
				$("#topBtn").css("opacity", 0); // TOP 버튼 숨기기
			} else {
				$("#topBtn").css("opacity", 1); // TOP 버튼 나타내기
			}
		});
	</script>
</body>
</html>