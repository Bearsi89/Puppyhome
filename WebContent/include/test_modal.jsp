<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
-->
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<title> </title>
<link rel="stylesheet" type="text/css" href="">
<style type="text/css">
#modal {
  display: none;
  position:relative;
  width:100%;
  height:100%;
  z-index:1;
}

#modal h2 {
  margin:0;   
}

#modal button {
  display:inline-block;
  width:100px;
  margin-left:calc(100% - 100px - 10px);
}

#modal .modal_content {
  width:300px;
  margin:100px auto;
  padding:20px 10px;
  background:#fff;
  border:2px solid #666;
}

#modal .modal_layer {
  position:fixed;
  top:0;
  left:0;
  width:100%;
  height:100%;
  background:rgba(0, 0, 0, 0.5);
  z-index:-1;
}   
</style>
</head>
<body>
	<div id="root">
   
    <button type="button" id="modal_opne_btn">모달 창 열기</button>
       
</div>

<div id="modal">
   
    <div class="modal_content">
        <h2>모달 창</h2>
       
        <p>모달 창 입니다.</p>
       
        <button type="button" id="modal_close_btn">모달 창 닫기</button>
       
    </div>
   
    <div class="modal_layer"></div>
</div>
<script>	
	document.getElementById("modal_opne_btn").onclick = function() {
	    document.getElementById("modal").style.display="block";
	}
	
	document.getElementById("modal_close_btn").onclick = function() {
	    document.getElementById("modal").style.display="none";
	}   
</script>
</body>
</html>