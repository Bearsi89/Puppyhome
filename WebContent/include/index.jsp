<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script src="./js/jquery.easing.min.js"></script> <!-- 위치마다 . or .. 수정해줘야함 -->
<title>Header</title>
<link rel="stylesheet" type="text/css" href="">
<link rel="stylesheet" type="text/css" href="./fontium/css/fontium.css" />
<style type="text/css">
/* 폰트 CSS */
@font-face {
	font-family: 'KIMM_Bold';
	src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KIMM_Bold.woff2') format('woff2');
	font-weight: 700;
	font-style: normal;
}

/* 메인 컨텐츠 부분 */
#wrap {
	width: 100%;
	height: 100%;
	text-align: center;
	position: absolute;
	top: 145px;
	z-index: 1;
}
.container {
	width: 1100px;
}
.carousel-control-next {
	width: 120px;
}
.carousel-control-prev {
	width: 120px;
}
/* 헤더 박스 부분 */
#headerbox {
	width: 100%;
	height: 145px;
	position: fixed;
	left: 50%;
	transform: translateX(-50%);
	border-bottom: 1px solid lightgray;
	background-color: white;
	z-index: 2;
}

/* 로고 이미지 */
#logoImage {
	position: fixed;
	left: 9%;
	top: 2%;
	transform: translateX(-50%);
}

/* 헤더 박스 안의 컨텐츠 */
#menubox {
	width: 1500px;
	height: 140px;
	position: fixed;
	left: 50%;
	transform: translateX(-50%);
}

/* 메뉴바 관련 */
#navbarbox {
	width: 800px;
	height: 85px;
	position: fixed;
	left: 46%;
	top: 22%;
	transform: translateX(-50%);
}

#navbarbox a {
	color: black;
	text-decoration: none;
	font-family: 'KIMM_Bold', sans-serif;
	font-size: larger;
	margin: 0px 28px 0px 28px;
}

#navbarbox a:active {
	color: orange;
}

#a2 {
	margin-left: 100px;
}

/* 드롭박스 관련 */
#dropbtn {
	background-color: white;
	color: black;
	padding: 16px;
	font-family: 'KIMM_Bold', sans-serif;
	font-size: larger;
	border: none;
	margin-left: 12px;
}

#dropbtn:active {
	color: orange;
}

#dropdownbox {
	position: relative;
	display: inline-block;
}

#dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 170px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

#dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

#dropdownbox:hover #dropdown-content {
	display: block;
}

/* 회원가입, 로그인 관련 */
#memberbox {
	width: 196px;
	height: 125px;
	position: fixed;
	right: -3%;
	top: 7%;
}

#memberbox a {
	color: black;
	text-decoration: none;
	font-family: 'KIMM_Bold', sans-serif;
	font-size: small;
}

#memberbox a:hover {
	color: blue;
}

/* 검색창 관련 */
#searchbox {
	position: fixed;
	right: 0%;
	top: 40%;
	transform: translateX(-10%);
}

#search {
	width: 330px;
	height: 32px;
	font-size: 15px;
	font-weight: bold;
	border: 0.5px solid lightgrey;
	border-radius: 15px;
	outline: none;
	padding-left: 10px;
	background-color: rgb(240, 239, 239);
	z-index: 2;
}

#searchBtn {
	width: 32px;
	height: 29px;
	position: fixed;
	right: 0;
	top: 5%;
	transform: translateX(-10%);
	border: none;
	border-radius: 15px;
	padding: 0;
}

/* 위로 가기 버튼 관련 */
#topBtn {
	position: fixed;
	bottom: 45px;
	right: 5px;
	width: 60px;
	height: 47px;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	color: #787f83;
	transition: all 200ms ease-out;
	display: inline-block;
	z-index: 10;
}

#topBtn .icon {
	width: 100%;
	height: 100%;
	color: #787f83;
	cursor: pointer;
}

/* 클리어 */
.clear {
	clear: both;
}
</style>
</head>
<body>
	<div id="headerbox">
		<div id="menubox">
			<a href="index.jsp">
				<img src="./images/main logo sm.png" id="logoImage" width="138" height="138" alt="메인 로고 사진">
			</a>
			<div id="memberbox">
				<a href="index.jsp">회원가입</a> | <a href="index.jsp">로그인</a>
			</div>
			<div id="navbarbox">
				<div id="dropdownbox">
					<button id="dropbtn" value="강아지 식품">사료</button>
					<div id="dropdown-content">
						<a href="index.jsp">퍼피</a>
						<a href="index.jsp">어덜트<br>(전연령)</a>
						<a href="index.jsp">시니어</a>
					</div>
				</div>
				<div id="dropdownbox">
					<button id="dropbtn" value="강아지 식품">간식</button>
					<div id="dropdown-content">
						<a href="index.jsp">개껌</a>
						<a href="index.jsp">일반간식</a>
					</div>
				</div>
				<a href="index.jsp">영양제</a>
				<a id="a2" href="index.jsp">고객 후기</a>
				<a id="a3" href="index.jsp">고객 센터</a>

			</div>
			<div id="searchbox">
				<form action="https://www.google.com/search" method="GET">
					<input type="text" id="search" placeholder="검색어를 입력해주세요.">
					<button type="submit" id="searchBtn" alt="검색 버튼">
						<img src="./images/searchIcon.png" width="24px" height="24px">
					</button>
				</form>
			</div>
		</div>
	</div>
	<div id="wrap">
		<div class="container">
			<div id="carouselExampleRide" class="carousel slide" data-bs-ride="true">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="./images/Carousel_Img1.png" class="d-block w-100" alt="캐러셀 이미지1">
			    </div>
			    <div class="carousel-item">
			      <img src="./images/Carousel_Img2.png" class="d-block w-100" alt="캐러셀 이미지2">
			    </div>
			    <div class="carousel-item">
			      <img src="./images/Carousel_Img3.png" class="d-block w-100" alt="캐러셀 이미지3">
			    </div>
			    <div class="carousel-item">
			      <img src="./images/Carousel_Img4.png" class="d-block w-100" alt="캐러셀 이미지4">
			    </div>
			    <div class="carousel-item">
			      <img src="./images/Carousel_Img5.png" class="d-block w-100" alt="캐러셀 이미지5">
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
		<div id="topBtn">
			<span class="fonti um-arrow-circle-up um-3x icon"></span>TOP
		</div>
	</div>
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