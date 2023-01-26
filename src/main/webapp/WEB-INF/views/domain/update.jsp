<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@include file="/WEB-INF/views/layout/header_main.jsp"%> --%>
<!DOCTYPE html>
<html>
<!-- jQuery 라이브러리 -->
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css"> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script> -->
<!-- <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script> -->

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

<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> -->
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script> -->
		
		 <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>

<!-- <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous"> -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header_main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/domainupdate.css">
<head>

<style>
<%-- <%@include file="/resources/css/update2.css"%> --%>
</style>
<script>
$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').trigger('focus')
	})
</script>
</head>
<body style="overflow:hidden;">
<%@include file="/WEB-INF/views/layout/header_main.jsp"%>

<!-- 사이드바 메뉴 -->
<div class="nav-side">
<nav>
  <div class="sidebar-top">
    <span class="shrink-btn">
    <i class='bx bx-chevron-left'></i>
    </span>
    <img src="resources/images/logoicon.png" class="logo" alt="">
    <h3 class="hide"><a href="<c:url value='/'/>" style="text-decoration:none">DataHub</a></h3>
  </div>
  <div class="search">
    <!-- <i class='bx bx-home nav__icon'></i> -->
    <!-- <input type="text" class="hide" placeholder="Quick Search ..."> -->
    <!-- <span class="link hide">Home</span> -->
    <h4 class="hide">Home</h4>
  </div>
  <div class="sidebar-links">
    <ul>
      <div class="active-tab"></div>
      <li class="tooltip-element" data-tooltip="0">
        <a href="<c:url value='/word'/>" class="active" data-active="0">
          <div class="icon">
          <i class='bx bx-folder'></i>
           <i class='bx bxs-folder'></i>
          </div>
          <span class="link hide">Word</span>
        </a>
      </li>
      <li class="tooltip-element" data-tooltip="1">
        <a href="<c:url value='/domain'/>" data-active="1">
          <div class="icon">
          <i class='bx bxl-dailymotion' ></i>
          <i class='bx bxls-dailymotion' ></i>
          </div>
          <span class="link hide">Domain</span>
        </a>
      </li>
      <li class="tooltip-element" data-tooltip="2">
        <a href="<c:url value='/term'/>" data-active="2">
          <div class="icon">
            <i class='bx bx-text'></i>
            <i class='bx bxs-text'></i>
          </div>
          <span class="link hide">Term</span>
        </a>
      </li>
<!--       <li class="tooltip-element" data-tooltip="3">
        <a href="#" data-active="3">
          <div class="icon">
            <i class='bx bx-bar-chart-square'></i>
            <i class='bx bxs-bar-chart-square'></i>
          </div>
          <span class="link hide">Analytics</span>
        </a>
      </li> -->
      <div class="tooltip">
        <span class="show">Word</span>
        <span>Domain</span>
        <span>Term</span>
        <!-- <span>Analytics</span> -->
      </div>
    </ul>
    <h4 class="hide">Application</h4>
    <ul>
      <li class="tooltip-element" data-tooltip="0">
        <a href="<c:url value='/applyword'/>" data-active="4">
          <div class="icon">
            <i class='bx bx-message-square-detail'></i>
            <i class='bx bxs-message-square-detail'></i>
          </div>
          <span class="link hide">Apply</span>
        </a>
      </li>
      <li class="tooltip-element" data-tooltip="1">
        <a href="<c:url value='/apply'/>" data-active="5">
          <div class="icon">
            <i class='bx bx-notepad'></i>
            <i class='bx bxs-notepad'></i>
          </div>
          <span class="link hide">Approve</span>
        </a>
      </li>
  	 <li class="tooltip-element" data-tooltip="2">
        <a href="#" data-active="6">
          <div class="icon">
            <i class='bx bxs-comment-add'></i>
            <i class='bx bxss-comment-add'></i>
          </div>
          <span class="link hide">Update</span>
        </a>
      </li>
      <li class="tooltip-element" data-tooltip="3">
        <a href="#" data-active="7">
          <div class="icon">
            <i class='bx bx-trash'></i>
            <i class='bx bxs-trash'></i>
          </div>
          <span class="link hide">Delete</span>
        </a>
      </li>
      <div class="tooltip">
        <span class="show">Apply</span>
        <span>Approve</span>
        <span>Update</span>
        <span>Delete</span>
      </div>
    </ul>
  </div>
  <div class="sidebar-footer">
    <a href="#" class="account tooltip-element" data-tooltip="0">
    <i class='bx bx-user'></i>
    </a>
    <div class="admin-user tooltip-element" data-tooltip="1">
      <div class="admin-profile hide">
        <img src="./img/face-1.png" alt="">
        <div class="admin-info">
          <h3>Logout</h3>
          <!-- <h5>Admin</h5> -->
        </div>
      </div>
      <a href="<c:url value='/'/>" class="log-out">
      <i class='bx bx-log-out'></i>
      </a>
    </div>
    <div class="tooltip">
      <span class="show">Logout</span>
      <span>Logout</span>
    </div>
  </div>
</nav>
</div>
	
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
    
    <form action="<c:url value='/domain/update'/>" method="post">
      <!--  <form> -->
      <div class="form-group-left">
        <div class="form-group">
          <label for="password">도메인번호</label>
          <input type="text" id="domainNo" name="domainNo" value="${domain.domainNo}" readonly/>
        </div>
        
        <div class="form-group">
          <label for="password">도메인그룹명</label>
          <input type="text" id="domainGnm" name="domainGnm" value="${domain.domainGnm}" />
        </div>
        <div class="form-group">
          <label for="password">도메인카테고리</label>
          <input type="text" id="domainCatg" name="domainCatg" value="${domain.domainCatg}" />
        </div>
        <div class="form-group">
          <label for="password">등록자</label>
          <input type="text" id="regId" name="regId" value="${domain.regId}" />
        </div>
        <div class="form-group">
          <label for="password">수정자</label>
          <input type="text" id="mdfcnId" name="mdfcnId" value="${domain.mdfcnId}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">승인상태</label>
          <input type="text" id="aprvStts" name="aprvStts" value="${domain.aprvStts}" />
        </div>        
        <div class="form-group-des">
          <label for="password">단어 설명</label>
          <input type="text" id="domainExpln" name="domainExpln" value="${domain.domainExpln}" />
        </div>     
        
       </div>
       
        <div class="form-group-right">
        
        <div class="form-group">
          <label for="username">도메인명</label>
          <input type="text" id="domainNm" name="domainNm" value="${domain.domainNm}" />
        </div>
        <div class="form-group">
          <label for="password">도메인타입</label>
          <input type="text" id="domainType" name="domainType" value="${domain.domainType}" />
        </div>
        <div class="form-group">
          <label for="password">데이터길이</label>
          <input type="text" id="domainLength" name="domainLength" value="${domain.domainLength}" />
        </div>
        <div class="form-group">
          <label for="password">등록일</label>
          <input type="text" id="regDt" name="regDt" value="${domain.regDt}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">수정일</label>
          <input type="text" id="mdfcnDt" name="mdfcnDt" value="${domain.mdfcnDt}" readonly/>
        </div>
        <div class="form-group">
          <label for="password">삭제여부</label>
          <input type="text" id="delYn" name="delYn" value="${domain.delYn}" readonly/>
        </div>
        
        <%-- <a href="<c:url value='/word/update?wordno=${word.wordNo}'/>"> --%>
        </div>
        <div class="form-group">
          <label class="form-remember">
            &nbsp;
            </label>
        </div>
        <div class="form-group">
        <div class="btn_mdfcn">
        <button type="submit" class="btn btn-primary">수정</button>
        </div>
        </div>
        </form>  
          <div class="form-group">
          
          <form action="<c:url value='/domaindelete/domainNo=${domain.domainNo}'/>" method="post">

		  <input type="hidden" name="domainNo" value="${domain.domainNo}">
		  <!-- <button>삭제</button> -->
          <!-- <button id="delete" type="submit">삭제</button> -->
          <div class="btn_remove">
          <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
  		  삭제
		  </button>  -->           
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

<!--  <div class="input-group">
    <label>
      <input type="text" placeholder="Email Address"/>
    </label>
    <button class="unit" type="button"><i class="icon ion-md-search"></i></button>
  </div>
  
  <button class="red" type="button"><i class="icon ion-md-lock"></i> Log in</button> -->

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
