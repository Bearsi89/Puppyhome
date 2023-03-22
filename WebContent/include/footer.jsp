<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script src="../js/jquery.easing.min.js"></script> <!-- 위치마다 . or .. 수정해줘야함 -->
<title>Footer</title>
<link rel="stylesheet" type="text/css" href="../css/footer.css">
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
}

</style>
</head>
<body>
	<!-- footer -->
	<div id="footerbox">
		<div id="innerbox">
            <div id="categorybox">
                <ul>
                    <li><a href="javascript:void(0);" onclick="openPopup_service();">서비스 이용약관</a></li>
                    <li><a href="javascript:void(0);" onclick="openPopup_privacy();">개인정보 처리방침</a></li>
                    <li><a data-bs-toggle="modal" data-bs-target="#exampleModal" href="#">입점/제휴 문의</a></li>
                    <li><a href="<%=request.getContextPath()%>/util/company_introduce.jsp" target="_blank">회사소개</a></li>
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
	
	<!-- '입점/제휴 문의' 텍스트 클릭시 모달 창 열기 -->
	<div class="modal fade" id="exampleModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	      	<div class="modal-titleBox">
	      		<span id="inquiry_title">입점 제휴 문의 안내</span><br>
	      		<div class="inquiry_dateBox">
	      			<span id="inquiry_date">&nbsp;&nbsp;2023.02.27</span>
	      		</div>
	      		<div class="inquiry_downloadBox">
	      			<div class="inquiry_downloadBox2">
	      				<img src="../images/attach.png" id="attachIcon" alt="첨부 파일">
	      				<a id="inquiry_xlsx" href="../file/(제휴종류)입점 및 제휴 제안서_업체명.xlsx" download>[제휴종류]입점 및 제휴 제안서_업체명.xlsx</a>
	      			</div>
	      		</div>
	      	</div>
	        <button type="button" id="inquiry_closeBtn" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        &nbsp;&nbsp;입점 및 제휴 문의는 온라인 접수를 통해서만 가능합니다.<br>
			&nbsp;&nbsp;입점, 마케팅 등 파트너십 관련 문의는 아래 메일을 통해 연락주세요.<br><br>
			&nbsp;&nbsp;입점 제휴 신청은 아래의 과정으로 진행됩니다.<br><br>
			&nbsp;&nbsp;<strong>1. 제휴 신청서 접수</strong><br>
			&nbsp;&nbsp;입점 및 제휴 제안서를 작성하신 후 아래 메일로 보내주세요.<br>​
			<ul>
				<li>상품 입점 문의 : md@puppyhome.co.kr</li>
				<li>마케팅 제휴 문의 : marketing@puppyhome.co.kr</li>
				<li>오픈팜 도매 및 B2B 사업자 전용 쇼핑몰 가입 문의 : bizsales@puppyhome.co.kr</li>
			</ul>
			&nbsp;&nbsp;메일 제목은 아래와 같이 통일해주시면 보다 빠른 처리가 가능합니다.<br>
			&nbsp;&nbsp;<strong>[제휴종류]입점 및 제휴 제안서_업체명</strong><br><br>
			&nbsp;&nbsp;<strong>2. 제휴 신청서 검토</strong><br>
			&nbsp;&nbsp;담당자가 접수된 신청서를 검토하고 연락드립니다.<br><br>
			&nbsp;&nbsp;<strong>3. 계약 체결 및 판매</strong><br>
			&nbsp;&nbsp;상품 진행이 확정되면 계약을 체결하고 상품 판매가 가능합니다.
	      </div>
	    </div>
	  </div>
	</div>
	<!-- '입점/제휴 문의' 모달 끝 -->
<script type="text/javascript">

<%-- footer 부분 --%>
// 서비스 이용약관 텍스트 클릭시 새창 열기
function openPopup_service() {
    var page_width = '525';
    var page_height = '620';

    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
    var page_left = Math.ceil((window.screen.width - page_width)/2);
    var page_top = Math.ceil((window.screen.height - page_height)/2);

window.open("<%=request.getContextPath()%>/util/service.jsp", "certificate",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);

}

// 개인정보 처리 텍스트 클릭시 새창 열기
function openPopup_privacy() {
    var page_width = '525';
    var page_height = '555';

    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
    var page_left = Math.ceil((window.screen.width - page_width)/2);
    var page_top = Math.ceil((window.screen.height - page_height)/2);

window.open("<%=request.getContextPath()%>/util/privacy.jsp", "certificate",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);

}

// 인증 마크 클릭시 새창 열기
function openPopup_certificate() {
    var page_width = '510';
    var page_height = '390';

    // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
    var page_left = Math.ceil((window.screen.width - page_width)/2);
    var page_top = Math.ceil((window.screen.height - page_height)/2);

window.open("<%=request.getContextPath()%>/util/certificate.jsp", "certificate",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);

}
    
</script>
</body>
</html>