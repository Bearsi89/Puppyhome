<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> <%-- CDN 절대링크 --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script> <%-- CDN 절대링크 --%>
<title>PuppyHome 메인</title>
<link rel="stylesheet" type="text/css" href="./css/footer.css"> <%-- footer.css --%>
<link rel="stylesheet" type="text/css" href="./fontium/css/fontium.css"/>
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
		background-color: rgb(179, 255, 213);  /* 영역 보기 편하라고 배경색 지정함 : 연초록 */
	}
	section {
		height: 2000px; /* UI 개발할 때 각 페이지에 맡게 해당 영역 px수치 수정해야함 */
		background-color: rgb(236, 226, 202); /* 영역 보기 편하라고 배경색 지정함 : 연주황 */
	}
	/* 클리어 */
	.clear {
		clear: both;
	}
	/* 밑의 영역부터 css시작 */
	.container {
		width: 100%;
	}
	/* 캐러셀 */
	#carouselExampleControls {
		width: 1100px;
		position : relative;
		left: 50%;
        transform: translateX( -50% );
	}
</style>
</head>
<body>
	<%-- 전체 영역 --%>
	<div class="wrap">
		<%-- 헤더 영역 --%>
		<header>
			<%-- header include --%>
			<jsp:include page="/include/header.jsp"/>
		</header>
		<%-- 본문 영역(ui깨질시 본인이 ui 수정바람..) --%>
		<section>
			<div class="main">
				<div class="container">
					<%-- main 화면 상단 캐러셀 (캐러셀 필요 없는 페이지는 삭제 바람!)--%>
						<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2500">
						  <div class="carousel-inner">
						    <div class="carousel-item active">
						      <img src="./images/Carousel_Img1.png" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="./images/Carousel_Img2.png" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="./images/Carousel_Img3.png" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="./images/Carousel_Img4.png" class="d-block w-100" alt="...">
						    </div>
						    <div class="carousel-item">
						      <img src="./images/Carousel_Img5.png" class="d-block w-100" alt="...">
						    </div>
						  </div>
						  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
						    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Previous</span>
						  </button>
						  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
						    <span class="carousel-control-next-icon" aria-hidden="true"></span>
						    <span class="visually-hidden">Next</span>
						  </button>
						</div>
					<%-- 캐러셀 끝 이 밑으로 작성!--%>
				</div>
			</div>
			<%-- top버튼 삭제 X --%>
			<div id="topBtn">
				<span class="fonti um-arrow-circle-up um-3x icon"></span>TOP
			</div>
		</section>
	<%-- 푸터 영역 --%>
	<footer>
	<!-- footer -->
	<div id="footerbox">
		<div id="innerbox">
            <div id="categorybox">
                <ul>
                    <li><a href="javascript:void(0);" onclick="openPopup_service();">서비스 이용약관</a></li>
                    <li><a href="javascript:void(0);" onclick="openPopup_privacy();">개인정보 처리방침</a></li>
                    <li><a href="javascript:void(0);" onclick="openPopup_inquiry();">입점/제휴 문의</a></li>
                    <li><a href="http://localhost:<%=request.getContextPath()%>/Shopping_Mall/util/company_introduce.jsp" target="_blank">회사소개</a></li>
                </ul>
            </div>
            <div id="infobox">
                <br>주식회사 퍼피홈 &nbsp;&nbsp; | &nbsp;&nbsp; 대표자명 : 이용현 &nbsp;&nbsp; | &nbsp;&nbsp; 사업자 등록번호 : 120-87-00000 &nbsp;&nbsp; | &nbsp;&nbsp; 통신판매업신고번호 : 제 2023-서울강남-00000호 &nbsp;&nbsp; | &nbsp;&nbsp; 개인정보관리자 : 이용현 leeyoung0919@naver.com &nbsp;&nbsp; | &nbsp;&nbsp; TEL : 1644-0000
                <br>서울특별시 강남구 강남대로84길 16, 11층 &nbsp;&nbsp; | &nbsp;&nbsp; 구매안전(에스크로)서비스
                <br><br>© copyright (c) www.puppyhome.co.kr all rights reserved.
            </div>
            <div id="checkbox">
            <input type="button" id="checkIcon" onclick="openPopup_certificate()" value="" alt="인증 마크 클릭 이동">
            </div>
        </div>
	</div>
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
		
		<%-- footer 부분 --%>
		// 서비스 이용약관 텍스트 클릭시 새창 열기
		function openPopup_service() {
	        var page_width = '560';
	        var page_height = '650';
	    
	        // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	        var page_left = Math.ceil((window.screen.width - page_width)/2);
	        var page_top = Math.ceil((window.screen.height - page_height)/2);
	
	    window.open("<%=request.getContextPath()%>/util/service.jsp", "service",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);
	    
	    }
	    
		// 개인정보 처리 텍스트 클릭시 새창 열기
		function openPopup_privacy() {
	        var page_width = '590';
	        var page_height = '555';
	    
	        // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	        var page_left = Math.ceil((window.screen.width - page_width)/2);
	        var page_top = Math.ceil((window.screen.height - page_height)/2);
	
	    window.open("<%=request.getContextPath()%>/util/privacy.jsp", "privacy",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);
	    
	    }
		
		// 입점/제휴 문의 텍스트 클릭시 새창 열기
		function openPopup_inquiry() {
	        var page_width = '580';
	        var page_height = '555';
	    
	        // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	        var page_left = Math.ceil((window.screen.width - page_width)/2);
	        var page_top = Math.ceil((window.screen.height - page_height)/2);
	
	    window.open("<%=request.getContextPath()%>/util/inquiry.jsp", "inquiry",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);
	    
	    }
		
		// 인증 마크 클릭시 새창 열기
	    function openPopup_certificate() {
	        var page_width = '510';
	        var page_height = '430';
	    
	        // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	        var page_left = Math.ceil((window.screen.width - page_width)/2);
	        var page_top = Math.ceil((window.screen.height - page_height)/2);
	
	    window.open("<%=request.getContextPath()%>/util/certificate.jsp", "certificate",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);
	    
	    }
	</script>
</body>
</html>