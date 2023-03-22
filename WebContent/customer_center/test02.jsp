
<!-- CSS -->
<style>
/*   .hidden {
    display: none;
  }
   */
   
tr:not(:first-child):nth-child(even) {
  /* 선택된 행을 제외한 나머지 짝수 행들에 스타일 적용 */
  background-color: lightgray;
}


tr.hidden {
  /* 선택된 행에 스타일 적용 */
  display: none;	
}
</style>

<!-- HTML -->
<table>
  <tr onclick="toggleContent(this);">
    <th>Title 1</th><td>Content 1</td>
  </tr>
  <tr class="hidden">
    <td>Content 1</td><td>Content 1</td>
  </tr>
  <tr onclick="toggleContent(this)">
    <th>Title 2</th><td>Content 1</td>
  </tr>
  <tr class="hidden">
    <td>Content 2</td><td>Content 1</td>
  </tr>
  <tr onclick="toggleContent(this)">
    <th>Title 3</th><td>Content 1</td>
  </tr>
  <tr class="hidden">
    <td>Content 3</td><td>Content 1</td>
  </tr>
</table>

<!-- JavaScript -->
<script>
  function toggleContent(element) {
    // Find the next sibling element
    var content = element.nextElementSibling;
    // Toggle the "hidden" class
    content.classList.toggle("hidden");
    
    var rows = element.parentNode.children;
    
    for (var i = 0; i < rows.length; i++) {
      if (rows[i] !== content && i % 2 === 1) {
        rows[i].classList.add("hidden");
      }
    }

  }		  
  
</script>
