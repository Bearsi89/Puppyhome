<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* .faq-content {
  display: none;
} */
  .hidden {
    display: none;
  }
</style>
<script type="text/javascript">
/*  function toggleRow(row) {
	  var contentRow = row.nextElementSibling;
	
	  
	  if (contentRow.style.display === 'none') {
	    //contentRow.style.display = '';
	    contentRow.classList.toggle("hidden");
	  } else {
	    contentRow.style.display = 'none';
	    contentRow.classList.toggle("hidden");
	  }
	}
 */
 
 	function toggleRow(row) {
		  var contentRow = row.nextElementSibling;
		  var otherRows = document.querySelectorAll('tr:not(:first-child):not(:nth-child(odd))');
		  otherRows.forEach(function(otherRow) {
			    otherRow.style.display = 'none';
			  });
		  
		  
		  if (contentRow.style.display === 'none') {
		    contentRow.style.display = 'table-row';
		    
		  } else {
		    contentRow.style.display = 'none';
		  } 
	
	


</script>
</head>
<body>
<table>
  <tr onclick="toggleRow(this)">
    <td>제목 1</td>
  </tr>
  <tr class="hidden" style="display: none;">
    <td>내용 1</td>
  </tr>
  <tr onclick="toggleRow(this)">
    <td>제목 2</td>
  </tr>
  <tr class="hidden" style="display: none;">
    <td>내용 2</td>
  </tr>
    <tr onclick="toggleRow(this)">
    <td>제목 3</td>
  </tr>
  <tr class="hidden" style="display: none;">
    <td>내용 3</td>
  </tr>
    <tr onclick="toggleRow(this)">
    <td>제목 4</td>
  </tr>
  <tr class="hidden" style="display: none;">
    <td>내용 4</td>
  </tr>
</table>
</body>
</html>