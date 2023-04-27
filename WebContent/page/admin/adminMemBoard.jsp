<%@page import="java.util.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> <%-- CDN 절대링크 --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script> <%-- CDN 절대링크 --%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script> <%-- CDN 절대링크 --%>

<title>PuppyHome 관리자 문의게시판</title>

<link rel="shortcut icon" href="<%=request.getContextPath()%>/images/favicon.ico" type="image/x-icon"> <%-- 파비콘 --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/include/css/header.css"> <%-- header.css --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/include/css/footer.css"> <%-- footer.css --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/admin/css/admin.css"> <%-- admin 계정.css --%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/page/admin/css/adminMemBoard.css"> <%-- adminMemBoard.css --%>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/fontium/css/fontium.css"/>

<%--
	
	// DAO 생성해 DB 연결
	BoardDAO dao = new BoardDAO(application);

	// 검색 조건을 Map에 저장
	Map<String, Object> param = new HashMap<String, Object>();
	String searchField = request.getParameter("seachField");
	String searchWord = request.getParameter("searchWord");
	if(searchWord != null) {
		param.put("searchField", searchField);
		param.put("searchWord", searchWord);
	}

	int totalCount = dao.selectCont(param);
	
	//페이지 처리
	// 1. 전체 페이지 수 
	int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
	int blockPage = Integer.parseInt(application.getInitParameter("POSTS_PER_BLOCK"));
	int totalPage = (int)Math.ceil((double)totalCount / pageSize);
	
	//2. 현재 페이지 확인.
	int pageNum = 1; 
	String pageTemp = request.getParameter("pqgeNum");
	if(pageTemp != null && !pageTemp.equals(""))
		pageNum = Integer.parseInt(pageTemp); // 요청박은 페이지로 수정
	
	//3. 목록에 출력할 게시물 범위 
	int start = (pageNum - 1) * pageSize +1;
	int end = pageNum * pageSize;
	param.put("start", start); param.put("end", end);
	

	List<BoardDTO> boardLists =  dao.selectList(param); //게시물 목록 받기
	dao.close();

--%>

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
	background-color: white;  /* 영역 보기 편하라고 배경색 지정함 : 하얀색 */
}
section {
	height: 2000px; /* UI 개발할 때 각 페이지에 맡게 해당 영역 px수치 수정해야함 */
	/* background-color: rgb(236, 226, 202);  영역 보기 편하라고 배경색 지정함 : 연주황 */
}
/* 클리어 */
.clear {
	clear: both;
}
/* 밑의 영역부터 css시작 */
.container {
	width: 100%;
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
			<jsp:include page="../include/header.jsp"/>
		</header>
		<%-- 본문 영역(ui깨질시 본인이 ui 수정바람..) --%>
		<section>
			<div class="main">
				<div class="adminMainpage">
					<%-- adminMainpage --%>					
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
						  </div>
				</div><%-- adminMainpage 끝--%>
				
				<%-- 고객 게시판 --%>
				<div class="board">
					<h3 align="center">&nbsp;고객 게시판</h3>
					
				<%--검색 테이블 --%>
				<form method="post">
					<table align="center">
						<tr>
							<td align="center">
								<select>
									<option value="#">답변&nbsp;상태</option>
									<option value="#">제목&nbsp;/&nbsp;상품</option>
									<option value="#">작성자</option>
								</select>
								<input type="text" name="searchWord" />
								<input style="border-color: #FC5400; background-color: #FC5400; color: #fff;" type="submit" value="검색" />
							</td>
						</tr>
					</table>
				</form><p> <%-- 검색 테이블 --%>
					
					<%--문의 목록 게시판(boardMember) --%>
					<table class="boardMember">
						<colgroup>
							<col width="300">							
							<col width="300"> 
							<col width="3000">
							<col width="500">
							<col width="500">
						</colgroup>
						
						<tr>
							<th>No</th> <th>답변 대기</th> <th>제목&nbsp;/&nbsp;상품</th> <th>작성자</th> <th>작성일</th> 
						</tr> 
									 
						 <tr>
						 	<td>1</td>
						 	<%-- 문의 게시물이 없을 경우 --%>
							<%--
								if(boardList.isEmpty()) {
							--%>
							
							<%-- <tr>
							
								<td colspan="4" align="center"> 등록된 게시물이 없습니다.</td>
							
							</tr>--%>						
							
							<%-- 문의 게시물이 있을 경우--%>
							<%--
							}else{
								//답변 상태 : 답변 대기 or 답변 완료 
								//답변 작성 전일경우
								String case[] = {"답변대기", "답변완료"};
								if(
						 --%>
						 	
						 	<td><%-- =case --%>답변대기</td>
						 	<td align="left">
						 	<%-- <a href="View.jsp?num=<%-- =dto.getCase() --%><%-- =dto.getTitle()--%> &nbsp;&nbsp;제목 <br><small>&nbsp;&nbsp;상품</small>
						 	</td>
						 	<td align="center"><%-- =dto.getID() --%>작성자</td>
						 	<td align="center"><%-- = dto.getPostdate() --%>작성날짜</td>
						 </tr>
					</table> <%-- end boardMember --%>
					<p>
					
					<%-- 페이징 처리 --%>
					<nav class="pagination-container">
						<div class="pagination">
							<a class="pagination-newer" href="${servlet}product&command=${command}&keyword=${keyword}&category=${category}&pageNo=${pageNo>1?pageNo-1:1}">PREV</a> 
								<span class="pagination-inner"> 
								<c:forEach var='i' begin='1' end='${pageCnt}'>
								<a class="${i==pageNo?'pagination-active':page}" href="${servlet}product&command=${command}&category=${category}&keyword=${keyword}&pageNo=${i}">${i}</a> 
								</c:forEach>
								</span> 
							<a class="pagination-older" href="${servlet}product&command=${command}&keyword=${keyword}&category=${category}&pageNo=${pageNo<pageCnt?pageNo+1:pageCnt}">NEXT</a>
						</div>
					</nav>
					<%-- 페이징처리 끝 --%>
										
				</div> <%-- end board --%>
				
			</div><%-- main 끝 --%>
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