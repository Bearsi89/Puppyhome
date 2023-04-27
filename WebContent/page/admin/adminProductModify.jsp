<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> <%-- CDN 절대링크 --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script> <%-- CDN 절대링크 --%>

<title>PuppyHome 상품 수정</title>

<link rel="shortcut icon" href="<%=request.getContextPath()%>/images/favicon.ico" type="image/x-icon"> <%-- 파비콘 --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/include/css/header.css"> <%-- header.css --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/include/css/footer.css"> <%-- footer.css --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/admin/css/admin.css"> <%-- admin 계정.css --%>

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
		<%-- 본문 영역 --%>
		<section>
				<div class="main"> <%-- main 시작 --%>
				<div class="adminMainpage"><%-- adminMainpage --%>
				
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
					
			<%-- 상품 수정 form --%>
			<div class="productTitle">
				<h3 align="center">상품&nbsp;수정</h3><p>					
				
				<%-- 상품 등록 --%>
				<table class="productForm" align="center">	
					<tr><th></th></tr>
					<tr> <th>상품명</th>
						<td align="left"><input type="text" class="#" name="#"></td>
					</tr> <p>
					<tr><th></th></tr>
					<tr>
						<th><b>가격</b></th>
						<td align="left"><input type="text" class="#" name="#" width="1000px">&nbsp;원</td>
					</tr>
					<tr><th></th></tr>
					<tr>
						<th>카테고리</th>
						<td align="left"> 
							<label>대분류</label>
							<select id="category01">
								<option value="사료">사료</option>
								<option value="간식">간식</option>
								<option value="영양제">영양제</option>
							</select>								
							<label>소분류</label>
							<select id="category02">
								<option value="퍼피">퍼피</option>
								<option value="어덜트">어덜트</option>
								<option value="시니어">시니어</option>
							</select>
					</tr> <p>
					
					<tr><th></th></tr>
					
					<tr>
						<th>메인<br>이미지</th>
						<td align="left"><input type="file" onchange="openFile(event)" /></td>
					</tr>
					<tr>
						<th>상세페이지<br>이미지</th>
						<td align="left"><input type="file" onchange="openFile(event)" /></td>
					</tr>
					</table> <p><p>
					
					<input type="submit" value="수정완료" />
					<input type="reset" value="삭제" />
					<input type="button" value="목록보기" onclick="location='adminProductList.shop'" />
				
				</div> <%-- end product--%>
					
				</div><%-- adminMainpage 끝--%>
				 
			 </div> <%-- end main --%>

			<%-- top버튼 삭제 X --%>
			<div id="topBtn">
				<span class="fonti um-arrow-circle-up um-3x icon"></span>TOP
			</div>
		</section>
	<%-- 푸터 영역 --%>
	<footer>
		<!-- footer -->
		<jsp:include page="/page/include/footer.jsp"/>
		<!-- footer 끝 -->
	</footer>
	</div>
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