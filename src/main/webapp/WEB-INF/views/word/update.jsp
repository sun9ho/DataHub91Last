<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@include file="/WEB-INF/views/layout/header_main.jsp"%> --%>
<!DOCTYPE html>
<html>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://www.cssscript.com/demo/sticky.css" rel="stylesheet"	type="text/css">
<link	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap"	rel="stylesheet" />
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
 <link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"	rel="stylesheet" />
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		 <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header_main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/wordupdate.css">
<head>

<script>
$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').trigger('focus')
	})
</script>
</head>
<body style="overflow:hidden;">
<%@include file="/WEB-INF/views/layout/header_main.jsp"%>
<%@include file="/WEB-INF/views/layout/nav.jsp"%>

	
<!-- 메인 바디 부분 -->
<div class="bodycontainer">
	<div class="containermain">
			<h2>U&nbsp;P&nbsp;D&nbsp;A&nbsp;T&nbsp;E</h2>
			
<!-- update form -->		
<div class="up-form">
	
	<div class="form">
  <div class="form-toggle"></div>
  <div class="form-panel one">
    <div class="form-header">
      <h1>Update</h1>
    </div>
    <div class="form-content">
    
    <form action="<c:url value='/word/update'/>" method="post">
     <!--  <form> -->
      <div class="form-group-left">
        <div class="form-group">
          <label for="password">단어 번호</label>
          <input type="text" id="wordNo" name="wordNo" value="${word.wordNo}" readonly/>
        </div>
        
        <div class="form-group">
          <label for="password">단어영문약어명</label>
          <input type="text" id="wordEngAbbn" name="wordEngAbbn" value="${word.wordEngAbbn}" />
        </div>
        <div class="form-group">
          <label for="password">등록자</label>
          <input type="text" id="regId" name="regId" value="${word.regId}" />
        </div>
        <div class="form-group">
          <label for="password">수정자</label>
          <input type="text" id="mdfcnId" name="mdfcnId" value="${word.mdfcnId}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">승인상태</label>
          <input type="text" id="aprvStts" name="aprvStts" value="${word.aprvStts}" />
        </div>
        <div class="form-group-des">
          <label for="password">단어 설명</label>
          <input type="text" id="wordExpln" name="wordExpln" value="${word.wordExpln}" />
        </div>
       </div>
       
        <div class="form-group-right">
        
        <div class="form-group">
          <label for="username">단어명</label>
          <input type="text" id="wordNm" name="wordNm" value="${word.wordNm}" />
        </div>
        <div class="form-group">
          <label for="password">단어영문명</label>
          <input type="text" id="wordEngNm" name="wordEngNm" value="${word.wordEngNm}" />
        </div>
        <div class="form-group">
          <label for="password">등록일</label>
          <input type="text" id="regDt" name="regDt" value="${word.regDt}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">수정일</label>
          <input type="text" id="mdfcnDt" name="mdfcnDt" value="${word.mdfcnDt}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">삭제여부</label>
          <input type="text" id="delYn" name="delYn" value="${word.delYn}" readonly/>
        </div>
             
        <input type="hidden" name="wordNo" value="${word.wordNo}">
        
        <%-- <a href="<c:url value='/word/update?wordno=${word.wordNo}'/>"> --%>
        </div>
        <div class="form-group">
          <label class="form-remember">
            &nbsp;
            </label>
        </div>,m
        <div class="form-group">
        <div class="btn_mdfcn">
        <button type="submit" class="btn btn-primary">수정</button>
        </div>
        </div>
        </form>  
          <div class="form-group">
          
          <form action="<c:url value='/worddelete/wordNo=${word.wordNo}'/>" method="post">

		  <input type="hidden" name="wordNo" value="${word.wordNo}">
          <div class="btn_remove">          
		  </div>		  
		</form>
          
        </div>
        
       
      <!-- </form> -->
    </div>
  </div>
  <!-- hide form -->
  <div class="form-panel two">
    
     <!--  </form> -->
    </div>
  </div>
</div>
	
</div><!-- up-form -->

	</div>
<!-- bodycontainer -->
<%@include file="/WEB-INF/views/layout/footer.jsp"%>
</body>
</html>

<script>
$(function () {
	  $('[data-toggle="popover"]').popover()
	})
</script>


<!-- 사이드바 자바스크립트  -->
<script>
const shrink_btn = document.querySelector(".shrink-btn");
const search = document.querySelector(".search");
const sidebar_links = document.querySelectorAll(".sidebar-links a");
const active_tab = document.querySelector(".active-tab");
const shortcuts = document.querySelector(".sidebar-links h4");
const tooltip_elements = document.querySelectorAll(".tooltip-element");

let activeIndex;

shrink_btn.addEventListener("click", () => {
  document.body.classList.toggle("shrink");
  setTimeout(moveActiveTab, 400);

  shrink_btn.classList.add("hovered");

  setTimeout(() => {
    shrink_btn.classList.remove("hovered");
  }, 500);
});

search.addEventListener("click", () => {
  document.body.classList.remove("shrink");
  search.lastElementChild.focus();
});

function moveActiveTab() {
  let topPosition = activeIndex * 58 + 2.5;

  if (activeIndex > 3) {
    topPosition += shortcuts.clientHeight;
  }

  active_tab.style.top = `${topPosition}px`;
}

function changeLink() {
  sidebar_links.forEach((sideLink) => sideLink.classList.remove("active"));
  this.classList.add("active");

  activeIndex = this.dataset.active;

  moveActiveTab();
}

sidebar_links.forEach((link) => link.addEventListener("click", changeLink));

function showTooltip() {
  let tooltip = this.parentNode.lastElementChild;
  let spans = tooltip.children;
  let tooltipIndex = this.dataset.tooltip;

  Array.from(spans).forEach((sp) => sp.classList.remove("show"));
  spans[tooltipIndex].classList.add("show");

  tooltip.style.top = `${(100 / (spans.length * 2)) * (tooltipIndex * 2 + 1)}%`;
}

tooltip_elements.forEach((elem) => {
  elem.addEventListener("mouseover", showTooltip);
});
</script>

<script>
$(".info-item .btn").click(function () {
	  $(".container").toggleClass("log-in");
	});
	$(".container-form .btn").click(function () {
	  $(".container").addClass("active");
	});
</script>
