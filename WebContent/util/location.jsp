<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<title>PuppyShop 찾아오시는 길</title>
<link rel="stylesheet" type="text/css" href="">
<link rel="stylesheet" type="text/css" href="../fontium/css/fontium.css"/>
<style type="text/css">
    /* 폰트 CSS */
    @font-face {
        font-family: 'KIMM_Bold';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KIMM_Bold.woff2') format('woff2');
        font-weight: 700;
        font-style: normal;
    }
    /* 메인 컨텐츠 부분 */
    #wrap{
        width: 100%;
        height: 100%;
        text-align: center;
        position: absolute;
        top: 145px;
        z-index: 1;
        margin-bottom: 350px;
    }
    /* 헤더 박스 부분 */
	#headerbox{
		width : 100%;
		height : 145px;
        position: fixed;
        left: 50%;
        transform: translateX( -50% );
        border-bottom: 1px solid lightgray;
        background-color: white;
        z-index: 2;
	}
    /* 로고 이미지 */
    #logoImage{
        position: fixed;
        left: 9%;
        top: 2%;
        transform: translateX( -50% );
    }
    /* 헤더 박스 안의 컨텐츠 */
    #menubox{
        width: 1500px;
        height: 140px;
        position: fixed;
        left: 50%;
        transform: translateX( -50% );
    }
    /* 메뉴바 관련 */
    #navbarbox{
        width: 800px;
        height: 85px;
        position: fixed;
        left: 46%;
        top: 22%;
        transform: translateX( -50% );
    }
    #navbarbox a{
        color: black;
        text-decoration: none;
        font-family: 'KIMM_Bold', sans-serif;
        font-size: larger;
        margin : 0px 28px 0px 28px;
    }
    #navbarbox a:active{
        color: orange;
    }
    #a2{
    	margin-left : 100px;
    }
    /* 드롭박스 관련 */
    #dropbtn{
        background-color: white;
        color: black;
        padding: 16px;
        font-family: 'KIMM_Bold', sans-serif;
        font-size: larger;
        border: none;
        margin-left: 12px;
    }
    #dropbtn:active{
        color: orange;
    }
    #dropdownbox{
        position: relative;
        display: inline-block;
    }
    #dropdown-content {
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        min-width: 170px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
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
    #memberbox{
        width: 196px;
        height: 125px;
        position: fixed;
        right: -3%;
        top: 7%;
    }
    #memberbox a{
        color: black;
        text-decoration: none;
        font-family: 'KIMM_Bold', sans-serif;
        font-size :small;
    }
    #memberbox a:hover{
        color: blue;
    }
    /* 검색창 관련 */
    #searchbox{
        position: fixed;
        right: 0%;
        top: 40%;
        transform: translateX( -10% );
    }
    #search{
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
    #searchBtn{
        width: 32px;
        height: 29px;
        position: fixed;
        right: 0;
        top: 5%;
        transform: translateX( -10% );
        border: none;
        border-radius: 15px;
        padding: 0;
    }
    /* 위로 가기 버튼 관련 */
    #topBtn{
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
    #topBtn .icon{
        width: 100%;
        height: 100%;
        color: #787f83;
        cursor: pointer;
    }
    
    /* 여기부터 다시 */
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
    }
    
    /* 클리어 */
    .clear{
		clear : both;
	}
</style>
</head>
<body>
    <div id="headerbox">
        <div id="menubox">
            <a href="#">
                <img src="../images/main logo sm.png" id="logoImage" width="200" height="125" alt="로고 사진">
            </a>
            <div id="memberbox">
                <a href="#">회원가입</a> | <a href="#">로그인</a> <!-- a태그 링크 변경하여 회원가입/로그인 구현 -->
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
                        <a href="#">개껌</a>
                        <a href="#">일반간식</a>
                    </div>
                </div>
                <a href="#">영양제</a>
                <a id="a2" href="#">고객 센터</a>
                <a id="a3" href="#">찾아오시는 길</a>

            </div>
            <div id="searchbox">
                <form action="https://www.google.com/search" method="GET">
                    <input type="text" id="search" placeholder="검색어를 입력해주세요.">
                    <button type="submit" id="searchBtn" alt="검색 버튼">
                        <img src="../images/searchIcon.png" width="24px" height="24px">
                    </button>
                </form>
            </div>
        </div>
    </div>
    <div id="wrap">
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
    	    <%-- Footer include --%>
	    <jsp:include page="../include/test_footer.jsp" flush="false" />
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a1c73e14fd9957535919d44fb5caf4da"></script>
    <script type="text/javascript">
        // 클릭 이벤트 핸들러
        $("#topBtn").click(function(e){
            e.stopPropagation();
            $("html, body").animate({scrollTop : 0}, 'fast', 'easeOutCubic');
        });

        // 스크롤 이벤트 핸들러
        $(window).scroll(function(){
            if($(window).scrollTop()==0) {
                $("#topBtn").css("opacity", 0); // TOP 버튼 숨기기
            } else {
                $("#topBtn").css("opacity", 1); // TOP 버튼 나타내기
            }
        });
        
        // 카카오 지도
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
    </script>
</body>
</html>