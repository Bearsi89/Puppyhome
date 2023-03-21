<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> <%-- CDN 절대링크 --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script> <%-- CDN 절대링크 --%>
<title>Test Main3</title>
<link rel="stylesheet" type="text/css" href="">
<style type="text/css">
/* 폰트 CSS */
	@font-face {
		font-family: 'KIMM_Bold';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KIMM_Bold.woff2') format('woff2'); /* CDN 절대링크  */
		font-weight: 700;
		font-style: normal;
	}

	* {
		box-sizing: border-box;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
	}
	
	html {
		height: 100%;
	}
	
	body {
		margin: 0;
		height: 100%;
	}
	
	header {
		width: 100%;
	    position: fixed;
		z-index: 2;
	}
	.main {
		width: 1400px;
		position : relative;
		top: 105px;
		left: 50%;
        transform: translateX( -50% );
		background-color: orange;
		margin-bottom: 1px;
	}
	
	section {
		height: 100%;
		background-color: #AFAFAF;
	}
	
	ol {
		margin: 0;
	}
	
	footer {
		position : relative;
	    transform : translateY(-100%);
	    bottom: -300px; /* bottom값 수정을 통해서 푸터 영역 밑으로 내릴 수 있음 */
	}
	/* 캐러셀 */
	.container {
		margin: 0px;
		padding: 0px;
	}
	.carousel-control-next {
		width: 120px;
	}
	.carousel-control-prev {
		width: 120px;
	}
	.carousel-item {
		width: 1400px;
	}
</style>
</head>
<body>
	<%-- 전체 영역 --%>
	<div class=”wrap”>
		<%-- 헤더 영역 --%>
		<header>
			<%-- header include --%>
			<jsp:include page="header.jsp"/>
		</header>
		<%-- 본문 영역(하단의 영역 살짝 짤림, 본인이 알아서 ui 수정바람..;ㅅ;) --%>
		<section>
			<div class="main">
				<div class="container">
					<div id="carouselExampleRide" class="carousel slide" data-bs-ride="true">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <img src="../images/Carousel_Img1.png" class="d-block w-100" alt="캐러셀 이미지1">
					    </div>
					    <div class="carousel-item">
					      <img src="../images/Carousel_Img2.png" class="d-block w-100" alt="캐러셀 이미지2">
					    </div>
					    <div class="carousel-item">
					      <img src="../images/Carousel_Img3.png" class="d-block w-100" alt="캐러셀 이미지3">
					    </div>
					    <div class="carousel-item">
					      <img src="../images/Carousel_Img4.png" class="d-block w-100" alt="캐러셀 이미지4">
					    </div>
					    <div class="carousel-item">
					      <img src="../images/Carousel_Img5.png" class="d-block w-100" alt="캐러셀 이미지5">
					    </div>
					  </div>
					  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleRide" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
					</div>
				</div>
			</div>
			<div id="topBtn">
				<span class="fonti um-arrow-circle-up um-3x icon"></span>TOP
			</div>
		</section>
	</div>
	<%-- 푸터 영역 --%>
	<footer>
		<%-- footer include--%>
		<jsp:include page="footer.jsp"/>
	</footer>
	<script type="text/javascript">
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