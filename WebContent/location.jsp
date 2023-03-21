<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> <%-- CDN 절대링크 --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script> <%-- CDN 절대링크 --%>
<title>PuppyHome 찾아오시는길</title>
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
	.wrap {
		margin-top: -110px;
	}
	.main { 
		width: 1400px;
		position : relative;
		top: 105px;
		left: 50%;
        transform: translateX( -50% );
		margin-bottom: 350px;
	}
	section {
		height: 100%;
	}
	/* 클리어 */
	.clear {
		clear: both;
	}
	/* 밑의 영역부터 css시작 */
	/* 카카오맵 ui */
    .wrapheaderBox {
    	margin-top: 80px;
    }
    
    .wraptitleBox {
    	margin: 30px 0px 30px 0px;
    }
    
    .wraptitleBox p{
    	font-size: 20px;
    	font-weight: bold;
    	color: rgb(254, 191, 20);
    }
    
    .kakaoMap {
    	position: relative;
        left: 50%;
        transform: translateX( -50% );
        z-index: 2;
        margin-bottom: 200px;
    }
</style>
</head>
<body>
	<%-- 전체 영역 --%>
	<div class="wrap">
		<%-- 헤더 영역 --%>
		<header>
			<%-- header include --%>
			<jsp:include page="include/header.jsp"/>
		</header>
		<%-- 본문 영역(ui깨질시 본인이 ui 수정바람..) --%>
		<section>
			<div class="main">
		    	<div class="wrapheaderBox">
		    		<h1>PuppyHome 위치 안내</h1>
		    	</div>
		    	<div class="wraptitleBox">
		    		<p>
			    		|<br> [ PuppyHome 위치 안내입니다. ] <br> |
		    		</p>
		    	</div>
				<div class="kakaoMap" id="map" style="width:1100px; height:620px;">
				</div>
			</div>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a1c73e14fd9957535919d44fb5caf4da"></script>
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
                    <li><a href="http://localhost:8046/Shopping_Mall/util/company_introduce.jsp" target="_blank">회사소개</a></li>
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
		<%-- 카카오맵 부분 --%>
        // 카카오 지도
        /*global kakao*/
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
		    mapOption = {
		        center: new kakao.maps.LatLng(37.4966703564534, 127.03003244234769), // 지도의 중심좌표
		        level: 4 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(37.4966703564534, 127.03003244234769);
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		var iwContent = '<div style="padding:5px;"><strong>Puppy Home!</strong><br><a href="https://map.kakao.com/link/map/Puppy Home!!,37.4966703564534, 127.03003244234769" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Puppy Home!,37.4966703564534, 127.03003244234769" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwPosition = new kakao.maps.LatLng(37.4966703564534, 127.03003244234769); //인포윈도우 표시 위치입니다
		
		// 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
		    position : iwPosition,
		    content : iwContent
		});
		  
		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
		infowindow.open(map, marker);
		
		<%-- footer 부분 --%>
		// 서비스 이용약관 텍스트 클릭시 새창 열기
		function openPopup_service() {
	        var page_width = '525';
	        var page_height = '650';
	    
	        // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	        var page_left = Math.ceil((window.screen.width - page_width)/2);
	        var page_top = Math.ceil((window.screen.height - page_height)/2);
	
	    window.open("http://localhost:8046/Shopping_Mall/util/service.jsp", "service",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);
	    
	    }
	    
		// 개인정보 처리 텍스트 클릭시 새창 열기
		function openPopup_privacy() {
	        var page_width = '525';
	        var page_height = '555';
	    
	        // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	        var page_left = Math.ceil((window.screen.width - page_width)/2);
	        var page_top = Math.ceil((window.screen.height - page_height)/2);
	
	    window.open("http://localhost:8046/Shopping_Mall/util/privacy.jsp", "privacy",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);
	    
	    }
		
		// 입점/제휴 문의 텍스트 클릭시 새창 열기
		function openPopup_inquiry() {
	        var page_width = '525';
	        var page_height = '555';
	    
	        // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	        var page_left = Math.ceil((window.screen.width - page_width)/2);
	        var page_top = Math.ceil((window.screen.height - page_height)/2);
	
	    window.open("http://localhost:8046/Shopping_Mall/util/inquiry.jsp", "inquiry",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);
	    
	    }
		
		// 인증 마크 클릭시 새창 열기
	    function openPopup_certificate() {
	        var page_width = '460';
	        var page_height = '380';
	    
	        // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
	        var page_left = Math.ceil((window.screen.width - page_width)/2);
	        var page_top = Math.ceil((window.screen.height - page_height)/2);
	
	    window.open("http://localhost:8046/Shopping_Mall/util/certificate.jsp", "certificate",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);
	    
	    }
	</script>
</body>
</html>