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
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<!-- 신청서용 링크 리소스 -->
<link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>
<!--  -->

<style>
<%-- <%@include file="/resources/css/applytest_form4.css"%> --%>
</style>

<link href="https://www.cssscript.com/demo/sticky.css" rel="stylesheet" type="text/css">	
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/popup/wordApplication1.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/footer.css">
   
<!-- 자동완성 CSS  -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
 
<!-- 이 링크들이 안먹어서 직접 입력 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<body>

<!-- 신청서 폼 -->
<div class="container py-5">
    <!-- For demo purpose -->
    <div class="">
        <div class="col-lg-8 mx-auto text-center">
            <h1 class="display-6" id="applicationTitle">용어 신청서</h1>
        </div>
    </div> <!-- End -->
        
            <div class="card">
                    <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
                        <!-- Credit card form tabs -->
                       
                            <div class="nav-item" id="popup-question"> 용어는 몇개의 단어로 이루어져 있습니까? 
   							<label for="exampleFormControlSelect1"></label>
    						<select class="form-control" id="exampleFormControlSelect1">
    							  <option>0</option>
    							  <option>1</option>
    							  <option>2</option>
     							  <option>3</option>
   							      <option>4</option>
    						</select>
                            </div>
                            
                            <div id="wordsGroupInATerm">
                            <!-- 여기에 단어신청서들이 생기 -->
                            </div>
                            
                            <div id="popup-domain" class="tab-pane dycustom-fade pt-3">
                            
							<form method="post" action="<c:url value='/domain/insert'/>">
								<div class="domainGroup1">
									<div class="form-group">
										<label for="domainNm">
											<h6 style="display: inline-block">도메인명</h6><!-- DB에 있는지 OX체크를 해준다. -->
											<h6 id="domainSearchCheck" style="display: inline-block; color:blue;">(자동으로
												검색됩니다.)</h6> <!--  -->
										</label> <input type="text" id="domainNm" name="domainNm"
											placeholder="도메인명" required
											class="form-control">
									</div>
									<div class="form-group">
										<label for="domainGnm">
											<h6 >도메인그룹명</h6>
											
										</label> <input type="text" id="domainGnm" name="domainGnm"
											placeholder="도메인그룹명" required
											class="form-control">
									</div>
									<div class="form-group">
										<label for="domainCatg">
											<h6 style="display: inline-block">도메인분류명</h6>
											
										</label> <input type="text" id="domainCatg" name="domainCatg"
											placeholder="도메인분류명" required
											class="form-control">
									</div>
								<button type="button" id="domainToWord"
									class="domainButton subscribe btn btn-primary btn-block shadow-sm">
									뒤로가기</button>
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
											class="form-control" readonly>
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
											class="form-control" readonly>
									</div>
									<div class="form-group">
										<label for="domainExpln">
											<h6>도메인설명</h6>
										</label> <input type="text" id="domainExpln" name="domainExpln"
											placeholder="도메인설명" required
											class="form-control">
									</div>
									<button type="submit" id="domainSubmit"
									class="domainButton subscribe btn btn-primary btn-block shadow-sm">
									제출</button>
								
								</div>

							</form>

						</div>
                    </div>               
            </div>
</div>
    

<%@include file="/WEB-INF/views/layout/footer.jsp"%>
</body>
</html>
<script>

$(function(){
	
	
	$('#exampleFormControlSelect1').change(function(){
		//console.log($(this).val());
		var numberOfWordsInATerm=$(this).val();
		if(numberOfWordsInATerm==0)
		{	
			$("#wordsGroupInATerm").empty();
			/* 이미 있는 검색창 지움 */
		}
		if(numberOfWordsInATerm==1)
		{	
			$("#wordsGroupInATerm").empty();
			/* 이미 있는 검색창 지움 */
			$("#wordsGroupInATerm").append(`
		<form method="post" action="<c:url value='/popup/word/insert'/>" id="applicationSubmitForm1">
				<div class="form-group popupSearchClass">
					<label for="wordNm1" class="titleLabel">
						<h6 style="display: inline-block">1번째 단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
						<h6 id="wordSearchCheck1" style="display: inline-block; color:blue;">(자동으로
							검색됩니다.)</h6> <!--  -->
						<button type="button" id="spreadWordApplication1"
								class="subscribe btn btn-primary btn-block shadow-sm"
								style="display: none;">
								펼치기</button><!--  -->
					</label> <input type="text" id="wordNm1" name="wordNm1"
						placeholder="단어명" required class="form-control ">
				</div>
				
			<div class="form-group folding-form-group1">
				<label for="wordEngNm1">
					<h6>단어영문명</h6>
				</label> <input type="text" id="wordEngNm1" name="wordEngNm1"
					placeholder="단어영문명" class="form-control ">
			</div>
			<div class="form-group folding-form-group1">
				<label for="wordEngAbbn1">
					<h6>단어영문약어명</h6>
				</label> <input type="text" id="wordEngAbbn1" name="wordEngAbbn1"
					placeholder="단어영문약어명" class="form-control ">
			</div>
			<div class="form-group folding-form-group1">
				<label for="wordExpln1">
					<h6>단어설명</h6>
				</label> <input type="text" id="wordExpln1" name="wordExpln1"
					placeholder="단어설명" class="form-control ">
			</div>

				<button type="submit" id="wordToDomain1"
					class="subscribe btn btn-primary btn-block shadow-sm">
				도메인 선택 및 신청 단계로 이동</button>
		</form>
				`);
		}
		else if(numberOfWordsInATerm==2)
		{
			$("#wordsGroupInATerm").empty();
			$("#wordsGroupInATerm").append(`
			
				<form method="post" action="<c:url value='/popup/word/insert'/>" id="applicationSubmitForm2">
				<div class="wordApplicationGroup1">
				
					<div class="form-group popupSearchClass">
						<label for="wordNm1" class="titleLabel">
							<h6 style="display: inline-block">1번째 단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
							<h6 id="wordSearchCheck1" style="display: inline-block; color:blue;">(자동으로
								검색됩니다.)</h6> <!--  -->
							<button type="button" id="spreadWordApplication1"
									class="subscribe btn btn-primary btn-block shadow-sm"
									style="display: none;">
									펼치기</button><!--  -->
						</label> <input type="text" id="wordNm1" name="wordNm1"
							placeholder="단어명" required class="form-control ">
					</div>
					
				<div class="form-group folding-form-group1">
					<label for="wordEngNm1">
						<h6>단어영문명</h6>
					</label> <input type="text" id="wordEngNm1" name="wordEngNm1"
						placeholder="단어영문명" class="form-control ">
				</div>
				<div class="form-group folding-form-group1">
					<label for="wordEngAbbn1">
						<h6>단어영문약어명</h6>
					</label> <input type="text" id="wordEngAbbn1" name="wordEngAbbn1"
						placeholder="단어영문약어명" class="form-control ">
				</div>
				<div class="form-group folding-form-group1">
					<label for="wordExpln1">
						<h6>단어설명</h6>
					</label> <input type="text" id="wordExpln1" name="wordExpln1"
						placeholder="단어설명" class="form-control ">
				</div>
			</div>
			
			
			<div class="wordApplicationGroup2">	
			<div class="form-group popupSearchClass">
			<label for="wordNm2" class="titleLabel">
				<h6 style="display: inline-block">2번째 단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
				<h6 id="wordSearchCheck2" style="display: inline-block; color:blue;">(자동으로
					검색됩니다.)</h6> <!--  -->
				<button type="button" id="spreadWordApplication2"
					class="subscribe btn btn-primary btn-block shadow-sm"
					style="display: none;">
					펼치기</button><!--  -->
			</label> <input type="text" id="wordNm2" name="wordNm2"
			placeholder="단어명" required class="form-control ">
			</div>

			<div class="form-group folding-form-group2">	
			<label for="wordEngNm2">
				<h6>단어영문명</h6>
			</label> <input type="text" id="wordEngNm2" name="wordEngNm2"
				placeholder="단어영문명" class="form-control ">
			</div>
			<div class="form-group folding-form-group2">
			<label for="wordEngAbbn2">
				<h6>단어영문약어명</h6>
			</label> <input type="text" id="wordEngAbbn2" name="wordEngAbbn2"
				placeholder="단어영문약어명" class="form-control ">
			</div>
			<div class="form-group folding-form-group2">
			<label for="wordExpln2">
				<h6>단어설명</h6>
			</label> <input type="text" id="wordExpln2" name="wordExpln2"
				placeholder="단어설명" class="form-control ">
			</div>
			</div>

			<button type="submit" id="wordToDomain2"
					class="subscribe btn btn-primary btn-block shadow-sm">
			도메인 선택 및 신청 단계로 이동</button>
				
		</form>
			`);
		}
		else if(numberOfWordsInATerm==3)
		{
			$("#wordsGroupInATerm").empty();
			$("#wordsGroupInATerm").append(`
					<form method="post" action="<c:url value='/popup/word/insert'/>" id="applicationSubmitForm3">
					<div class="wordApplicationGroup1">
						
						<div class="form-group popupSearchClass">
								<label for="wordNm1" class="titleLabel">
									<h6 style="display: inline-block">1번째 단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
									<h6 id="wordSearchCheck1" style="display: inline-block; color:blue;">(자동으로
										검색됩니다.)</h6> <!--  -->
									<button type="button" id="spreadWordApplication1"
											class="subscribe btn btn-primary btn-block shadow-sm"
											style="display: none;">
											펼치기</button><!--  -->
								</label> <input type="text" id="wordNm1" name="wordNm1"
									placeholder="단어명" required class="form-control ">
						</div>
							
						<div class="form-group folding-form-group1">
							<label for="wordEngNm1">
								<h6>단어영문명</h6>
							</label> <input type="text" id="wordEngNm1" name="wordEngNm1"
								placeholder="단어영문명" class="form-control ">
						</div>
						<div class="form-group folding-form-group1">
							<label for="wordEngAbbn1">
								<h6>단어영문약어명</h6>
							</label> <input type="text" id="wordEngAbbn1" name="wordEngAbbn1"
								placeholder="단어영문약어명" class="form-control ">
						</div>
						<div class="form-group folding-form-group1">
							<label for="wordExpln">
								<h6>단어설명</h6>
							</label> <input type="text" id="wordExpln1" name="wordExpln1"
								placeholder="단어설명" class="form-control ">
						</div>
						
						<div class="form-group popupSearchClass">
						<label for="wordNm3" class="titleLabel">
							<h6 style="display: inline-block">3번째 단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
							<h6 id="wordSearchCheck3" style="display: inline-block; color:blue;">(자동으로
								검색됩니다.)</h6> <!--  -->
							<button type="button" id="spreadWordApplication3"
									class="subscribe btn btn-primary btn-block shadow-sm"
									style="display: none;">
									펼치기</button><!--  -->
						</label> <input type="text" id="wordNm3" name="wordNm3"
							placeholder="단어명" required class="form-control ">
						</div>
					
						<div class="form-group folding-form-group3">
							<label for="wordEngNm">
							<h6>단어영문명</h6>
						</label> <input type="text" id="wordEngNm3" name="wordEngNm3"
							placeholder="단어영문명" class="form-control ">
						</div>
						<div class="form-group folding-form-group3">
							<label for="wordEngAbbn">
							<h6>단어영문약어명</h6>
						</label> <input type="text" id="wordEngAbbn3" name="wordEngAbbn3"
							placeholder="단어영문약어명" class="form-control ">
						</div>
						<div class="form-group folding-form-group3">
							<label for="wordExpln">
							<h6>단어설명</h6>
						</label> <input type="text" id="wordExpln3" name="wordExpln3"
							placeholder="단어설명" class="form-control ">
				</div>
						
				</div>
					
				<div class="wordApplicationGroup2">
				
				<div class="form-group popupSearchClass">
				<label for="wordNm2" class="titleLabel">
					<h6 style="display: inline-block">2번째 단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
					<h6 id="wordSearchCheck2" style="display: inline-block; color:blue;">(자동으로
						검색됩니다.)</h6> <!--  -->
					<button type="button" id="spreadWordApplication2"
						class="subscribe btn btn-primary btn-block shadow-sm"
						style="display: none;">
						펼치기</button><!--  -->
				</label> <input type="text" id="wordNm2" name="wordNm2"
				placeholder="단어명" required class="form-control ">
				</div>

				<div class="form-group folding-form-group2">	
				<label for="wordEngNm2">
					<h6>단어영문명</h6>
				</label> <input type="text" id="wordEngNm2" name="wordEngNm2"
					placeholder="단어영문명" class="form-control ">
				</div>
				<div class="form-group folding-form-group2">
				<label for="wordEngAbbn2">
					<h6>단어영문약어명</h6>
				</label> <input type="text" id="wordEngAbbn2" name="wordEngAbbn2"
					placeholder="단어영문약어명" class="form-control ">
				</div>
				<div class="form-group folding-form-group2">
				<label for="wordExpln2">
					<h6>단어설명</h6>
				</label> <input type="text" id="wordExpln2" name="wordExpln2"
					placeholder="단어설명" class="form-control ">
				</div>
				
				
				</div>

				<button type="submit" id="wordToDomain3"
						class="subscribe btn btn-primary btn-block shadow-sm">도메인 선택 및 신청 단계로 이동</button>
			 </form>
			`);
		}
		else if(numberOfWordsInATerm==4)
		{
			$("#wordsGroupInATerm").empty();
			$("#wordsGroupInATerm").append(`
				<form method="post" action="<c:url value='/popup/word/insert'/>" id="applicationSubmitForm4">
				<div class="wordApplicationGroup1">
					
					<div class="form-group popupSearchClass">
							<label for="wordNm1" class="titleLabel">
								<h6 style="display: inline-block">1번째 단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
								<h6 id="wordSearchCheck1" style="display: inline-block; color:blue;">(자동으로
									검색됩니다.)</h6> <!--  -->
								<button type="button" id="spreadWordApplication1"
										class="subscribe btn btn-primary btn-block shadow-sm"
										style="display: none;">
										펼치기</button><!--  -->
							</label> <input type="text" id="wordNm1" name="wordNm1"
								placeholder="단어명" required class="form-control ">
					</div>
						
					<div class="form-group folding-form-group1">
						<label for="wordEngNm">
							<h6>단어영문명</h6>
						</label> <input type="text" id="wordEngNm1" name="wordEngNm1"
							placeholder="단어영문명" class="form-control ">
					</div>
					<div class="form-group folding-form-group1">
						<label for="wordEngAbbn">
							<h6>단어영문약어명</h6>
						</label> <input type="text" id="wordEngAbbn1" name="wordEngAbbn1"
							placeholder="단어영문약어명" class="form-control ">
					</div>
					<div class="form-group folding-form-group1">
						<label for="wordExpln">
							<h6>단어설명</h6>
						</label> <input type="text" id="wordExpln1" name="wordExpln1"
							placeholder="단어설명" class="form-control ">
					</div>
					
					<div class="form-group popupSearchClass">
					<label for="wordNm3" class="titleLabel">
						<h6 style="display: inline-block">3번째 단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
						<h6 id="wordSearchCheck3" style="display: inline-block; color:blue;">(자동으로
							검색됩니다.)</h6> <!--  -->
						<button type="button" id="spreadWordApplication3"
								class="subscribe btn btn-primary btn-block shadow-sm"
								style="display: none;">
								펼치기</button><!--  -->
					</label> <input type="text" id="wordNm3" name="wordNm3"
						placeholder="단어명" required class="form-control ">
					</div>
				
					<div class="form-group folding-form-group3">
						<label for="wordEngNm">
						<h6>단어영문명</h6>
					</label> <input type="text" id="wordEngNm3" name="wordEngNm3"
						placeholder="단어영문명" class="form-control ">
					</div>
					<div class="form-group folding-form-group3">
						<label for="wordEngAbbn">
						<h6>단어영문약어명</h6>
					</label> <input type="text" id="wordEngAbbn3" name="wordEngAbbn3"
						placeholder="단어영문약어명" class="form-control ">
					</div>
					<div class="form-group folding-form-group3">
						<label for="wordExpln">
						<h6>단어설명</h6>
					</label> <input type="text" id="wordExpln3" name="wordExpln3"
						placeholder="단어설명" class="form-control ">
			</div>
					
			</div>
				
			<div class="wordApplicationGroup2">
			
			<div class="form-group popupSearchClass">
			<label for="wordNm2" class="titleLabel">
				<h6 style="display: inline-block">2번째 단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
				<h6 id="wordSearchCheck2" style="display: inline-block; color:blue;">(자동으로
					검색됩니다.)</h6> <!--  -->
				<button type="button" id="spreadWordApplication2"
					class="subscribe btn btn-primary btn-block shadow-sm"
					style="display: none;">
					펼치기</button><!--  -->
			</label> <input type="text" id="wordNm2" name="wordNm2"
			placeholder="단어명" required class="form-control ">
			</div>

			<div class="form-group folding-form-group2">	
			<label for="wordEngNm">
				<h6>단어영문명</h6>
			</label> <input type="text" id="wordEngNm2" name="wordEngNm2"
				placeholder="단어영문명" class="form-control ">
			</div>
			<div class="form-group folding-form-group2">
			<label for="wordEngAbbn">
				<h6>단어영문약어명</h6>
			</label> <input type="text" id="wordEngAbbn2" name="wordEngAbbn2"
				placeholder="단어영문약어명" class="form-control ">
			</div>
			<div class="form-group folding-form-group2">
			<label for="wordExpln">
				<h6>단어설명</h6>
			</label> <input type="text" id="wordExpln2" name="wordExpln2"
				placeholder="단어설명" class="form-control ">
			</div>
			
			
			<div class="form-group popupSearchClass">
			<label for="wordNm4" class="titleLabel">
				<h6 style="display: inline-block">4번째 단어명</h6> <!-- DB에 있는지 OX체크를 해준다. -->
				<h6 id="wordSearchCheck4" style="display: inline-block; color:blue;">(자동으로
					검색됩니다.)</h6> <!--  -->
				<button type="button" id="spreadWordApplication4"
						class="subscribe btn btn-primary btn-block shadow-sm"
						style="display: none;">
						펼치기</button><!--  -->
				</label> <input type="text" id="wordNm4" name="wordNm4"
				placeholder="단어명" required class="form-control ">
			</div>
		
			<div class="form-group folding-form-group4">
				<label for="wordEngNm">
					<h6>단어영문명</h6>
				</label> <input type="text" id="wordEngNm4" name="wordEngNm4"
					placeholder="단어영문명" class="form-control ">
			</div>
			<div class="form-group folding-form-group4">
				<label for="wordEngAbbn">
					<h6>단어영문약어명</h6>
				</label> <input type="text" id="wordEngAbbn4" name="wordEngAbbn4"
					placeholder="단어영문약어명" class="form-control ">
			</div>
			<div class="form-group folding-form-group4">
				<label for="wordExpln">
				<h6>단어설명</h6>
				</label> <input type="text" id="wordExpln4" name="wordExpln4"
						placeholder="단어설명" class="form-control ">
			</div>
			
			</div>

			<button type="submit" id="wordToDomain4"
					class="subscribe btn btn-primary btn-block shadow-sm">도메인 선택 및 신청 단계로 이동</button>
		 </form>
			`);
		}
	});
});

</script>
<!-- 신청서 탭 자바스크립트 -->

<script>
$(function(){
	
	$("#popup-domain").on('click',"#domainToWord",function(e){
		e.preventDefault();
		
	/* 	$.ajax({
			  async: true,
			  url  : "${pageContext.request.contextPath}/popup/word/insert",
			  type : "POST",
			  data : wordapplicationform,
			  dataType: "json",
			  success : function(){
			    alert("성공했네?!");
			  }
		}) */
		
		$("#wordsGroupInATerm").removeClass("dycustom-fade");
		$("#wordsGroupInATerm").addClass("dycustom-active");
		
		console.log("여기 진입1");
		$("#exampleFormControlSelect1").removeClass("dycustom-fade");
		$("#exampleFormControlSelect1").addClass("dycustom-active");
		console.log("여기 진입1-1");
		/* $("#popup-question").text("도메인 신청서지롱"); */
		$("#popup-question").contents()[0].textContent="용어는 몇개의 단어로 이루어져 있습니까?";
		$("#popup-domain").removeClass("dycustom-active");
		$("#popup-domain").addClass("dycustom-fade");	
	});

for(let i=1; i<=6; i++)
{
	
$("#wordsGroupInATerm").on('click',"#wordToDomain"+i,function(e){
	e.preventDefault();
	
	console.log("에이작스 보냄 i "+i);
	var wordapplicationform = $("#applicationSubmitForm"+i).serialize();
	
/* 	$.ajax({
		  async: true,
		  url  : "${pageContext.request.contextPath}/popup/word/insert",
		  type : "POST",
		  data : wordapplicationform,
		  dataType: "json",
		  success : function(){
		    alert("성공했네?!");
		  }
	}) */
	
	$("#wordsGroupInATerm").removeClass("dycustom-active");
	$("#wordsGroupInATerm").addClass("dycustom-fade");
	
	console.log("여기 진입2");
	$("#exampleFormControlSelect1").removeClass("dycustom-active");
	$("#exampleFormControlSelect1").addClass("dycustom-fade");
	console.log("여기 진입2-2");
	/* $("#popup-question").text("도메인 신청서지롱"); */
	$("#popup-question").contents()[0].textContent="마지막 단어와 이름이 같은 도메인을 찾습니다.";
	$("#popup-question").css("color","blue");
	$("#popup-domain").removeClass("dycustom-fade");
	$("#popup-domain").addClass("dycustom-active");
	
});
	
	
$("#wordsGroupInATerm").on('click',"#spreadWordApplication"+i,function(){
	
    var spreadWordApplication = $("#spreadWordApplication"+i);
	console.log("진입했다1");
	let foldingFormGroup = $('.folding-form-group'+i);
	/*  $('folding-form-group'+i).css("display", "inline-block"); */
	foldingFormGroup.css("display", "block");	
	spreadWordApplication.text('접기');
	spreadWordApplication.attr('id', 'foldWordApplication'+i);
});

$("#wordsGroupInATerm").on('click',"#foldWordApplication"+i,function(){
	
    var foldWordApplication = $("#foldWordApplication"+i);
	console.log("진입했다2");
	let foldingFormGroup = $('.folding-form-group'+i);
	/*  $('folding-form-group'+i).css("display", "inline-block"); */
	foldingFormGroup.css("display", "none");	
	foldWordApplication.text('펼치기');
	foldWordApplication.attr('id', 'spreadWordApplication'+i);
});
	

$("#wordsGroupInATerm").on('keyup',"#wordNm"+i,function(){
//검색창에 문자를 입력하면 함수가 실행된다.
//.textbox-wrapper 의 자식 #wordSearch(검색창)에게 keyup 이벤트가 실행된다면
    console.log("안의 i "+i);
    /* 검색창에 있는 값 출력 */
    
    console.log("복제 keyup 진입");
    console.log("구간1: "+$("#wordNm"+i).val());
    
    var q = $("#wordNm"+i).val();
    var w = $("#wordNm1").val();
    var spreadWordApplication = $("#spreadWordApplication"+i);
    
    console.log("q "+q);
    console.log("w "+w);
    console.log("i "+i);
    //자동완성 함수인 autocomplete()가 실행된다.
	$("#wordNm"+i).autocomplete({
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
			var wordSearchCheck = $("#wordSearchCheck"+i);
			console.log("구간1: "+$("#wordNm"+i).val());
			var parameter = encodeURI(encodeURIComponent($("#wordNm"+i).val()));
			console.log("구간2: "+parameter);
			setTimeout(() => {
		 		  $.ajax({
	         		  url: "${pageContext.request.contextPath}/wordsearchcheck"+"?"+"wordname="+$("#wordNm"+i).val(),
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
	     		     spreadWordApplication.css("display", "none");
	     		     data = JSON.stringify(data);
	     	        }else if(!data){
	     		     //DB에 해당 값이 없으면
			     	console.log('Crosscheck가 나올 차례지롱');
			    	wordSearchCheck.text("DB에 없는 단어, 신청하려면 펼치기 클릭하세요");
				    wordSearchCheck.css("color","red");
				    spreadWordApplication.css("display", "inline-block");
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
	
var wordSearchCheck = $("#wordSearchCheck"+i);
console.log("구간1: "+$("#wordNm"+i).val());
var parameter = encodeURI(encodeURIComponent($("#wordNm"+i).val()));
console.log("구간2: "+parameter);

setTimeout(() => {
   $.ajax({
       url: "${pageContext.request.contextPath}/wordsearchcheck"+"?"+"wordname="+$("#wordNm"+i).val(),
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
 		spreadWordApplication.css("display", "none");
 		data = JSON.stringify(data);
 	   }else if(!data){
 		//DB에 해당 값이 없으면	
		console.log('Crosscheck가 나올 차례지롱');
		wordSearchCheck.text("DB에 없는 단어, 신청하려면 펼치기 클릭하세요");
		wordSearchCheck.css("color","red");
		spreadWordApplication.css("display", "inline-block");
 		}
       },
       error:function(e, status, xhr){	
          console.log("ERROR : ", e);
          alert("fail");
       }
	});
	},100);
})
}

});

</script>
<script>
	$("#popup-domain").on('keyup',"#domainNm",function(){
	//검색창에 문자를 입력하면 함수가 실행된다.
	//.textbox-wrapper 의 자식 #wordSearch(검색창)에게 keyup 이벤트가 실행된다면
	    console.log("keyup 진입");
	    /* 검색창에 있는 값 출력 */
	    
	    //자동완성 함수인 autocomplete()가 실행된다.
		$("#domainNm").autocomplete({
			source : function(request, response ) {
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
<script>
/* 2023년 1월 25일 여기부터 */
	$("#popup-domain").on('click',"#domainSubmit",function(e){	
		e.preventDefault();
		console.log("진입했어");
		
		$(opener.document).find("#termDnm").val("aㄴㅁㅁdsasd");
		//opener.document.getElementById("termDnm").value = "aㄴㅁㅁdsasd";
		//둘 중 하나 택1
	});
</script>

