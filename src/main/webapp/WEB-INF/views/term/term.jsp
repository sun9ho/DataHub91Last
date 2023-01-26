<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery 라이브러리 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://www.cssscript.com/demo/sticky.css" rel="stylesheet"	type="text/css">
<link	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap"	rel="stylesheet" />
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"	rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header_main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/domain.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/term.css">
</head>


<body style="overflow: hidden;">

	<%@include file="/WEB-INF/views/layout/header_main.jsp"%>
	<%@include file="/WEB-INF/views/layout/nav.jsp"%>


	<!-- 테이블 부분 -->
	<div class="bodycontainer">
		<div class="container">
			<h2>T&nbsp;E&nbsp;R&nbsp;M</h2>

			<!-- 검색창 -->
			<div class="input-group mb-3">
				<select>
					<option value="">분류</option>
					<option value="">용어명</option>
					<option value="학생">용어설명</option>
					<option value="회사원">영문약어</option>
					<option value="기타">도메인명</option>
				</select>

				<form id="myForm" action="ajax/termdetail" method="get">
					<input type="text" id="autocompleteText" class="form-control"
						placeholder="SearchTerm" aria-label="Recipient's username"
						aria-describedby="button-addon2">
					<button class="btn btn-outline-secondary" type="button"
						id="button-addon2" onclick="clickSearchIcon()">검색</button>
				</form>
				<!-- excel image 부분 -->
				<a href='<c:url value='/excelTerm'/>'> <img class="img_excel"
					src="resources/images/excel.png">
				</a>
			</div>
							
				<div id="termo" style="display: none">
					<div class="shop-card">
						<div class="desc">
							<div id="term_detail">
								<div class="box blue">
									<span class="title"><span id="termNm"></span></span>
									<ul>
										<li><span id="termEngAbbn"></span></li>
										<li><span id="termDnm"></span></li>
									</ul>
									
								<!-- 상세부분 -->
								<a id="termNodetail" href="" style="z-index: 100;">
	                            <button type="button" class="btn btn-dark">상세</button></a>
	                           
	                            <!-- 수정부분 -->
	                            <a id="termNo" href="" style="z-index: 100;">
	                            <button type="button" class="btn btn-dark">수정</button></a>
		
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="termx" style="display: none">
						<div class="shop-card">
							<p>용어가 DB에 존재하지 않습니다.</p>
							<div class="cta">
								<button class="btn">
									용어 신청서 작성하기<span class="bg"></span>
								</button>
							</div>
						</div>
				</div>

			<!-- 목록 데이터 테이블 -->
			<div class="main-table">
				<div class="table-responsive custom-table-responsive">
					<table class="table custom-table">
						<thead>
							<tr>
								<th scope="col">용어번호</th>
								<th scope="col">용어명</th>
								<th scope="col">영문약어</th>
								<th scope="col">도메인명</th>
								<th scope="col">용어설명</th>
							</tr>
						</thead>
						<tbody>
							<tr class="spacer">
								<td colspan="100"></td>
							</tr>
							<c:forEach var="terms" items="${terms}">
								<tr class="active">
									<td><a href="<c:url value='/term/detail?termNo=${terms.termNo}'/>">${terms.termNo}</a></td>
									<td>${terms.termNm}</td>
									<td><small class="d-block">${terms.termEngAbbn}</small></td>
									<td>${terms.termDnm}</td>
									<td><button type="button" class="btn btn-primary"
											data-toggle="popover" data-placement="right" title="설명"
											data-content="${terms.termExpln}">Detail</button></td>
								</tr>
								<tr class="spacer">
									<td colspan="100"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

			<!-- 페이징 처리 부분 -->
			<table class="table table-sm table-bordered">
				<tr>
					<td colspan="4" class="text-center">
						<div>
							<a class="btn btn-outline-primary btn-sm" href="term?pageNo=1">처음</a>
							<c:if test="${pager.groupNo>1}">
								<a class="btn btn-outline-info btn-sm"
									href="term?pageNo=${pager.startPageNo-1}">이전</a>
							</c:if>

							<c:forEach var="i" begin="${pager.startPageNo}"
								end="${pager.endPageNo}">
								<c:if test="${pager.pageNo != i}">
									<a class="btn btn-outline-success btn-sm"
										href="term?pageNo=${i}">${i}</a>
								</c:if>
								<c:if test="${pager.pageNo == i}">
									<a class="btn btn-danger btn-sm" href="term?pageNo=${i}">${i}</a>
								</c:if>
							</c:forEach>

							<c:if test="${pager.groupNo<pager.totalGroupNo}">
								<a class="btn btn-outline-info btn-sm"
									href="term?pageNo=${pager.endPageNo+1}">다음</a>
							</c:if>
							<a class="btn btn-outline-primary btn-sm"
								href="term?pageNo=${pager.totalPageNo}">맨끝</a>
						</div>
					</td>
				</tr>
			</table>
	
		</div>
	</div>
	<%@include file="/WEB-INF/views/layout/footer.jsp"%>

</body>
</html>

<script>
$(function () {
	  $('[data-toggle="popover"]').popover()
	})
</script>

<script>
$(function(){
	$( "#autocompleteText" ).autocomplete({
		source : function( request, response ) {
			//jquery Ajax로 비동기 통신한 후
			//json객체를 서버에서 내려받아서 리스트 뽑는 작업
	        $.ajax({
	        	//호출할 URL
	            url: "ajax/autocomplete/main",
	            //우선 jsontype json으로
	            dataType: "json",
	            // parameter 값이다. 여러개를 줄수도 있다.
	            processData:true,
	            data: 
	            {
	              //request.term >> 이거 자체가 text박스내에 입력된 값이다.
	              searchvalue: request.term
	            }	        
	        ,
	            success: function( result ) {
	            	document.getElementById('termo').style.display = 'none';
	            	document.getElementById('termx').style.display = 'none';  
	            	//return 된놈을 response() 함수내에 다음과 같이 정의해서 뽑아온다.
	                response( 
	                	$.map( result, function( item ) {
	                			return {
	                			//label : 화면에 보여지는 텍스트
	                			//value : 실제 text태그에 들어갈 값
	                			//본인은 둘다 똑같이 줬음
	                			//화면에 보여지는 text가 즉, value가 되기때문 
	                  				label: item.termNm,
	                  				value: item.termNm
	                			}
	              		})
	              	);
	            	
	            }
	          });
	    },
		        //최소 몇자 이상되면 통신을 시작하겠다라는 옵션
		minLength: 1,
		//자동완성 목록에서 특정 값 선택시 처리하는 동작 구현
		//구현없으면 단순 text태그내에 값이 들어간다.
		select: function( event, ui ) {}
	});
})
</script>

<!-- 아무스 클릭하면 카드 사라지게 하는 js -->
<script>
$(function(){
	$(document).mousedown(function( e ){
		if( $("#termo").is(":visible") ) {
			$("#termo").each(function(){
				var l_position = $(this).offset();
				l_position.right = parseInt(l_position.left) + ($(this).width());
				l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());

				if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
					&& ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) ) {
				} else {
					setTimeout(() => {
					$(this).hide();
					}, 100);
				}
			});		
		}
		if( $("#termx").is(":visible") ) {
			$("#termx").each(function(){
				var l_position = $(this).offset();
				l_position.right = parseInt(l_position.left) + ($(this).width());
				l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());

				if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
					&& ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) ) {
				} else {
					$(this).hide();
				}
			});		
		}		
	});
	
	/* $("button").click(function(){
		if( !$("#menuLayer").is(":visible") ) {
			$("#menuLayer").show();
		}
	}); */
});
</script>


<!-- 검색창 단어 선택하고 누르면 단어 상세보기 -->
<script>
	function clickSearchIcon() {
		var form = document.querySelector("#myForm");
		if(statusSeatchInput) {			
			var autocompleteText = $("#autocompleteText").val();
			console.log(autocompleteText+"clickSerchIcon진입");
			
			$.ajax({
				url:"ajax/termdetail",			
				data: "autocompleteText=" +autocompleteText,	
					//{autocompleteText="autocomplete"}
	       	    success: function( result ) {	  
					$("#termNm").html(result.termNm);       	
					$("#termEngAbbn").html(result.termEngAbbn);       	
					$("#termDnm").html(result.termDnm);
					
					/* 검색했을 때 a태그에 수정 연결 코드 */
	                var hrefValue = "/springframework-xml-config-no-root/term/update?termno="+result.termNo;      
	                $("#termNo").attr('href',hrefValue);                              
	                alink= $("#termNo").attr('href');
	                console.log("alink "+alink);
	                  
	                /* 검색했을 때 a태그에 상세 연결 코드 */
	                var hrefValue2 = "/springframework-xml-config-no-root/term/detail?termNo="+result.termNo;      
	                $("#termNodetail").attr('href',hrefValue2);                              
	                alink= $("#termNodetail").attr('href');
	                console.log("alink "+alink);
					
					
					
					console.log(result);
					
					if(result === ""){
					console.log("termx 진입")	;			
					document.getElementById('termx').style.display = 'block';
					}else{
					console.log("termO 진입")	;
					$("#none").html(autocompleteText); 
					document.getElementById('termo').style.display = 'block';
					}					
				}				
	        	/* } */
			});
			
			/*var option = {
			    dataType : 'json', //JSON형태로 전달도 가능합니다.
			    url: "ajax/termdetail",
			    success: function(res){
			        console.log(res.msg); //res Object안에 msg에는 결과 메시지가 담겨있습니다.
			    },
			    error: function(res){
			        alert("에러가 발생했습니다.")
			    }
			}

			$('#myForm').submit(function() { //submit이 발생하면
			    $(this).ajaxSubmit(option); //옵션값대로 ajax비동기 동작을 시키고
			    return false; //기본 동작인 submit의 동작을 막아 페이지 reload를 막는다.
			});*/
		} else {
			searchToggle(form, event);
			console.log("확장됨");
		}
	}
</script>

<script type="text/javascript">
	var statusSeatchInput = false;
	function searchToggle(obj, evt){
	    var container = $(obj).closest('.search-wrapper');
        if(!container.hasClass('active')){
            container.addClass('active');
            /* evt.preventDefault(); */
            statusSeatchInput = true;
        } else {
            container.removeClass('active');
            // clear input
            container.find('.search-input').val('');
            statusSeatchInput = false;
        }
	}
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
