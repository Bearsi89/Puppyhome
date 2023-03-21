<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<title>Test Main2</title>
<link rel="stylesheet" type="text/css" href="">
<style type="text/css">
    /* 폰트 CSS */
    @font-face {
        font-family: 'KIMM_Bold';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2212@1.0/KIMM_Bold.woff2') format('woff2');
        font-weight: 700;
        font-style: normal;
    }
    html, body {
    	height: 100%;
    }
    /* 메인 컨텐츠 부분 */
    .wrap{
        width: 100%;
        height: 100%;
    }
    .container {
    	width: 1400px;
    	height: 1000px;
    	position: relative;
        top: 105px;
    }
    
    * {
    	border: 1px solid black;
    }
    /* 클리어 */
    .clear{
		clear : both;
	}
</style>
</head>
<body>
	<div class="wrap">
	    <header>
	    	<%-- Header include --%>
	    	<jsp:include page="./include/test_header.jsp" flush="false" />
    	</header>
	    <div class="content">
	    	<div class="container">
		        <div id="topBtn">
		            <span class="fonti um-arrow-circle-up um-3x icon"></span>TOP
		        </div>
	        </div>
	    </div>
    </div>
    <footer>
	    <%-- Footer include --%>
	    <%@ include file="./include/test_footer.jsp" %>
	</footer>
<script type="text/javascript">
	
</script>
</body>
</html>