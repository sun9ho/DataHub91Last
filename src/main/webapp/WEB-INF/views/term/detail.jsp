<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"	rel="stylesheet" />
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header_main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">         
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/termdetail.css">
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
			<h2>D&nbsp;E&nbsp;T&nbsp;A&nbsp;I&nbsp;L</h2>
			
			
<!-- update form -->		
		
<div class="up-form">
	
	<div class="form">
  <div class="form-toggle"></div>
  <div class="form-panel one">
    <div class="form-header">
      <h1>Detail</h1>
    </div>
    <div class="form-content">
    
    <form action="<c:url value='/term/update'/>" method="GET">
     <!--  <form> -->
      <div class="form-group-left">
        <div class="form-group">
          <label for="password">용어번호</label>
          <input type="text" id="termNo" name="termNo" value="${term.termNo}" readonly/>
        </div>        
        <div class="form-group">
          <label for="password">용어약어</label>
          <input type="text" id="termEngAbbn" name="termEngAbbn" value="${term.termEngAbbn}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">등록자</label>
          <input type="text" id="regId" name="regId" value="${term.regId}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">수정자</label>
          <input type="text" id="mdfcnId" name="mdfcnId" value="${term.mdfcnId}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">승인상태</label>
          <input type="text" id="aprvStts" name="aprvStts" value="${term.aprvStts}" readonly/>
        </div>
        <div class="form-group-des">
          <label for="password">용어설명</label>
          <input type="text" id="termExpln" name="termExpln" value="${term.termExpln}" readonly/>
        </div>
       </div>
       
        <div class="form-group-right">
        
        <div class="form-group">
          <label for="username">용어명</label>
          <input type="text" id="termNm" name="termNm" value="${term.termNm}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">용어도메인타입</label>
          <input type="text" id="termDnm" name="termDnm" value="${term.termDnm}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">등록일</label>
          <input type="text" id="regDt" name="regDt" value="${term.regDt}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">수정일</label>
          <input type="text" id="mdfcnDt" name="mdfcnDt" value="${term.mdfcnDt}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">삭제여부</label>
          <input type="text" id="delYn" name="delYn" value="${term.delYn}" readonly/>
        </div>
             
        </form>  
        
        
        </div>
        <div class="form-group">
          <label class="form-remember">
            &nbsp;
            </label>
        </div>
        <div class="form-group">
        <div class="btn_mdfcn">
        <a href="<c:url value='/term/update?termno=${term.termNo}'/>"><button type="button" class="btn btn-primary">수정</button></a>
        </div>
        </div>
        
          <div class="form-group">
          
          <form action="<c:url value='/termdelete/termNo=${term.termNo}'/>" method="post">

		  <input type="hidden" name="termNo" value="${term.termNo}">
		  <!-- <button>삭제</button> -->
          <!-- <button id="delete" type="submit">삭제</button> -->
          <div class="btn_remove">
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
  		    삭제
		  </button>     
		  <!-- Modal -->
		  <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  	   <div class="modal-dialog">
		    <div class="modal-content">
		     <div class="modal-header">
		       <h5 class="modal-title" id="staticBackdropLabel">삭제</h5>
		       <button type="button" class="close" data-dismiss="modal" aria-label="Close"
		       	style="max-width:50px; max-height:60px;">
		         <span aria-hidden="true">&times;</span>
		       </button>
		     </div>
		     <div class="modal-body">"${term.termNm}"를 용어테이블에서 삭제하시겠습니까?</div>
		      <div class="modal-footer">
		        <button class="btn btn-primary">확인</button>
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>        
		      </div>
		    </div>
		  </div>
		</div>        
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
