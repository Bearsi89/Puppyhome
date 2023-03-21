<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../include/header.jsp" />
<link rel="stylesheet" href="../css/customer_center.css">


<section class="notice">

<div>
 <ul id="cs_faq_list">
  <li><a href="notice.jsp">공지사항</a></li>
  <li><a href="FAQ.jsp">FAQ</a></li>
  <li><a href="contact.jsp">1:1문의</a></li>
 </ul>
 <hr id="label_hr">
</div>
    
<div>
 <ul id="label">
  <li><a>로그인/정보</a></li>
  <li><a>상품</a></li>
  <li><a>주문/결제</a></li>
  <li><a>배송문의</a></li>
  <li><a>교환/취소(반품)</a></li>
 </ul>
</div>
<br>

   
  <!-- board list area -->
    <div id="board-list">
        <div class="container">
            <table class="board-table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">구분</th>
                    <th scope="col" class="th-title">제목</th>
                    <!-- <th scope="col" class="th-date">등록일</th> -->
                </tr>
                </thead>
                <tbody>
                
                <tr>
                    <td>배송문의</td>
                    <th><a href="#">배송지를 잘못 입력했어요. 어떻게 해야 할까요?</a></th>
                    
                </tr>
                <tr>
                    <td>상품문의</td>
                    <th><a href="#">재고가 없어요. 언제쯤 입고 될까요?</a></th>
                    
                </tr>
                <tr>
                    <td>상품문의</td>
                    <th>
                      <a href="#">구매했을때 보다 가격이 떨어졌어요. 차액 환불 되나요?</a>
                      <p>테스트</p>
                    </th>
                    
                </tr>

                <tr>
                    <td>로그인/정보</td>
                    <th><a href="#">개인정보 수정은 어디서 하나요?</a></th>
                   
                </tr>

                <tr>
                    <td>로그인/정보</td>
                    <th><a href="#">아이디와 비번이 기억나지 않아요.</a></th>
                    
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</section>




<jsp:include page="../include/footer.jsp" />