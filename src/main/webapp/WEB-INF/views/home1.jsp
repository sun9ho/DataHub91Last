<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
<head>
	<!-- jQuery UI 라이브러리 -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	
	<!-- 슬라이더 관련 라이브러리 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,400;0,600;1,200;1,400;1,600&display=swap">
			
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header_main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/home1.css">

	<script>	
		var statusSeatchInput = true;
		function searchToggle(obj, evt){
		    var container = $(obj).closest('.search-wrapper');
	        if(!container.hasClass('active')){
	            container.addClass('active');
	            evt.preventDefault();
	            statusSeatchInput = true;
	        } else {
	            /* container.removeClass('active');
	            clear input
	            container.find('.search-input').val('');
	            statusSeatchInput = false; */
	        }
		}
	</script>
		
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
							$(this).hide();
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
	
	
	<!-- form   -->
	<script>
		function clickSearchIcon() {
			var form = document.querySelector("#myForm");
			if(statusSeatchInput) {			
				var autocompleteText = $("#autocompleteText").val();
				console.log(autocompleteText);
				
				$.ajax({
					url:"ajax/termdetail",			
					data: "autocompleteText=" +autocompleteText,	
						//{autocompleteText="autocomplete"}
		       	    success: function( result ) {	  
						$("#termNm").html(result.termNm);       	
						$("#termEngAbbn").html(result.termEngAbbn);       	
						$("#termDnm").html(result.termDnm);
						
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
	
	<script> 
		var bDisplay = true; 
		function doDisplay(){ 	
		    var con = document.getElementById("myDIV"); 	
		    if(con.style.display=='none'){ 		
		        con.style.display = 'block'; 	
		    }else{ 		
		        con.style.display = 'none'; 	
		    } 
		} 
	</script> 
	
	
	<script>
		$(function(){
			$("#autocompleteText").autocomplete({
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
				select: function( event, ui ) {},
				//input창에 글씨쓰고 창이 뜰 떄까지 걸리는 시간 설정
				delay: 100,
			});
			
			/* $("label").autocomplete({
		        source: blahBlah,
		        open: function(event, ui) {
		            $(this).autocomplete("widget").css({
		                "width": 400
		                "helght": 500
		            });
		        }
		    }); */
			
		})
	</script>
	
	<!-- 카드 css 부분 -->
	
	<script>
		function background(c1, c2) {
		  return {
		    background: '-moz-linear-gradient(15deg, ' + c1 + ' 50%, ' + c2 + ' 50.1%)',
		    background: '-o-linear-gradient(15deg, ' + c1 + ', ' + c2 + ' 50.1%)',
		    background: '-webkit-linear-gradient(15deg, ' + c1 + ' 50%, ' + c2 + ')',
		    background: '-ms-linear-gradient(15deg, ' + c1 + ' 50%, ' + c2 + ' 50.1%)',
		    background: 'linear-gradient(15deg, ' + c1 + ' 50%,' + c2 + ' 50.1%)'
		  }
		}
	
		function changeBg(c1, c2) {
		  $('div.bg').css(background(c1, c2)).fadeIn(700, function() {
		    $('body').css(background(c1, c2));
		    $('.bg').hide();
		  })
		  $('span.bg').css({
		    background: '-moz-linear-gradient(135deg, ' + c1 + ', ' + c2 + ')',
		    background: '-o-linear-gradient(135deg, ' + c1 + ', ' + c2 + ')',
		    background: '-webkit-linear-gradient(135deg, ' + c1 + ', ' + c2 + ')',
		    background: '-ms-linear-gradient(135deg, ' + c1 + ', ' + c2 + ')',
		    background: 'linear-gradient(135deg, ' + c1 + ',' + c2 + ')'
		  });
		}

		
		$(function(){
			  $('.bxslider').bxSlider({
			    mode: 'fade',
			    captions: true,
			    slideWidth: 550,
			    auto : true, //자동으로 애니메이션 시작
		        speed : 500, //애니메이션 속도
		        pause : 5000, //애니메이션 유지시간(1000 = 1초)
		        touchEnabled: false,  //슬라이더에서 버튼 클릭 시 페이지 이동이 가능하게 함
		        mode : 'horizontal', //슬라이드 모드('fade','horizontal',vertcal' 이 있음)
		        /* autoControls : true , //시작 및 중지버튼이 보여짐 */
		        
			    
			  });
		}); 
		
	</script>
	
	<script>
		$(function(){
			let card = document.getElementsByClassName("card");
			
			setTimeout(function(){ 
				for(var i =0; i<card.length; i++) {
	 				card[i].classList.remove("preShow")
				}
			},2000);
		});
	</script>
	
</head>
	
<body>
	<%@include file="/WEB-INF/views/layout/header_main.jsp"%>
	<div class="main-container">
			<div id="content-center">
				<div class="main-text">
					<div class="main-text-left">
						<h2>FOR SMART DEVELOPERS</h2>
						<br>
						<h1>
							<b>데이터베이스<br>용어사전
							</b>
						</h1>
						<h3>
							Developers, stop worrying about naming. <br>This site is a
							terminology dictionary for developers. <br>If you want to add
							words, domains, and terms, please apply. <br>
							Find your Database terms conveniently!
							<!-- We will give you manager approval through the review process -->
						</h3>
					</div>
		
		
					<div class="main-text-right">
						<div class="search-wrapper active">
							<div class="input-holder">		
								<!-- 비동기로 검색버튼 눌렀을 때 데이터 보내기 위한 form -->
								<form id="myForm" action="ajax/termdetail" method="get">			  
									<input type="text" name="termNm" id="autocompleteText" class="search-input"
										placeholder="Term to search" />
									<button type="button" class="search-icon" value="submit" onclick="clickSearchIcon()">	
										<span></span>
									</button>
								</form>														
							</div>						
							<!-- <span class="close" onclick="searchToggle(this, event)"></span> -->
					</div>
							
							<!-- 가져온 카드 소스 {https://codepen.io/supah/pen/mPbLqp} -->
									<div id="termo" style="display:none">
						            <div class="shop-card">							  
									  <div class="desc">								
									  		<div id="term_detail">		
									  			<div class="box blue">
												    <span class="title"><span id="termNm"></span></span> 
												    <ul> 
												        <li><span id="termEngAbbn"></span></li> 
												        <li><span id="termDnm"></span></li> 
												    </ul>
												</div>
																					
											</div>										  		  
									
									</div>	
									</div>
									</div>
									
								   <div class="termx">
								   <div id="termx" style="display:none">						           
						           <div class="shop-card">		
						           	 	<p>용어가 DB에 존재하지 않습니다.</p>					  
									  <div class="cta">												 				    
									    <button class="btn">용어 신청서 작성하기<span class="bg"></span></button>
									  </div>
									</div>
									</div>	
						    		</div>
					</div>				
					
				</div>		
			</div>								
		
			<div class="content-bottom">
		
				<div class="content-bottom-line"></div>
		
				<div class="bottom-left">
					<img src="${pageContext.request.contextPath}/resources/images/mainimage.png" width="550px"
						height="360px">
		
				</div>
		
				<div class="bottom-right">
					<div class="bxslider">
						<!-- <div class="container center"> -->
					<div class="cookie-warning">
						<div class="title">최근 추가된 용어 🍪</div>
						<div class="tabs_wrap">
							<ul>
								<li data-tabs="male" class="active">용어</li>
								<li data-tabs="female">단어</li>
								<li data-tabs="both">도메인</li>
							</ul>
						</div>
						<div class="cookie-text">
							<ul>
								<li class="item_wrap male online"><a href="">과제번호&nbsp&nbsp&nbspASMT_NM</a></li>
								<li class="item_wrap male online"><a href="">구역명&nbsp&nbsp&nbspZONE_NM</a></li>
								<li class="item_wrap male online"><a href="">금융기관명&nbsp&nbsp&nbspFNST_NM</a></li>
								<li class="item_wrap male online"><a href="">내선번호&nbsp&nbsp&nbspEXT_NO</a></li>
								<li class="item_wrap male online"><a href="">답변일자&nbsp&nbsp&nbspANS_YMD</a></li>
							</ul>
						</div>
						<div class="cookie-btn-wrapper">
							<a href="<c:url value='/term'/>"><button class="cookie-btn">용어
									목록</button></a> <a href="<c:url value='/applyword'/>"><button
									class="cookie-btn">용어 신청</button></a>
						</div>
					</div>
					<!-- </div> -->
						<div class="cookie-warning">
							<div class="title">최근 추가된 단어 🍪</div>
						<div class="tabs_wrap">
							<ul>
								<li data-tabs="male">용어</li>
								<li data-tabs="female" class="active">단어</li>
								<li data-tabs="both">도메인</li>
							</ul>
						</div>
							<div class="cookie-text">
								<ul>
									<li class="item_wrap male online"><a href="">교육과정&nbsp&nbsp&nbspCRCLM</a></li>
									<li class="item_wrap male online"><a href="">다운로드&nbsp&nbsp&nbspDWNLD</a></li>
									<li class="item_wrap male online"><a href="">대분류&nbsp&nbsp&nbspLCLSF</a></li>
									<li class="item_wrap male online"><a href="">소득세&nbsp&nbsp&nbspINCTX</a></li>
									<li class="item_wrap male online"><a href="">수정자&nbsp&nbsp&nbspMDFR</a></li>
								</ul>
							</div>
							<div class="cookie-btn-wrapper">
								<a href="<c:url value='/word'/>"><button class="cookie-btn">단어 목록</button></a>
								<a href="<c:url value='/applyword'/>"><button class="cookie-btn">단어 신청</button></a>
							</div>
						</div>
						<div class="cookie-warning">
							<div class="title">최근 추가된 도메인 🍪</div>
						<div class="tabs_wrap">
							<ul>
								<li data-tabs="male">용어</li>
								<li data-tabs="female">단어</li>
								<li data-tabs="both" class="active">도메인</li>
							</ul>
						</div>
							<div class="cookie-text">
								<ul>
									<li class="item_wrap male online"><a href="">계좌번호V20</a></li>
									<li class="item_wrap male online"><a href="">신용카드번호V16</a></li>
									<li class="item_wrap male online"><a href="">여권번호C9</a></li>
									<li class="item_wrap male online"><a href="">주민등록번호C13</a></li>
									<li class="item_wrap male online"><a href="">사업자등록번호C10</a></li>
								</ul>
							</div>
							<!-- <div class="cookie-btn-btn"> -->
							<div class="cookie-btn-wrapper">
								<a href="<c:url value='/domain'/>"><button class="cookie-btn">도메인 목록</button></a>
								<a href="<c:url value='/applyword'/>"><button class="cookie-btn">도메인 신청</button></a>
							</div>
							<!-- </div> -->
						</div>
					</div>
		
				</div>
		
			</div>
		</div>
	 
	 	<div class="modal hidden">
		<div class="bg"></div>
		<div class="modalBox">
			<p>로그아웃 하시겠습니까?</p>
			<div class="modalBtn">
			<a href='<c:url value='/logout'/>'><button class="logoutBtn" id="btn_logout">Yes</button></a>
			<button class="closeBtn">No</button>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	<!-- </div> -->
</body>
</html>
<script>
  const open = () => {
    document.querySelector(".modal").classList.remove("hidden");
  }

  const close = () => {
    document.querySelector(".modal").classList.add("hidden");
  }

  document.querySelector(".openBtn").addEventListener("click", open);
  document.querySelector(".closeBtn").addEventListener("click", close);
  document.querySelector(".logoutBtn").addEventListener("click", close);
  document.querySelector(".bg").addEventListener("click", close);

</script>
