<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<!-- <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
 -->


<!-- 자동완성 CSS  -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>

<!-- 신청서용 링크 리소스 -->
<link
	href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css'
	rel='stylesheet'>
<!--  -->

<style>
<%--	
<%@
include

 

file


="/
resources
/css/applytest_form4


.css


"%
>
--%>
</style>
<link href="https://www.cssscript.com/demo/sticky.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/applytest_form4.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header_main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">

<!--신청서폼 제이쿼리와 부트스트랩, 순서는 제이쿼리 -> 부트스트랩 순서 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--자동완성 자바스크립트에서는 4.3.1 쓰길래 통일  -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
<!--  -->

<!--자동완성 자바스크립트-->
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!--  -->


<body>
	<%@include file="/WEB-INF/views/layout/header_main.jsp"%>

	<!-- side bar menu -->
	<%@include file="/WEB-INF/views/layout/nav.jsp"%>


	<!-- 신청서 폼 -->
	<div class="container py-5">
		<!-- For demo purpose -->
		<div class="row mb-4">
			<div class="col-lg-8 mx-auto text-center">
				<h1 class="display-6" id="applicationTitle">단어 신청서</h1>
			</div>
		</div>
		<!-- End -->
		<div class="row">
			<div class="col-lg-6 mx-auto">
				<div class="card ">
					<div class="card-header">
						<div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
							<!-- Credit card form tabs -->
							<ul role="tablist"
								class="nav bg-light nav-pills rounded nav-fill mb-3">
								<li class="nav-item"><a data-toggle="pill"
									href="#credit-card" class="nav-link "> <i
										class="fas fa-credit-card mr-2"></i> 단어
								</a></li>
								<li class="nav-item"><a data-toggle="pill" href="#paypal"
									class="nav-link "> <i class="fab fa-paypal mr-2"></i> 도메인
								</a></li>
								<li class="nav-item"><a data-toggle="pill"
									href="#net-banking" class="nav-link "> <i
										class="fas fa-mobile-alt mr-2"></i> 용어
								</a></li>
							</ul>
						</div>
						<!-- End -->
						<!-- Credit card form content -->
						<div class="tab-content">
							<!-- credit card info-->
							<div id="credit-card" class="tab-pane fade pt-3">
								<form method="post" action="<c:url value='/word/insert'/>">
									<div class="form-group">
										<label for="wordNm">
											<h6 style="display: inline-block">단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
											<h6 id="wordSearchCheck" style="display: inline-block; color:blue;">(자동으로
												검색됩니다.)</h6> <!--  -->
										</label> <input type="text" id="wordNm" name="wordNm"
											placeholder="단어명" required class="form-control ">
									</div>

									<div class="form-group">
										<label for="wordEngNm">
											<h6>단어영문명</h6>
										</label> <input type="text" id="wordEngNm" name="wordEngNm"
											placeholder="단어영문명" required class="form-control ">
									</div>
									<div class="form-group">
										<label for="wordEngAbbn">
											<h6>단어영문약어명</h6>
										</label> <input type="text" id="wordEngAbbn" name="wordEngAbbn"
											placeholder="단어영문약어명" required class="form-control ">
									</div>
									<div class="form-group">
										<label for="wordExpln">
											<h6>단어설명</h6>
										</label> <input type="text" id="wordExpln" name="wordExpln"
											placeholder="단어설명" required class="form-control ">
									</div>


									<div class="card-footer">
										<button type="submit"
											class="subscribe btn btn-primary btn-block shadow-sm">
											제출</button>
								</form>
							</div>
						</div>
						<!-- End -->

						<!-- Paypal info -->
						<div id="paypal" class="tab-pane fade pt-3">
							<form method="post" action="<c:url value='/domain/insert'/>">
								<div class="domainGroup1">
									<div class="form-group">
										<label for="domainNm">
											<h6 style="display: inline-block">도메인명</h6><!-- DB에 있는지 OX체크를 해준다. -->
											<h6 id="domainSearchCheck" style="display: inline-block; color:blue;">(자동으로
												검색됩니다.)</h6> <!--  -->
										</label> <input type="text" id="domainNm" name="domainNm"
											placeholder="도메인명" required
											class="form-control domain-form-control">
									</div>
									<div class="form-group">
										<label for="domainGnm">
											<h6 >도메인그룹명</h6>
											
										</label> <input type="text" id="domainGnm" name="domainGnm"
											placeholder="도메인그룹명" required
											class="form-control domain-form-control">
									</div>
									<div class="form-group">
										<label for="domainCatg">
											<h6 style="display: inline-block">도메인분류명</h6>
											
										</label> <input type="text" id="domainCatg" name="domainCatg"
											placeholder="도메인분류명" required
											class="form-control domain-form-control">
									</div>
								</div>

								<div class="domainGroup2">
									<div class="form-group">
										<label for="domainType">
											<h6 style="display: inline-block">데이터타입</h6>
											<h6 style="display: inline-block; color:blue;">(도메인명을 입력하면 자동으로
												입력됩니다.)</h6> <!--  -->
										</label>
										<input type="text" id="domainType" name="domainType"
											placeholder="도메인설명" required
											class="form-control domain-form-control" readonly>
									</select>
												
									</div>
									<div class="form-group">
										<label for="domainLength">
											<h6 style="display: inline-block">데이터길이</h6>
											<h6 style="display: inline-block; color:blue;">(도메인명을 입력하면 자동으로
												입력됩니다.)</h6> <!--  -->
										</label>
										<input type="text" id="domainLength" name="domainLength"
											placeholder="도메인설명" required
											class="form-control domain-form-control" readonly>
									</div>
									<div class="form-group">
										<label for="domainExpln">
											<h6>도메인설명</h6>
										</label> <input type="text" id="domainExpln" name="domainExpln"
											placeholder="도메인설명" required
											class="form-control domain-form-control">
									</div>
								</div>

								<button type="submit" id="domainSubmit"
									class="domainButton subscribe btn btn-primary btn-block shadow-sm">
									제출</button>
								<div class="card-footer domain-card-footer"></div>
							</form>


						</div>
						<!-- End -->

						<!-- bank transfer info -->
						<div id="net-banking" class="tab-pane fade pt-3">
							<form method="post" action="<c:url value='/term/insert'/>">

									<div class="form-group">
										<label for="termNm" style="height:2em">
											<h6 style="display: inline-block">용어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
											<h6 id="termSearchCheck">(자동으로
												검색됩니다.)</h6> 
										<button type="button" id="termToWordApplication"
											class="subscribe btn btn-primary btn-block shadow-sm">
											클릭</button><!--  -->
										</label> <input type="text" id="termNm" name="termNm"
											placeholder="용어명" required class="form-control ">
									</div>
									<div class="form-group">
										<label for="wordEngNm">
											<h6>용어의 도메인명</h6>
										</label> <input type="text" id="termDnm" name="termDnm"
											placeholder="용어의 도메인명" required class="form-control ">
									</div>
									<div class="form-group">
										<label for="wordEngAbbn">
											<h6>용어영문약어명</h6>
										</label> <input type="text" id="termEngAbbn" name="termEngAbbn"
											placeholder="용어영문약어명" required class="form-control ">
									</div>
									<div class="form-group">
										<label for="wordExpln">
											<h6>용어설명</h6>
										</label> <input type="text" id="termExpln" name="termExpln"
											placeholder="용어설명" required class="form-control ">
									</div>

									<div class="card-footer">
										<button type="submit"
											class="subscribe btn btn-primary btn-block shadow-sm">
											제출</button>
								</form>
							</div>
							</form>
						</div>
						<!-- End -->
						<!-- End -->

					</div>
				</div>
			</div>
		</div>


		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
</body>
</html>

<!-- 신청서 탭 자바스크립트 -->
<script>
function pageChangeByTabFunction() {
	 console.log("함수 진입");
	  $('[data-toggle="tooltip"]').tooltip();
	}
</script>

<script>
function changeTabTitle(){
	if(($('a[href="#credit-card"]').hasClass('active'))&&($('a[href="#credit-card"]').hasClass('show'))){
		//제목 변경
		console.log("단어탭 클릭");
		$('#applicationTitle').html('단어 신청서');
		$('#applicationTitle').css('bottom', '0');
		$('div.card').css('height','40em');
		$('div.card').css('bottom','4em');
	}
	else if(($('a[href="#paypal"]').hasClass('active'))&&($('a[href="#paypal"]').hasClass('show'))){
		//제목 변경
		console.log("도메인탭 클릭");	
		$('#applicationTitle').html('도메인 신청서');
		$('#applicationTitle').css('bottom', '1em');
		$('div.card').css('height','35em');
		$('div.card').css('bottom','6.5em');
	}
	else if(($('a[href="#net-banking"]').hasClass('active'))&&($('a[href="#net-banking"]').hasClass('show'))){
		//제목 변경
		console.log("용어탭 클릭");
		$('#applicationTitle').html('용어 신청서');
		$('#applicationTitle').css('bottom', '0');
		$('div.card').css('height','40em');
		$('div.card').css('bottom','4em');
	}	
}

$(function(){
	var currentTab = "<c:out value='${currentTab}'/>";
	console.log("currentTab "+currentTab);
	
	if(currentTab=="word"){
		$('a[href="#credit-card"]').addClass('active show');
		$('#credit-card').addClass('active show');
		
		$('a[href="#paypal"]').removeClass('active show');
		$('#paypal').removeClass('active show');
		
		$('a[href="#net-banking"]').removeClass('active show');
		$('#net-banking').removeClass('active show');
		
		$('div.card').css('height','40em');
		$('div.card').css('bottom','4em');
		$('#applicationTitle').css('bottom', '0');
		
		$('#applicationTitle').html('단어 신청서');
	}
	else if(currentTab=="domain")
	{
		$('a[href="#credit-card"]').removeClass('active show');
		$('#credit-card').removeClass('active show');
		
		$('a[href="#paypal"]').addClass('active show');
		$('#paypal').addClass('active show');
		
		$('a[href="#net-banking"]').removeClass('active show');
		$('#net-banking').removeClass('active show');
		
		$('div.card').css('height','35em');
		$('div.card').css('bottom','6.5em');
		$('#applicationTitle').css('bottom', '1em');
		
		$('#applicationTitle').html('도메인 신청서');
	}
	else if(currentTab=="term")
	{
		console.log("진입했니?");
		$('a[href="#credit-card"]').removeClass('active show');
		$('#credit-card').removeClass('active show');
		
		$('a[href="#paypal"]').removeClass('active show');
		$('#paypal').removeClass('active show');
		
		$('a[href="#net-banking"]').addClass('active show');
		$('#net-banking').addClass('active show');
		
		$('#applicationTitle').html('용어 신청서');
	}
})

$('.nav-link').on('click', function(event){
	console.log("탭 메뉴 클릭진입");

	console.log("credit-card 현재 클래스 "+$('a[href="#credit-card"]').attr('class'));
	console.log("paypal 현재 클래스 "+$('a[href="#paypal"]').attr('class'));
	
	/* data-toggle=pill 이 클래스를 변경해주는 속도가 느리다 */
	setTimeout(() => {
		changeTabTitle();
	}, 100);
	
});

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


<!-- 단어신청서 -->
<script>
$(function(){
		
	/* 신청서 자동완성+DB에 있는지 체크 */
	$("#credit-card").on('keyup',"#wordNm",function(){
	//검색창에 문자를 입력하면 함수가 실행된다.
	//.textbox-wrapper 의 자식 #wordSearch(검색창)에게 keyup 이벤트가 실행된다면
	    console.log("keyup 진입");
	    /* 검색창에 있는 값 출력 */
	    
	    //자동완성 함수인 autocomplete()가 실행된다.
		$("#wordNm").autocomplete({
			source : function( request, response ) {
				// jquery Ajax로 비동기 통신한 후
				//json객체를 서버에서 내려받아서 리스트 뽑는 작업
		        $.ajax({
		        	//호출할 URL
		        	async:true,
		            url: "${pageContext.request.contextPath}/ajax/autocomplete",
		            //우선 jsontype json으로
		            dataType: "json",
		            //parameter 값이다. 여러개를 줄수도 있다.
		            processData:true,
		            data: 
		            {
		              //request.term >> 이거 자체가 text박스내에 입력된 값이다.
		              searchvalue: request.term
		            }	        
		        ,		
		            success: function( result ) {
		            	//return 된놈을 response() 함수내에 다음과 같이 정의해서 뽑아온다.
		                response( 
		                	$.map( result, function( item ) {
		                			return {
		                			//label : 화면에 보여지는 텍스트
		                			//value : 실제 text태그에 들어갈 값
		                			//본인은 둘다 똑같이 줬음
		                			//화면에 보여지는 text가 즉, value가 되기때문 
		                  				label: item.wordNm,
		                  				value: item.wordNm
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
			select: function( event, ui ) {
				//자동완성 선택 후 실행되는 함수다
				//그런데, 이 안에 곧바로 비동기 AJAX 통신을 실행시키면,
				//자동완성 선택 전의 단어가 서버로 간다. 속도가 너무 빨라서 그런 것 같다.
				//그래서 setTimeout() 함수로 자동완성으로 단어가 선택되면 0.1초 뒤에 서버로 전달되도록
				//그제서야 검색창의 단어가 자동완성 선택 이후의 값이 서버로 갈 것이다.
				console.log("자동선택 진입");
				var wordSearchCheck = $("#wordSearchCheck");
				console.log("구간1: "+$("#wordNm").val());
				var parameter = encodeURI(encodeURIComponent($("#wordNm").val()));
				console.log("구간2: "+parameter);
				setTimeout(() => {
			 		  $.ajax({
		         		  url: "${pageContext.request.contextPath}/wordsearchcheck"+"?"+"wordname="+$("#wordNm").val(),
		           		  async: true,
		          		  type:"GET",
		           		  processData:false,
		         		  contentType:false,
		         		  success:function(data, status, xhr){
		          		  console.log("data "+data);
		          		  var k = JSON.stringify(data);
		           		  console.log("JSON.stringify(data) "+JSON.stringify(data));
		                  console.log("JSON.stringify(data)[0].wordNm "+JSON.stringify(data)[0].wordNm);
		                  console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
		           
		     	         if(data){
		     		     //DB에 해당 값이 있으면
		     		     console.log('Circlecheck가 나올 차례지롱');
		     		     wordSearchCheck.text("DB에 있는 단어");
		     		     wordSearchCheck.css("color","blue");	
		     		     data = JSON.stringify(data);
		     	        }else if(!data){
		     		     //DB에 해당 값이 없으면
				     	console.log('Crosscheck가 나올 차례지롱');
					    wordSearchCheck.text("DB에 없는 단어");
					    wordSearchCheck.css("color","red");
		     		}
		           },
		           error:function(e, status, xhr){	
		              console.log("ERROR : ", e);
		              alert("fail");
		           }
				})
				}, 100);
	
			}
		});	
		
 	var wordSearchCheck = $("#wordSearchCheck");
	console.log("구간1: "+$("#wordNm").val());
	var parameter = encodeURI(encodeURIComponent($("#wordNm").val()));
	console.log("구간2: "+parameter);
	   $.ajax({
           url: "${pageContext.request.contextPath}/wordsearchcheck"+"?"+"wordname="+$("#wordNm").val(),
           async: true,
           type:"GET",
           processData:false,
           contentType:false,
           success:function(data, status, xhr){
           console.log("data "+data);
           var k = JSON.stringify(data);
           console.log("JSON.stringify(data) "+JSON.stringify(data));
           console.log("JSON.stringify(data)[0].wordNm "+JSON.stringify(data)[0].wordNm);
           console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
           
     	   if(data){
     		//DB에 해당 값이 있으면
     		console.log('Circlecheck가 나올 차례지롱');
     		wordSearchCheck.text("DB에 있는 단어");
     		wordSearchCheck.css("color","blue");	
     		data = JSON.stringify(data);
     	   }else if(!data){
     		//DB에 해당 값이 없으면
			console.log('Crosscheck가 나올 차례지롱');
			wordSearchCheck.text("DB에 없는 단어");
			wordSearchCheck.css("color","red");
     		}
           },
           error:function(e, status, xhr){	
              console.log("ERROR : ", e);
              alert("fail");
           }
		})
	})
});	
</script>

<script>
	$("#paypal").on('keyup',"#domainNm",function(){
	//검색창에 문자를 입력하면 함수가 실행된다.
	//.textbox-wrapper 의 자식 #wordSearch(검색창)에게 keyup 이벤트가 실행된다면
	    console.log("keyup 진입");
	    /* 검색창에 있는 값 출력 */
	    
	    //자동완성 함수인 autocomplete()가 실행된다.
		$("#domainNm").autocomplete({
			source : function( request, response ) {
				// jquery Ajax로 비동기 통신한 후
				//json객체를 서버에서 내려받아서 리스트 뽑는 작업
		        $.ajax({
		        	//호출할 URL
		            url: "${pageContext.request.contextPath}/ajax/autocomplete/domain",
		            //우선 jsontype json으로
		            dataType: "json",
		            //parameter 값이다. 여러개를 줄수도 있다.
		            processData:true,
		            data: 
		            {
		              //request.term >> 이거 자체가 text박스내에 입력된 값이다.
		              searchvalue: request.term
		            }	        
		        ,		
		            success: function( result ) {
		            	//return 된놈을 response() 함수내에 다음과 같이 정의해서 뽑아온다.
		                response( 
		                	$.map( result, function( item ) {
		                			return {
		                			//label : 화면에 보여지는 텍스트
		                			//value : 실제 text태그에 들어갈 값
		                			//본인은 둘다 똑같이 줬음
		                			//화면에 보여지는 text가 즉, value가 되기때문 
		                  				label: item.domainNm,
		                  				value: item.domainNm
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
			select: function( event, ui ) {
				//자동완성 선택 후 실행되는 함수다
				//그런데, 이 안에 곧바로 비동기 AJAX 통신을 실행시키면,
				//자동완성 선택 전의 단어가 서버로 간다. 속도가 너무 빨라서 그런 것 같다.
				//그래서 setTimeout() 함수로 자동완성으로 단어가 선택되면 0.1초 뒤에 서버로 전달되도록
				//그제서야 검색창의 단어가 자동완성 선택 이후의 값이 서버로 갈 것이다.
		
				var domainSearchCheck = $("#domainSearchCheck");
				console.log("구간11: "+$("#domainNm").val());
				var domainName = $("#domainNm").val();
				setTimeout(() => {
				  $.ajax({
			           url: "${pageContext.request.contextPath}/domainsearchcheck"+"?"+"domainname="+$("#domainNm").val(),
			           async: true,
			           type:"GET",
			           processData:false,
			           contentType:false,
			           success:function(data, status, xhr){
			           console.log("data "+data);
			           var k = JSON.stringify(data);
			           console.log("JSON.stringify(data) "+JSON.stringify(data));
			           console.log("JSON.stringify(data)[0].domainNm "+JSON.stringify(data)[0].domainNm);
			           console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
			           console.log("구간110: "+$("#domainNm").val());
						
			           if(data[0]){
			     		//DB에 해당 값이 있으면
			     		console.log('Circlecheck가 나올 차례지롱');
			     		domainSearchCheck.text("DB에 있는 도메인");
			     		domainSearchCheck.css("color","blue");	
			     		data = JSON.stringify(data);
			     	   }else if(!data[0]){
			     		//DB에 해당 값이 없으면
						console.log('Crosscheck가 나올 차례지롱');
						domainSearchCheck.text("DB에 없는 도메인");
						domainSearchCheck.css("color","red");
			     		}
			           },
			           error:function(e, status, xhr){	
			              console.log("ERROR : ", e);
			              alert("fail");
			           }
					});
				
					/* 아래는 도메인 이름으로 테이터 타입과 길이를 추출해서 가져오는 코드들이다. */
					/* 그런데 왜 이것을 setTimeout 안에 넣을까?
						검색창에 "상세"만 입력하고 자동완성으로 "상세주소v20"이 선택되었을 때 
						이상하게도 속도 차이인지, $("#domainNm").val() 에는 "상세"만 들어간다
						그렇기에 얘도, setTimeout에 넣어준다.*/
					  console.log("구간30: "+domainName );
						/* 도메인 이름으로 데이터 타입과 길이를 추출해서 가져올 것이다.  */
						 if(domainName !== undefined)
						 {
							 console.log("진입했다1");
							 domain=$("#domainNm").val();
							
							 $.ajax({
						            url: "${pageContext.request.contextPath}/tothedomainapplicationform2",
				    	            async: false,
									type:"GET",
									dataType:"json",
									processData:true,
									contentType:false,
									data:{wordname:$("#domainNm").val()},
									
									success:function(data, status, xhr){
										 console.log("진입했다2");
									 	//서버에서 메서드 앞에 @ResponseBody를 써주면 HTTP Body로 데이터를 담아서 보내준다.
									 	//즉, List<DomainVO> 타입 데이터값을 받았다.
									    var k = JSON.stringify(data);
									 	//일단 이걸 JSON화 시켜주자
									 	//그러면 JSON의 배열로 정제가 가능하다
									 	//즉,1번째 DomainVO는 1번째 JSON에 담기는 식이다.
									 	//왜 굳이 JSON화 시키냐고? 내 예상이긴 한데, 자바와 자바스크립트는 데이터 형식이 달라서
									 	//자바 식으로 만든어진 VO 데이터는 자바스크립트에서 바로 못사용하는 듯
									 	//그래서 한번 JSON화 시켜서 자바스크립트에서도 사용 가능하게 해주는 듯 하다.
									 	console.log("data[0] "+data[0]);
									 	console.log("data[1] "+data[1]);
									 	console.log("data[0][0] "+data[0][0]);
									 	console.log("data[1][0] "+data[1][0]);
									 	console.log("data.length "+data.length);
									 	console.log("JSON.stringify(data).length "+JSON.stringify(data).length);
									    console.log("JSON.stringify(data) "+JSON.stringify(data));
									    //이 데이터를 Json화 시킨다
									    console.log("JSON.stringify(data)[0].domainNm "+JSON.stringify(data)[0].domainNm);
									    console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
									    console.log("JSON.stringify(data)[0] "+JSON.stringify(data)[0]);
									    console.log("JSON.stringify(data[0][0])"+JSON.stringify(data[0][0]));
									    console.log("JSON.stringify(data[1][0])"+JSON.stringify(data[1][0]));
									    
									    $('#domainType').val(data[0][0]);
									    $('#domainLength').val(data[1][0]);
									
									    $('#domainType').css('color','blue');
									    $('#domainLength').css('color','blue');
									  },
									  error:function(e, status, xhr){	
									              console.log("ERROR : ", e);
									              alert("fail");
									  }
									})
							
						 }
				},100);
				
				
				}
		});	
	    
		var domainSearchCheck = $("#domainSearchCheck");
		console.log("구간12: "+$("#domainNm").val());
		var domainName = $("#domainNm");
		
		  $.ajax({
	           url: "${pageContext.request.contextPath}/domainsearchcheck"+"?"+"domainname="+$("#domainNm").val(),
	           async: true,
	           type:"GET",
	           processData:false,
	           contentType:false,
	           success:function(data, status, xhr){
	           console.log("data "+data);
	           var k = JSON.stringify(data);
	           console.log("JSON.stringify(data) "+JSON.stringify(data));
	           console.log("JSON.stringify(data)[0].domainNm "+JSON.stringify(data)[0].domainNm);
	           console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
	           
	     	   if(data){
	     		//DB에 해당 값이 있으면
	     		console.log('Circlecheck가 나올 차례지롱');
	     		domainSearchCheck.text("DB에 있는 도메인");
	     		domainSearchCheck.css("color","blue");	
	     		data = JSON.stringify(data);
	     	   }else if(!data){
	     		//DB에 해당 값이 없으면
				console.log('Crosscheck가 나올 차례지롱');
				domainSearchCheck.text("DB에 없는 도메인");
				domainSearchCheck.css("color","red");
	     		}
	           },
	           error:function(e, status, xhr){	
	              console.log("ERROR : ", e);
	              alert("fail");
	           }
			});
		  
		  
		  
		  
		  /* 도메인 이름으로 데이터 타입과 길이를 추출해서 가져올 것이다.  */
			 if($("#domainNm").val() !== undefined)
			 {
				 console.log("진입했다1");
				 domain=$("#domainNm").val();
				
				 $.ajax({
			            url: "${pageContext.request.contextPath}/tothedomainapplicationform2",
	    	            async: false,
						type:"GET",
						dataType:"json",
						processData:true,
						contentType:false,
						data:{wordname:$("#domainNm").val()},
						
						success:function(data, status, xhr){
							 console.log("진입했다2");
						 	//서버에서 메서드 앞에 @ResponseBody를 써주면 HTTP Body로 데이터를 담아서 보내준다.
						 	//즉, List<DomainVO> 타입 데이터값을 받았다.
						    var k = JSON.stringify(data);
						 	//일단 이걸 JSON화 시켜주자
						 	//그러면 JSON의 배열로 정제가 가능하다
						 	//즉,1번째 DomainVO는 1번째 JSON에 담기는 식이다.
						 	//왜 굳이 JSON화 시키냐고? 내 예상이긴 한데, 자바와 자바스크립트는 데이터 형식이 달라서
						 	//자바 식으로 만든어진 VO 데이터는 자바스크립트에서 바로 못사용하는 듯
						 	//그래서 한번 JSON화 시켜서 자바스크립트에서도 사용 가능하게 해주는 듯 하다.
						 	console.log("data[0] "+data[0]);
						 	console.log("data[1] "+data[1]);
						 	console.log("data[0][0] "+data[0][0]);
						 	console.log("data[1][0] "+data[1][0]);
						 	console.log("data.length "+data.length);
						 	console.log("JSON.stringify(data).length "+JSON.stringify(data).length);
						    console.log("JSON.stringify(data) "+JSON.stringify(data));
						    //이 데이터를 Json화 시킨다
						    console.log("JSON.stringify(data)[0].domainNm "+JSON.stringify(data)[0].domainNm);
						    console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
						    console.log("JSON.stringify(data)[0] "+JSON.stringify(data)[0]);
						    console.log("JSON.stringify(data[0][0])"+JSON.stringify(data[0][0]));
						    console.log("JSON.stringify(data[1][0])"+JSON.stringify(data[1][0]));
						    
						    $('#domainType').val(data[0][0]);
						    $('#domainLength').val(data[1][0]);
						    $('#domainType').css('color','blue');
						    $('#domainLength').css('color','blue');
						    
						  },
						  error:function(e, status, xhr){	
						              console.log("ERROR : ", e);
						              alert("fail");
						  }
						})
				
			 }	
});
</script>

<!-- 용어명 검색창 -->
<script>

	$("#net-banking").on('keyup',"#termNm",function(){
	//검색창에 문자를 입력하면 함수가 실행된다.
	//.textbox-wrapper 의 자식 #wordSearch(검색창)에게 keyup 이벤트가 실행된다면
	    console.log("keyup 진입");
	    /* 검색창에 있는 값 출력 */
	    
	    //자동완성 함수인 autocomplete()가 실행된다.
		$("#termNm").autocomplete({
			source : function( request, response ) {
				// jquery Ajax로 비동기 통신한 후
				//json객체를 서버에서 내려받아서 리스트 뽑는 작업
		        $.ajax({
		        	//호출할 URL
		            url: "/ajax/autocomplete/main",
		            //우선 jsontype json으로
		            dataType: "json",
		            //parameter 값이다. 여러개를 줄수도 있다.
		            processData:true,
		            data: 
		            {
		              //request.term >> 이거 자체가 text박스내에 입력된 값이다.
		              searchvalue: request.term
		            }	        
		        ,		
		            success: function( result ) {
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
			select: function( event, ui ) {
				//자동완성 선택 후 실행되는 함수다
				//그런데, 이 안에 곧바로 비동기 AJAX 통신을 실행시키면,
				//자동완성 선택 전의 단어가 서버로 간다. 속도가 너무 빨라서 그런 것 같다.
				//그래서 setTimeout() 함수로 자동완성으로 단어가 선택되면 0.1초 뒤에 서버로 전달되도록
				//그제서야 검색창의 단어가 자동완성 선택 이후의 값이 서버로 갈 것이다.
		
				var termSearchCheck = $("#termSearchCheck");
				console.log("구간11: "+$("#termNm").val());
				var termName = $("#termNm");
				var termToWordApplication = $("#termToWordApplication");
				setTimeout(() => {
				  $.ajax({
			           url: "${pageContext.request.contextPath}/termsearchcheck"+"?"+"termname="+$("#termNm").val(),
			           async: true,
			           type:"GET",
			           processData:false,
			           contentType:false,
			           success:function(data, status, xhr){
			           console.log("data "+data);
			           var k = JSON.stringify(data);
			           console.log("JSON.stringify(data) "+JSON.stringify(data));
			           console.log("JSON.stringify(data)[0].domainNm "+JSON.stringify(data)[0].domainNm);
			           console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
			           console.log("구간110: "+$("#termNm").val());
						
			           if(data){
			        	 console.log("구간1100");
			     		//DB에 해당 값이 있으면
			     		console.log('Circlecheck가 나올 차례지롱');
			     		termSearchCheck.text("DB에 있는 용어");
			     		termSearchCheck.css("color","blue");	
			     		termToWordApplication.css("display", "none");
			     		data = JSON.stringify(data);
			     	   }else if(!data){
			     		  console.log("구간11000");
			     		//DB에 해당 값이 없으면
						console.log('Crosscheck가 나올 차례지롱');
						termSearchCheck.text("DB에 없는 용어, 신청하려면 오른 쪽 버튼부터 클릭하세요");
						termSearchCheck.css("color","red");
						termToWordApplication.css("display", "inline-block");
			     		}
			           },
			           error:function(e, status, xhr){	
			              console.log("ERROR : ", e);
			              alert("fail");
			           }
					});
				},100);
			}
		});	
	    
		var termSearchCheck = $("#termSearchCheck");
		console.log("구간22: "+$("#termNm").val());
		var termName = $("#termNm");
		var termToWordApplication = $("#termToWordApplication");
		
		setTimeout(() => {
			
			/* DB에 있는 용어인지 알려준다. */
			  $.ajax({
		           url: "${pageContext.request.contextPath}/termsearchcheck"+"?"+"termname="+$("#termNm").val(),
		           async: true,
		           type:"GET",
		           processData:false,
		           contentType:false,
		           success:function(data, status, xhr){
		           console.log("data "+data);
		           console.log("data[0] "+data[0]);
		           var k = JSON.stringify(data);
		           console.log("JSON.stringify(data) "+JSON.stringify(data));
		           console.log("JSON.stringify(data)[0].domainNm "+JSON.stringify(data)[0].domainNm);
		           console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
		           console.log("구간220: "+$("#termNm").val());
					
		           if(data[0]){
		     		//DB에 해당 값이 있으면
		     		console.log("구간2200");
		     		console.log('Circlecheck가 나올 차례지롱');
		     		termSearchCheck.text("DB에 있는 용어");
		     		termSearchCheck.css("color","blue");	
		     		termToWordApplication.css("display", "none");
		     		data = JSON.stringify(data);
		     	   }else if(!data[0]){
		     		//DB에 해당 값이 없으면
		     		console.log("구간22000");
					console.log('Crosscheck가 나올 차례지롱');
					termSearchCheck.text("DB에 없는 용어, 신청하려면 오른 쪽 버튼부터 클릭하세요");
					termSearchCheck.css("color","red");
					termToWordApplication.css("display", "inline-block");
					
					//단어 신청 버튼 만들기
					
		     		}
		           },
		           error:function(e, status, xhr){	
		              console.log("ERROR : ", e);
		              alert("fail");
		           }
				});
			
			/* */
			
			},100);
		  
		  
		  
		  
		  
		  
});
</script>

<script>
$("#net-banking").on('click',"#termToWordApplication",function(){
	let popOption = "width = 900px, height=900px, top = 300px, left = 600px, scrollbars=yes";
	let openUrl = "${pageContext.request.contextPath}/popup/wordApplication1";
	openWin = window.open(openUrl, 'pop', popOption);
});

</script>

<%-- <script>
$(".info-item .btn").click(function () {
	  $(".container").toggleClass("log-in");
	});
	$(".container-form .btn").click(function () {
	  $(".container").addClass("active");
	});
</script>
<script type="text/javascript">
		serverDomainData="x";
		//이 변수에 들어있는 값이 여전히 x면 서버에서 도메인 데이터를 받는 데에 실패한 것이다.
		
		domainName="";
		domainDataType="";
		lastWord="";
		
		termEngAbbgWritten=""; 
		//짜여진 용어영문약어
		
		//각 검색창들의 영문약어들을 저장할 객체
		const termEngAbbg = {
				termEngAbbg1: 0,
				termEngAbbg2: 0,
				termEngAbbg3: 0,
				termEngAbbg4: 0,
				termEngAbbg5: 0,
				termEngAbbg6: 0,
				termEngAbbg7: 0,
				termEngAbbg8: 0,
				termEngAbbg9: 0
		}
		
		/* 도메인 신청서에서 다음 단계 누르면 */
		$('#theNextStepInTerm1').click(
			function(e){
				e.preventDefault();
				$('nav a').removeClass('active');
				//네비게이션 태그 안의 a태그의 클래스명이 active인 경우 해당 클래스를 삭제합니다.
				//removeClass('active'); 되어야 그 탭의 신청서가 안보입니다.
				
				//도메인 신청서가 보입니다. noshow 클래스가 안보이는 클래스입니다. 이것을 보이게 하는 것입니다.
				$('.settings').removeClass('noshow');
				$('.rightbox').children().not('.settings').addClass('noshow');
				//
				 console.log("클릭 진입");
				 //디버깅용
				 console.log("$(\"#termName\").val() "+$("#termName").val());
				 $("#termName").val("");
				 termname = "";
				 
				 for(let i = 1; i<10; i++)
				 {	//1번째 검색창부터 9번째 검색창까지 순회
					console.log(i+"번째 검색창에 있는 값:"+$("#wordSearch"+i).val());
				 
				 	//검색창에 값이 있으면
				 	if($("#wordSearch"+i).val()!==undefined)
				 	{//용어명에 합친다(용어명이 합성어일 수도 있어서)
					 termname+=$("#wordSearch"+i).val();
					 console.log("termname "+termname);
				 	}
				 }
				 $("#termName").val(termname);
				 //여기까지가 용어명 자동작성

				 //바로 전 단계인 도메인 신청서에서 값을 가져온다.
				 domainName= $("domainNmFromSubscription").val();
				 domainDataType= $("#domainTypeFromSubscription").val();
				 console.log(domainName);
				 console.log(domainDataType);
				 domainDataType=domainDataType.split('(');
				 console.log(domainDataType);
				 console.log("domainDataType[0] "+domainDataType[0]);
				 console.log("domainDataType[0][0] "+domainDataType[0][0]);
				 domainDataType1 = domainDataType[0][0].toLowerCase();
				 console.log("domainDataType[1] "+domainDataType[1]);
				 domainDataType2 = domainDataType[1].split(')');
				 console.log("domainDataType1 "+domainDataType1);
				 console.log("domainDataType2 "+domainDataType2);
				 domainName=lastWord+domainDataType1+domainDataType2[0];
				 console.log("domainName "+domainName);
				 $("#termDnm").val(domainName);
				 //여기까지가 용어 신청서에서 공통표준도메인명 자동작성
				 
				 
				 //여기부터 영어약문명을 합성해서 만들 것
				 //검색창 순회
				 for(let i = 1; i<10; i++)
				 {		
					console.log(i+"번째 검색창에 있는 값:"+$("#wordSearch"+i).val());	
					//단어명으로 영문약어명을 가져올 것이다.
					if($("#wordSearch"+i).val()!==undefined)
				 	{
					 $.ajax({
					            url: "getdomainengabbg",
			    	            async: false,
								type:"GET",
								processData:true,
								contentType:false,
								data:{wordname:$("#wordSearch"+i).val()},
								success:function(data, status, xhr){
								 	console.log("data"+i+" "+data);
								 	termEngAbbg[`termEngAbbg\${i}`] = data;
								 	console.log("termEngAbbg[`termEngAbbg${i}`] "+termEngAbbg[`termEngAbbg\${i}`]);	
								 	if(i==1)
								 	{
								 		termEngAbbgWritten+= termEngAbbg[`termEngAbbg\${i}`];
								 	}
								 	if(1<i)
								 	{
								 		termEngAbbgWritten+= "_"+termEngAbbg[`termEngAbbg\${i}`];
								 	}
								},
								error:function(e, status, xhr){	
								        console.log("ERROR : ", e);
								        alert("fail");
								  }
							})	
				 	}
				 }
					 console.log("진입!!!");
					 for(let i = 1; i<10; i++)
					 {	
						 console.log(termEngAbbg[`termEngAbbg${i}`]);
					 }
					 console.log("termEngAbbg "+termEngAbbg);
					 console.log("JSON.stringify(termEngAbbg) "+JSON.stringify(termEngAbbg));
					 console.log("termEngAbbgWritten "+termEngAbbgWritten);
					 $("#termEngAbbg").val(termEngAbbgWritten);
					 console.log("끝 진입!!!");
					 termEngAbbgWritten="";
			}
				//이제 도메인 데이터를 받아서 도메인 신청서에 뿌려줄 것입니다.		
		);
		
		/* 도메인 신청서에서 다음 단계 누르면 */
		$('#theNextStepInTerm2').click(
			function(e){
				e.preventDefault();
				$('nav a').removeClass('active');
				//네비게이션 태그 안의 a태그의 클래스명이 active인 경우 해당 클래스를 삭제합니다.
				//removeClass('active'); 되어야 그 탭의 신청서가 안보입니다.
				
				//도메인 신청서가 보입니다. noshow 클래스가 안보이는 클래스입니다. 이것을 보이게 하는 것입니다.
				$('.settings').removeClass('noshow');
				$('.rightbox').children().not('.settings').addClass('noshow');
				//
				 console.log("클릭 진입");
				 //디버깅용
				 console.log("$(\"#termNm\").val() "+$("#termNm").val());
				 $("#termNm").val("");
				 termname = "";
				 
				 for(let i = 1; i<10; i++)
				 {	//1번째 검색창부터 9번째 검색창까지 순회
					console.log(i+"번째 검색창에 있는 값:"+$("#wordSearch"+i).val());
				 
				 	//검색창에 값이 있으면
				 	if($("#wordSearch"+i).val()!==undefined)
				 	{//용어명에 합친다(용어명이 합성어일 수도 있어서)
					 termname+=$("#wordSearch"+i).val();
					 console.log("termname "+termname);
				 	}
				 }
				 $("#termNm").val(termname);
				 //여기까지가 용어명 자동작성

				 //바로 전 단계인 도메인 신청서에서 값을 가져온다.
				 domainName= $("domainNmFromSubscription").val();
				 domainDataType= $("#domainTypeFromSubscription").val();
				 console.log(domainName);
				 console.log(domainDataType);
				 domainDataType=domainDataType.split('(');
				 console.log(domainDataType);
				 console.log("domainDataType[0] "+domainDataType[0]);
				 console.log("domainDataType[0][0] "+domainDataType[0][0]);
				 domainDataType1 = domainDataType[0][0].toLowerCase();
				 console.log("domainDataType[1] "+domainDataType[1]);
				 domainDataType2 = domainDataType[1].split(')');
				 console.log("domainDataType1 "+domainDataType1);
				 console.log("domainDataType2 "+domainDataType2);
				 domainName=lastWord+domainDataType1+domainDataType2[0];
				 console.log("domainName "+domainName);
				 $("#termDnm").val(domainName);
				 //여기까지가 용어 신청서에서 공통표준도메인명 자동작성
				 
				 
				 //여기부터 영어약문명을 합성해서 만들 것
				 //검색창 순회
				 for(let i = 1; i<10; i++)
				 {		
					console.log(i+"번째 검색창에 있는 값:"+$("#wordSearch"+i).val());	
					//단어명으로 영문약어명을 가져올 것이다.
					if($("#wordSearch"+i).val()!==undefined)
				 	{
					 $.ajax({
					            url: "getdomainengabbg",
			    	            async: false,
								type:"GET",
								processData:true,
								contentType:false,
								data:{wordname:$("#wordSearch"+i).val()},
								success:function(data, status, xhr){
								 	console.log("data"+i+" "+data);
								 	termEngAbbg[`termEngAbbg\${i}`] = data;
								 	console.log("termEngAbbg[`termEngAbbg${i}`] "+termEngAbbg[`termEngAbbg\${i}`]);	
								 	if(i==1)
								 	{
								 		termEngAbbgWritten+= termEngAbbg[`termEngAbbg\${i}`];
								 	}
								 	if(1<i)
								 	{
								 		termEngAbbgWritten+= "_"+termEngAbbg[`termEngAbbg\${i}`];
								 	}
								},
								error:function(e, status, xhr){	
								        console.log("ERROR : ", e);
								        alert("fail");
								  }
							})	
				 	}
				 }
					 console.log("진입!!!");
					 for(let i = 1; i<10; i++)
					 {	
						 console.log(termEngAbbg[`termEngAbbg${i}`]);
					 }
					 console.log("termEngAbbg "+termEngAbbg);
					 console.log("JSON.stringify(termEngAbbg) "+JSON.stringify(termEngAbbg));
					 console.log("termEngAbbgWritten "+termEngAbbgWritten);
					 $("#termEngAbbg").val(termEngAbbgWritten);
					
					 console.log("끝 진입!!!");
					 termEngAbbgWritten="";
			}
				//이제 도메인 데이터를 받아서 도메인 신청서에 뿌려줄 것입니다.		
		);
		
		
		/* 단어 신청서에서 다음 단계 누르면  */
		$('#theNextStepInAWord').click(
			function(e){
				e.preventDefault();
				$('nav a').removeClass('active');
				//네비게이션 태그 안의 a태그의 클래스명이 active인 경우 해당 클래스를 삭제합니다.
				//removeClass('active'); 되어야 그 탭의 신청서가 안보입니다.
				
				//도메인 신청서가 보입니다. noshow 클래스가 안보이는 클래스입니다. 이것을 보이게 하는 것입니다.
				$('.subscription').removeClass('noshow');
				$('.rightbox').children().not('.subscription').addClass('noshow');
				//
				 console.log("클릭 진입");
				 //디버깅용
				 for(let i = 9; 0<i; i--)
				 {	//
					 console.log(i+"번째 검색창에 있는 값:"+$("#wordSearch"+i).val());	
					 
					 if($("#wordSearch"+i).val() === undefined)
					 {
						 continue;
					 }
					 else if($("#wordSearch"+i).val() !== undefined)
					 {
						 lastWord=$("#wordSearch"+i).val();
						
						 $.ajax({
					            url: "tothedomainapplicationform",
			    	            async: false,
								type:"GET",
								dataType:"json",
								processData:true,
								contentType:false,
								data:{wordname:$("#wordSearch"+i).val()},
								
								success:function(data, status, xhr){
								 	console.log("data "+data);
								 	//서버에서 메서드 앞에 @ResponseBody를 써주면 HTTP Body로 데이터를 담아서 보내준다.
								 	//즉, List<DomainVO> 타입 데이터값을 받았다.
								    var k = JSON.stringify(data);
								 	//일단 이걸 JSON화 시켜주자
								 	//그러면 JSON의 배열로 정제가 가능하다
								 	//즉,1번째 DomainVO는 1번째 JSON에 담기는 식이다.
								 	//왜 굳이 JSON화 시키냐고? 내 예상이긴 한데, 자바와 자바스크립트는 데이터 형식이 달라서
								 	//자바 식으로 만든어진 VO 데이터는 자바스크립트에서 바로 못사용하는 듯
								 	//그래서 한번 JSON화 시켜서 자바스크립트에서도 사용 가능하게 해주는 듯 하다.
								 	console.log("data[0] "+data[0]);
								 	console.log("data.length "+data.length);
								 	console.log("JSON.stringify(data).length "+JSON.stringify(data).length);
								    console.log("JSON.stringify(data) "+JSON.stringify(data));
								    //이 데이터를 Json화 시킨다
								    console.log("JSON.stringify(data)[0].domainNm "+JSON.stringify(data)[0].domainNm);
								    console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
								    console.log("JSON.stringify(data)[0] "+JSON.stringify(data)[0]);
								    console.log("JSON.stringify(data)[0] "+JSON.stringify(data)[0]);
								    if(data[0] !== undefined)
								    {//단어와 이름이 같은 도메인이 있어서 서버에서 받았다면
								    	$(".subscription1").css("display","none");
								    	//도메인 신청서 양식을 안보이게 한다.
								    	
								    		serverDomainData = data[0];
								    		console.log("serverDomainData "+serverDomainData);
								    	
								    		for(var count = 0; count < data.length; count++){  
								    			console.log("data["+count+"] "+data[count]);
								            	$('#domainNmFromSubscription').val($("#wordSearch"+i).val()) ;
								                $('#domainTypeFromSubscription').append("<option>"+data[count]+"</option>");
								            }
								    		$('.subscription2').removeClass('noshow');
											$('.rightbox').children().not('.subscription2')
													.addClass('noshow');
											
								    }
								    else if(data[0] === undefined)
								    {//단어와 이름이 같은 도메인이 없어서 서버에서 안받았다면
								    	$(".subscription2").css("display","none");
								    	//도메인 신청서 양식을 보이게 한다
								    	console.log("$('#domainNmFromSubscription2').val() "+$('domainNmFromSubscription2').val());
								    	console.log("serverDomainData "+serverDomainData);
								    }
								    
								  },
								  error:function(e, status, xhr){	
								              console.log("ERROR : ", e);
								              alert("fail");
								  }
								})
						 break;
					 }	
			     }
				
				//이제 도메인 데이터를 받아서 도메인 신청서에 뿌려줄 것입니다.
				
			}		
		);
	
		/*active button class onclick*/
		$('nav a').click(
				//네비게이션 태그 안의 a태그를 클릭할 때
				function(e) {
					e.preventDefault();
					//a 태그나 submit 태그는 누르게 되면 href 를 통해 이동하거나 , 창이 새로고침하여 실행됩니다.
					//preventDefault 를 통해 이러한 동작을 막아줄 수 있습니다.
					
					$('nav a').removeClass('active');
					//네비게이션 태그 안의 a태그의 클래스명이 active인 경우 해당 클래스를 삭제합니다.
					
					
					if($(this).hasClass("nonactive")===true){
						
					}
					//$(this).hasClass("active")===true 인 네비게이션버튼만 신청서 화면이 변경되게 한다.
					else{
						
						$(this).addClass('active');
						//이벤트가 발생한 태그에 클래스명을 active로 부여한다.
						
						if (this.id === !'payment') {
						//
						$('.payment').addClass('noshow');//해당 네비메뉴의 신청서를 안보이게 하는 클래스명이 noshow인 듯 하다.
					} else if (this.id === 'payment') {//좌측  네비게이션에서 id가 payment인 버튼
						//
						$('.payment').removeClass('noshow');
						$('.rightbox').children().not('.payment').addClass(
								'noshow');
					} 
					else if (this.id === 'profile') {//좌측  네비게이션에서 id가 profile인 버튼
						//
						$('.profile').removeClass('noshow');
						$('.rightbox').children().not('.profile').addClass(
								'noshow');
						$('.profile1').removeClass('noshow');
						$('.rightbox').children().not('.profile1').addClass(
								'noshow');
					} 
					else if (this.id === 'subscription') {//좌측  네비게이션에서 id가 payment 버튼
						//ajax를 통해 서버에서 받아온 도메인 값이 없으면
						//그에 맞는 도메인 신청서 양식을 보이게 한다.
						$('.subscription').removeClass('noshow');
						$('.rightbox').children().not('.subscription')
								.addClass('noshow');
						if(serverDomainData!="x")
						{//ajax를 통해 서버에서 받아온 도메인 값이 있으면
						 //그에 맞는 도메인 신청서 양식을 보이게 한다.
							$('.subscription2').removeClass('noshow');
							$('.subscription2').css('display','block');
							$('.rightbox').children().not('.subscription2')
									.addClass('noshow');
						}
					} 
					else if (this.id === 'privacy') {//좌측  네비게이션의 id가 privacy 버튼
						$('.privacy').removeClass('noshow');
						$('.rightbox').children().not('.privacy').addClass(
								'noshow');
					} 
					else if (this.id === 'settings') {//좌측  네비게이션의 id가 settings 버튼
						$('.settings').removeClass('noshow');
						$('.rightbox').children().not('.settings').addClass(
								'noshow');
					}
					}
					
					
					
				});
</script>

<script>
	
	/* append로 붙여준 html은 on을 붙여줘야 제이쿼리가 작동한다. */
	/* 각 신청서에 해당하는 스위치가 켜지면,신청서가 보이거나 사라질 것이다. */
	for (let i = 0; i < 10; i++){
		/* 반복문을 써준 이유는 스위치가 여러개이기 때문이다. */
		$(".textbox-wrapper").on('change','#customSwitch'+i,function(){
			
			console.log("진입0");
			if ($('#customSwitch'+i).is(':checked')) {
				/* 스위치가 켜지면 */
				console.log("진입1");
				$('.customSwitch'+i).css('display', 'block');
				/* 해당 신청서가 펼쳐진다(보인다) */
			} else {
				/* 스위치가 꺼지면 */
				console.log("진입2");
				$('.customSwitch'+i).css('display', 'none');
				/* 해당 신청서가 접힌다(안보인다) */
			}
		});
	}
		$(function() {
			
			$("#test").click(
			/* 테스트 버튼이 클릭되면 */
					function() {
						var wordName = $("#wordNm").val();
						/* 단어명 값을 가져온다 */
						var wordEngAbbreviation = $("#wordEngAbbn").val();
						/* 단어의 영문약어 값을 가져온다 */
						var wordEng = $("#wordEngNm").val();
						/* 단어의 영어 값을 가져온다 */
						var wordDescription = $("#wordExpln").val();
						/* 단어의 설명 값을 가져온다	 */
						
						if (wordName == '' || wordEngAbbreviation == ''
								|| wordEng == '' || wordDescription == '') {
							swal({
								title : "테스트 실패",
								text : "테스트가 실패했습니다. 신청양식을 전부 입력해주세요",
								icon : "resources/images/alert_cross.jpg",
								//"resources/images/alert_cross.jpg"
								//"warning"
								button : "확인",
							});
						} else {
							swal({
								title : "테스트 완료",
								text : "신청이 가능합니다.",
								icon : "success",
								button : "확인",
							});
						}
					});

		});
		$(document)
				.ready(
						function() {
							
							$(function(){
								for (let i = 0; i < 10; i++){
									
								$(".textbox-wrapper").on('keyup',"#wordSearch"+i,function(){
								//검색창에 문자를 입력하면 함수가 실행된다.
								//.textbox-wrapper 의 자식 #wordSearch(검색창)에게 keyup 이벤트가 실행된다면
								    console.log("keyup 진입");
								    /* 검색창에 있는 값 출력 */
								    
								    //디버깅용
									for(let i = 1; i<10; i++)
									{
										console.log(i+"번째 검색창에 있는 값:"+$("#wordSearch"+i).val());	
									}
								    
								    //자동완성 함수인 autocomplete()가 실행된다.
									$("#wordSearch"+i).autocomplete({
										source : function( request, response ) {
											// jquery Ajax로 비동기 통신한 후
											//json객체를 서버에서 내려받아서 리스트 뽑는 작업
									        $.ajax({
									        	//호출할 URL
									            url: "ajax/autocomplete",
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
									            	//return 된놈을 response() 함수내에 다음과 같이 정의해서 뽑아온다.
									                response( 
									                	$.map( result, function( item ) {
									                			return {
									                			//label : 화면에 보여지는 텍스트
									                			//value : 실제 text태그에 들어갈 값
									                			//본인은 둘다 똑같이 줬음
									                			//화면에 보여지는 text가 즉, value가 되기때문 
									                  				label: item.wordNm,
									                  				value: item.wordNm
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
										select: function( event, ui ) {
											//자동완성 선택 후 실행되는 함수다
											//그런데, 이 안에 곧바로 비동기 AJAX 통신을 실행시키면,
											//자동완성 선택 전의 단어가 서버로 간다. 속도가 너무 빨라서 그런 것 같다.
											//그래서 setTimeout() 함수로 자동완성으로 단어가 선택되면 0.1초 뒤에 서버로 전달되도록
											//그제서야 검색창의 단어가 자동완성 선택 이후의 값이 서버로 갈 것이다.
									
												var wordSearchCheck = $("#wordSearchCheck"+i);
												console.log("구간1: "+$("#wordSearch"+i).val());
												var parameter = encodeURI(encodeURIComponent($("#wordSearch"+i).val()));
												console.log("구간2: "+parameter);
												   $.ajax({
										               url: "http://localhost/springframework-xml-config-no-root/wordsearchcheck"+"?"+"wordname="+$("#wordSearch"+i).val(),
										               async: false,
										               type:"GET",
										               processData:false,
										               contentType:false,
										               success:function(data, status, xhr){
										               console.log("data "+data);
										               var k = JSON.stringify(data);
										               console.log("JSON.stringify(data) "+JSON.stringify(data));
										               console.log("JSON.stringify(data)[0].wordNm "+JSON.stringify(data)[0].wordNm);
										               console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
										           		
										               //디버깅용
										               for(let i = 1; i<10; i++)
													   {
														console.log(i+"번째 검색창에 있는 값:"+$("#wordSearch"+i).val());	
													   }
										               
										         	   if(data){
										         		//DB에 해당 값이 있으면
										         		console.log('Circlecheck가 나올 차례지롱');
										         		wordSearchCheck.attr("src", "<c:url value='/resources/videos/circle_check_animation.mp4'/>");
										         		data = JSON.stringify(data);
										         	   }else if(!data){
										         		//DB에 해당 값이 없으면
														console.log('Crosscheck가 나올 차례지롱');
														wordSearchCheck.attr("src","<c:url value='/resources/videos/cross_sign.mp4'/>");
										         		}
										             
										               },
										               error:function(e, status, xhr){	
										                  console.log("ERROR : ", e);
										                  alert("fail");
										               }
												})
									
										
										}
									});	
									
									
								var wordSearchCheck = $("#wordSearchCheck"+i);
								console.log("구간1: "+$("#wordSearch"+i).val());
								var parameter = encodeURI(encodeURIComponent($("#wordSearch"+i).val()));
								console.log("구간2: "+parameter);
								   $.ajax({
						               url: "http://localhost/springframework-xml-config-no-root/wordsearchcheck"+"?"+"wordname="+$("#wordSearch"+i).val(),
						               async: true,
						               type:"GET",
						               processData:false,
						               contentType:false,
						               success:function(data, status, xhr){
						               console.log("data "+data);
						               var k = JSON.stringify(data);
						               console.log("JSON.stringify(data) "+JSON.stringify(data));
						               console.log("JSON.stringify(data)[0].wordNm "+JSON.stringify(data)[0].wordNm);
						               console.log("JSON.stringify(data[0]) "+JSON.stringify(data[0]));
						               
						         	   if(data){
						         		//DB에 해당 값이 있으면
						         		console.log('Circlecheck가 나올 차례지롱');
						         		wordSearchCheck.attr("src", "<c:url value='/resources/videos/circle_check_animation.mp4'/>");
						         		data = JSON.stringify(data);
						         	   }else if(!data){
						         		//DB에 해당 값이 없으면
										console.log('Crosscheck가 나올 차례지롱');
										wordSearchCheck.attr("src","<c:url value='/resources/videos/cross_sign.mp4'/>");
						         		}
						               },
						               error:function(e, status, xhr){	
						                  console.log("ERROR : ", e);
						                  alert("fail");
						               }
								})
							})
							}
							
							})	
							
							
							
							var max = 10;
							var cnt = 1;
							$(".add-textbox")
									.on(
											"click",
											function(e) {
												e.preventDefault();
												if (cnt < max) {
													cnt++;
													console.log("cnt "+cnt);
													$(".textbox-wrapper")
															.append(`
													<!-- apennd() 메소드는 선택된 요소의 마지막에 새로운 요소나 콘텐츠를 추가할 수 있다. -->
													<div class="input-group">
													<div class="searchDiv">
														<!-- 250행부터 256행까지 스위치, input div label 모두 필요함 본체는 input checkbox임 -->
														<div class="custom-control custom-switch"
															style="display: inline-block;">
															<input type="checkbox" class="custom-control-input"
																id="customSwitch"> <label class="custom-control-label"
																id="customSwitchLabel"
																for="customSwitch"></label>
														</div>
														
														<!-- -->	
													
														<!-- 단어검색용 텍스트박스 -->
														<input type="text" id="wordSearch"
																placeholder="단어검색"
																style="padding-left: 10px; width: 300px">
														<!--  -->
															
														<!-- 마이너스 버튼 -->
														<button type="button" class="btn btn-danger remove-textbox">
											                <i class="glyphicon glyphicon-minus"></i>
											            </button>	
											            <!-- -->   
											            
											        	<!-- DB에 있는지 OX체크를 해준다. -->
														<img id="wordSearchCheck" >
														<video src="<c:url value='/resources/videos/circle_check_animation.mp4'/>" width=50 height=50 autoplay="autoplay" muted="muted"></video>
														<div class="video-button">
															<video id="wordSearchCheck" width=39 height=50
																autoplay="autoplay" muted="muted"></video>
														</div>
														<!--  -->
											             
													</div>
													
													<!-- 펼쳐지는 신청서다. 클래스 customSwitch1다. none이었다가 보일 것이다. -->
													<table border="1" cellspacing="0" cellpadding="0" width="90%"
														class="table customSwitch" style="display: none">
														<div class="customSwitch">
															<h1>단어</h1>
															<h2>단어명</h2>
															<input type="text" id="wordNm" class="customSwitch"
																name="wordNm"
																placeholder="단어명" style="padding-left: 10px;">
															/* <button class="btn">pay now</button> */
															<br> <br>
															<h2>단어영문약어명</h2>
															<input type="text" id="wordEngAbbn" class="customSwitch"
																name="wordEngAbbn"
																placeholder="단어영문약어명" style="padding-left: 10px;">
															/* <button class="btn">pay now</button> */
															<br> <br>
															<h2>단어영문명</h2>
															<input type="text" id="wordEngNm" class="customSwitch"
																name="wordEngNm"
																placeholder="단어영문명" style="padding-left: 10px;">
															/* <button class="btn">pay now</button>
															<button class="btn">change plan</button> */
															<br> <br>
															<h2>단어설명</h2>
															<textarea id="wordExpln" name="wordExpln" class="customSwitch" rows="3"
																cols="39"></textarea>
															/* <button class="btn">pay now</button> */
															<p></p>
														</div>
													</table>
													</div>
													<!--  -->	
													`);
													
													$("input[name=wordNm]").attr('name','wordNm'+cnt);
													$("input[name=wordEngAbbn]").attr('name','wordEngAbbn'+cnt);
													$("input[name=wordEngNm]").attr('name','wordEngNm'+cnt);
													$("input[name=wordExpln]").attr('name','wordExpln'+cnt);
													$("#wordNm").attr('id','wordNm'+cnt);
													$("#wordEngAbbn").attr('id','wordEngAbbn'+cnt);
													$("#wordEngNm").attr('id','wordEngNm'+cnt);
													$("#wordExpln").attr('id','wordExpln'+cnt);
													$("#wordSearch").attr('id','wordSearch'+cnt);
													$("#wordSearchCheck").attr('id','wordSearchCheck'+cnt);
													$("#customSwitch").attr('id','customSwitch'+cnt);
													$("#customSwitchLabel").attr('id','customSwitchLabel'+cnt);
													$("#customSwitchLabel"+cnt).attr('for','customSwitch'+cnt);
													$(".customSwitch").attr('class','customSwitch'+cnt);
												}
											});
							
							/*  */
							$(".textbox-wrapper").on(
									"click",
									".remove-textbox",
									function(e) {
										e.preventDefault();
										$(this).parents(".input-group")
												.remove();
										cnt--;
									});
						});
		
		
		for (let i = 0; i < 10; i++){
			/* 반복문을 써준 이유는 스위치가 여러개이기 때문이다. */
			$(".textbox-wrapper").on('change','#customSwitch'+i,function(){
				
				console.log("진입0");
				if ($('#customSwitch'+i).is(':checked')) {
					/* 스위치가 켜지면 */
					console.log("진입1");
					$('.customSwitch'+i).css('display', 'block');
					/* 해당 신청서가 펼쳐진다(보인다) */
				} else {
					/* 스위치가 꺼지면 */
					console.log("진입2");
					$('.customSwitch'+i).css('display', 'none');
					/* 해당 신청서가 접힌다(안보인다) */
				}
			});
		}
</script> --%>