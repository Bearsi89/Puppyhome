<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<title>Test Footer</title>
<style type="text/css">
	/* 폰트 CSS */
	@font-face {
		font-family: 'KIMM_Bold';
		src:url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KIMM_Bold.woff2') format('woff2');
		font-weight: 700;
		font-style: normal;
	}
	
	/* 푸터 박스 부분 */
	#footerbox {
		width: 100%;
		height: 200px;
	    font-size: x-small;
	    font-family: 'KIMM_Bold', sans-serif;
	    background-color: rgb(241, 241, 241);
	}
	
	/* 푸터 박스 안의 틀 */
	#innerbox {
	    width: 1300px;
	    height: 180px;
	    margin: auto;
	}
	
	/* 푸터 카테고리 관련 */
	#categorybox {
	    height: 30px;
	    float: left;
	    margin: 40px 0px 15px 0px;
	}
	
	#categorybox ul {
	    padding: 0;
	}
	
	#categorybox li {
	    list-style: none;
	    list-style-type: none;
	    float: left;
	    margin-right: 30px;
	}
	
	#categorybox a {
	    font-size: 12.5px;
	    text-decoration: none;
	    color: black;
	}
	
	/* 푸터 안내글 부분 */
	#infobox {
	    width: 1100px;
	    height: 65px;
	    float: left;
	}
	
	/* 나이스페이 마크 관련 */
	#checkbox {
	    width: 65px;
	    height: 65px;
	    text-align: center;
	    float: right;
	    margin-right: 30px;
	}
	
	input#checkIcon {
	    background-image: url(./images/nicepay.png);
	    background-color: transparent;
	    background-repeat: no-repeat;
	    background-position: 0px 0px;
	    border: none;
	    cursor: pointer;
	    width: 55px;
	    height: 64px;
	}
	
	/* 모달 설정 관련 */
	/* 입점/제휴 문의 모달 관련*/
	/* 입점/제휴 문의 모달 창 크기 */
	.modal-content {
		width: 560px;
		height: 630px;
	}
	
	.modal-titleBox {
		width: 100%;
		height: 120px;
	}
	
	/* 입점/제휴 문의 모달 창 제목 */
	#inquiry_title {
		font-weight: bolder;
		font-size: 22px;
		margin-left: 155px;
	}
	
	.modal-body {
		font-size: 13px;
		font-weight: 500;
	}
	
	#inquiry_closeBtn {
		margin-bottom: 60px;
	}
	.inquiry_dateBox {
		margin-bottom: 10px;
	}
	
	#inquiry_date {
		color: rgb(162, 160, 160);
	}
	.inquiry_downloadBox {
		width: 100%;
		height: 50px;
		border: 1px solid rgb(162, 160, 160);
		border-radius: 5px;
		margin-left: 10px;
	}
	.inquiry_downloadBox2 {
		margin-top: 10px;
	}
	#inquiry_xlsx {
		color: black;
		text-decoration: none;
	}
	#inquiry_xlsx:hover {
		text-decoration: underline;
	}
	#attachIcon {
		margin-left: 15px;
	}
	#exampleModalLong {
		overflow-y: auto;
	}
	
	/* 실험용 모달 */
	.popup {
		width: 558px;
		height: 807px;
		background: #fff;
		border-radius: 7px;
		position: fixed;
		top: 2.5%;
	    left: 51.85%;
	    transform: translate(-50%, 0);
		display:none;
		}
	
	.popup .close {
		float:right
	}
	
	/* 개인정보 처리방침 모달 관련 */
	.privacy_modal {
	  display: none;
	  	width: 563px;
		height: 640px;
		background: #fff;
		border-radius: 7px;
		float: left;
		position: fixed;
		top: 2.5%;
	    left: 51.85%;
	    transform: translate(-50%, 0);
	}
	.privacy_modal-titleBox {
		width: 100%;
		height: 120px;
		margin-top: 15px;
	}
	/* 개인정보 처리방침 모달 창 제목 */
	#privacy_title {
		font-weight: bolder;
		font-size: 22px;
		margin-left: 180px;
	}
	.privacy_downloadBox {
		width: 502px;
		height: 50px;
		border: 1px solid rgb(162, 160, 160);
		border-radius: 5px;
		margin-top: 20px;
		margin-left: 27px;
	}
	.privacy_modal-body {
		font-size: 13px;
		font-weight: 500;
	}
	.privacy_closeBox {
		position: fixed;
		top: 3.5%;
		right: 1.7%;
		padding: 0px;
	}
	.privacy_dateBox {
		margin: 12px 0px 10px 0px;
	}
	
	#privacy_date {
		margin: 20px 0px 0px 10px;
		color: rgb(162, 160, 160);
	}
	#privacy_closeBtn {
		border: none;
		padding: 0px;
		width: 26px;
		height: 26px;
	}
	#privacy_closeImg {
		width: 27px;
		height: 27px;
	}
	
	/* 클리어 */
	.clear {
		clear: both;
	}
</style>
</head>
<body>
	<!-- footer -->
	<footer>
		<div id="footerbox">
			<div id="innerbox">
	            <div id="categorybox">
	                <ul>
	                    <li><a href="javascript:openModal('service_modal');">서비스 이용약관</a></li>
	                    <li><a href="javascript:openModal('privacy_modal');" id="btn-modal">개인정보 처리방침</a></li>
	                    <li><a data-bs-toggle="modal" data-bs-target="#exampleModal" href="#">입점/제휴 문의</a></li>
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
	</footer>
	<!-- footer 끝 -->
	
	<!-- 밑의 카테고리(모달) 부분 -->
	<!-- '서비스 이용약관' 텍스트 클릭시 모달 창 열기 -->
	
	
	<!-- '개인정보 처리방침' 텍스트 클릭시 모달 창 열기 -->
	    <div class="privacy_modal" id="privacy_modal">
	        <div class="privacy_modal-content">
	            <div class="privacy_modal-header">
	            	<div class="privacy_modal-titleBox">
		      		<span id="privacy_title">개인정보 처리 방침</span><br>
		      		<div class="privacy_downloadBox">
		      			<div class="privacy_dateBox">
							<span id="privacy_date">현행 시행일자 : 2023년 03월 10일</span>
		      			</div>
		      		</div>
		      	</div>
	            </div>
	            <div class="privacy_closeBox">
	                <a href="#none" class="privacy_close">
	   					<button type="button" id="privacy_closeBtn">
		        			<img src="../images/X.png" id="privacy_closeImg"alt="모달 닫기">
		        		</button>
		    		</a>
		    	</div>
	            <div class="privacy_modal-body">
					&nbsp;&nbsp;(주)어바웃펫은 이용자의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게<br>
					&nbsp;&nbsp;처리할 수 있도록 다음과 같이 개인정보 처리방침을 수립·공개하며, 본 개인정보 처리방침을<br>
					&nbsp;&nbsp;홈페이지 첫 화면에 공개함으로써 이용자들이 언제나 용이하게 보실 수 있도록 조치하고<br>
					&nbsp;&nbsp;있습니다. 개인정보 처리방침은 정부의 법률 및 지침 변경이나 회사의 내부 방침 변경 등으로<br>
					&nbsp;&nbsp;인하여 수시로 변경될 수 있고, 이에 따른 개인정보 처리방침의 지속적인 개선을 위하여<br>
					&nbsp;&nbsp;필요한 절차를 정하고 있습니다. 이용자들께서는 사이트 방문 시 수시로 확인하시기 바랍니다.<br><br>
					&nbsp;&nbsp;(주)어바웃펫의 개인정보 처리방침은 다음과 같은 내용을 담고 있습니다.<br><br>
					&nbsp;&nbsp;1. 개인정보 수집에 대한 동의<br>
					&nbsp;&nbsp;2. 수집하는 개인정보 항목 및 수집방법<br>
					&nbsp;&nbsp;3. 개인정보의 수집 및 이용목적<br>
					&nbsp;&nbsp;4. 수집하는 개인정보의 보유 및 이용기간<br>
					&nbsp;&nbsp;5. 개인정보의 파기 절차 및 방법<br>
					&nbsp;&nbsp;6. 수집한 개인정보의 공유 및 제공<br>
					&nbsp;&nbsp;7. 이용자 자신의 개인정보 관리(열람,정정,삭제 등)에 관한 사항<br>
					&nbsp;&nbsp;8. 쿠키(Cookie)의 운용 및 거부<br>
					&nbsp;&nbsp;9. 개인정보의 제3자 제공<br>
					&nbsp;&nbsp;10. 개인정보의 처리 위탁<br>
					&nbsp;&nbsp;11. 개인정보보호를 위한 기술적/관리적 대책<br>
					&nbsp;&nbsp;12. 개인정보 관련 의견수렴 및 불만처리에 관한 사항<br>
					&nbsp;&nbsp;13. 개인정보 보호책임자 및 담당자의 소속-성명 및 연락처<br>
					&nbsp;&nbsp;14. 이용자 및 법정대리인의 권리와 그 행사방법<br>
					&nbsp;&nbsp;15. 권익침해 구제방법<br>
					&nbsp;&nbsp;16. 고지의 의무<br>
	            </div>
	        </div>
	    </div>
	<!-- '개인정보 처리방침'모달 끝 -->
	
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
	      				<img src="./images/attach.png" id="attachIcon" alt="첨부 파일">
	      				<a id="inquiry_xlsx" href="./file/(제휴종류)입점 및 제휴 제안서_업체명.xlsx" download>[제휴종류]입점 및 제휴 제안서_업체명.xlsx</a>
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

    // 인증 마크 클릭시 새창 열기
    function openPopup_certificate() {
        var page_width = '510';
        var page_height = '390';
    
        // 팝업을 가운데 위치시키기 위해 아래와 같이 값 구하기
        var page_left = Math.ceil((window.screen.width - page_width)/2);
        var page_top = Math.ceil((window.screen.height - page_height)/2);

    window.open("http://localhost:8046/Shopping_Mall/util/certificate.jsp", "certificate",'width='+ page_width +', height='+ page_height +', left=' + page_left + ', top='+ page_top);
    
    }
    
    // 서비스 이용약관 모달 구현
    
    // 개인정보 처리방침 모달 구현
	const modal2 = document.getElementById("privacy_modal");
	
	function modalOn() { // 모달 고정
	    modal2.style.display = "flex"
	};
	
	function isModalOn() { // 모달 열기
	    return modal2.style.display === "flex"
	};
	
	function modalOff() { // 모달 닫기
	    modal2.style.display = "none"
	};
	
	
	const btnModal2 = document.getElementById("btn-modal");
	
	btnModal2.addEventListener("click", e => {
		$('body').css("overflow", "hidden");
		$('body').css("background-color", "rgba(0, 0, 0, 0.5)");
	    modalOn();
	});
	
	const closeBtn2 = modal2.querySelector(".privacy_close");
	
	closeBtn2.addEventListener("click", e => {
		$('body').css("overflow", "scroll");
		$('body').css("background-color", "white");
	    modalOff();
	});
    
</script>
</body>
</html>