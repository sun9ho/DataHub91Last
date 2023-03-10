<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
   <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
   <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
   
   <link rel="preconnect" href="https://fonts.googleapis.com" />
   <link rel="preconnect" href="https://fonts.gstatic.com"/>
   <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap"    />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
   <link rel="stylesheet" href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"/>
   <link rel="stylesheet" href="https://www.cssscript.com/demo/sticky.css">
   
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header_main.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/approval_list1.css">

<style>
.word_table{
margin-right:100px;
}
</style>
   <script>
      var statusSeatchInput = false;
      function searchToggle(obj, evt){
          var container = $(obj).closest('.search-wrapper');
           if(!container.hasClass('active')){
               container.addClass('active');
               /*  evt.preventDefault();*/
               statusSeatchInput = true;
           } else {
               container.removeClass('active');
               // clear input
               container.find('.search-input').val('');
               statusSeatchInput = false;
           }
      }
   </script>

   <!-- ????????? ???????????? ?????? ???????????? ?????? js -->
   <script>
      $(function(){
         //html ????????? ????????? ???
         $(document).mousedown(function( e ){
            //????????? ?????? ????????? ?????? ???
        
                if( $("#wordo").is(":visible") ) {
                    $("#wordo").each(function(){
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
      

            if( $("#wordx").is(":visible") ) {
               $("#wordx").each(function(){
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

      });
   </script>
   
   
   <!-- ??????????????? ?????? js -->
   <script>
      $(function () {
        $('[data-toggle="popover"]').popover()
      })
   </script>
   
   <!-- ???????????? ??????????????????  -->
</head>

<body style="overflow: hidden;">

   <%@include file="/WEB-INF/views/layout/header_main.jsp"%>
   <%@include file="/WEB-INF/views/layout/nav.jsp"%>

   <!-- ????????? ?????? -->
   <div class="bodycontainer">
		<div class="calendar">
			
			<form action="${pageContext.request.contextPath}/approvedate" method="get">
			<label for="start">Start date:</label> 
			<input type="date" id="start" name="select1"  min="2022-01-01"max="2023-12-31">
			<label for="end">&nbsp;~&nbsp;End date:</label> 
			<input type="date" id="end" name="select2" min="2022-01-01" max="2023-12-31">
			<button type="submit" class="btn btn-danger" style=" width: 60px; height: 35px; background-color: darkgray;">?????? </button>
			</form>
		</div>
		
		<div class="container">
         <!-- word ?????? -->
         <!-- ?????? ????????? ????????? -->

         <div class="main-table-first" style="overflow :scroll;">
         <div class="tabs">
    <label class="tab" id="one-tab" for="one">WORD</label>
            <div class="table-responsive custom-table-responsive">
               <table class="table custom-table">
                  <thead>
                     <tr>
                        <th scope="col">?????????</th>
                        <th scope="col">?????????</th>
                        <th scope="col">?????? ??????</th>
                        <th scope="col">??????</th>
                        <th scope="col">??????</th>
						<th scope="col">??????</th>
                     </tr>
                  </thead>
                  <tbody>
                        <tr class="spacer">
                        <td colspan="100"></td>
                     </tr>
                     <c:forEach var="words" items="${words}">
                        <tr class="activetr">
                           <td>${words.wordNm}</td>
                           <td><small class="d-block">${words.wordEngNm}</small></td>
                           <td>${words.wordEngAbbn}</td>
                           <td><button type="button" class="btn btn-primary"
                                 data-toggle="popover" data-placement="right" title="??????"
                                 data-content="${words.wordExpln}">??????</button></td>
                           <td>
                            	<form action="${pageContext.request.contextPath}/wordapproval" method="post">
                           			<input type="hidden" name="wordNo" value="${words.wordNo}">
                           			<button type="submit" class="btn btn-success">??????</button>
                                </form>
                           </td>
						   <td>
						   		<form action="${pageContext.request.contextPath}/wordreject" method="post">                           			
                           			<input type="hidden" name="wordNo" value="${words.wordNo}">
                           			<button type="submit" class="btn btn-danger">??????</button>
                          		</form>
						   </td>
                        </tr>
                           <tr class="spacer">
                           <td colspan="100"></td>
                        </tr>
                     </c:forEach>
                  </tbody>
               </table>
               
               
               <!-- ????????? ?????? ?????? -->
         <table class="table table-sm table-bordered">
            <tr>
               <td colspan="4" class="text-center">
                  <div>
                     <a class="btn btn-outline-primary btn-sm" href="approvedate?pageNo=1&select1=${select1}&select2=${select2}">??????</a>
                     <c:if test="${pager.groupNo>1}">
                        <a class="btn btn-outline-info btn-sm"
                           href="approvedate?pageNo=${pager.startPageNo-1}&select1=${select1}&select2=${select2}">??????</a>
                     </c:if>

                     <c:forEach var="i" begin="${pager.startPageNo}"
                        end="${pager.endPageNo}">
                        <c:if test="${pager.pageNo != i}">
                           <a class="btn btn-outline-success btn-sm"
                              href="approvedate?pageNo=${i}&select1=${select1}&select2=${select2}">${i}</a>
                        </c:if>
                        <c:if test="${pager.pageNo == i}">
                           <a class="btn btn-danger btn-sm" href="approvedate?pageNo=${i}&select1=${select1}&select2=${select2}">${i}</a>
                        </c:if>
                     </c:forEach>

                     <c:if test="${pager.groupNo<pager.totalGroupNo}">
                        <a class="btn btn-outline-info btn-sm"
                           href="approvedate?pageNo=${pager.endPageNo+1}&select1=${select1}&select2=${select2}">??????</a>
                     </c:if>
                     <a class="btn btn-outline-primary btn-sm"
                        href="approvedate?pageNo=${pager.totalPageNo}&select1=${select1}&select2=${select2}">??????</a>
                  </div>
               </td>
            </tr>
         </table>
                     
</div>
        <!-- domain ?????? -->
        <!-- ?????? ????????? ????????? -->
         <!-- ?????? ????????? ????????? -->
			<div class="main-table-second">
			<div class="tabs">
    		<label class="tab" id="one-tab" for="one">DOMAIN</label>
			<div class="table-responsive custom-table-responsive">
				<table class="table custom-table">
					<thead>
					<tr>
							<th scope="col">????????????</th>
							<!-- <th scope="col">??????????????????</th> -->
							<th scope="col">???????????????</th>
							<th scope="col">???????????????</th>
							<th scope="col">??????</th>
							<th scope="col">??????</th>
							<th scope="col">??????</th>
						</tr>
					</thead>
					<tbody>
							<tr class="spacer">
								<td colspan="100"></td>
							</tr>
							<c:forEach var="domains" items="${domains}">
								<tr class="activetr">
									<td>${domains.domainNm}</td>
									<%-- <td><small class="d-block">${domains.domainCatg}</small></td> --%>
									<td>${domains.domainType}</td>
									<td>${domains.domainLength}</td>
									<td><button type="button" class="btn btn-primary"
											data-toggle="popover" data-placement="right" title="??????"
											data-content="${domains.domainExpln}">??????</button></td>
									<td>
										<form action="${pageContext.request.contextPath}/domainapproval" method="post">
		                           			<input type="hidden" name="domainNo" value="${domains.domainNo}">
		                           			<button type="submit" class="btn btn-success">??????</button>
		                               </form>
									</td>
									<td>
										<form action="${pageContext.request.contextPath}/domainreject" method="post">                           			
		                           			<input type="hidden" name="domainNo" value="${domains.domainNo}">
		                           			<button type="submit" class="btn btn-danger">??????</button>
		                          		</form>
									</td>
								</tr>
								<tr class="spacer">
									<td colspan="100"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					     <!-- ????????? ?????? ?????? -->
			         <table class="table table-sm table-bordered">
			            <tr>
			               <td colspan="4" class="text-center">
			                  <div>
			                     <a class="btn btn-outline-primary btn-sm" href="approvedate?pageNoD=1&select1=${select1}&select2=${select2}">??????</a>
			                     <c:if test="${pagerD.groupNo>1}">
			                        <a class="btn btn-outline-info btn-sm"
			                           href="approvedate?pageNoD=${pagerD.startPageNo-1}&select1=${select1}&select2=${select2}">??????</a>
			                     </c:if>
			
			                     <c:forEach var="i" begin="${pagerD.startPageNo}"
			                        end="${pagerD.endPageNo}">
			                        <c:if test="${pagerD.pageNo != i}">
			                           <a class="btn btn-outline-success btn-sm"
			                              href="approvedate?pageNoD=${i}&select1=${select1}&select2=${select2}">${i}</a>
			                        </c:if>
			                        <c:if test="${pagerD.pageNo == i}">
			                           <a class="btn btn-danger btn-sm" href="word?pageNo=${i}">${i}</a>
			                        </c:if>
			                     </c:forEach>
			
			                     <c:if test="${pagerD.groupNo<pagerD.totalGroupNo}">
			                        <a class="btn btn-outline-info btn-sm"
			                           href="approvedate?pageNoD=${pagerD.endPageNo+1}&select1=${select1}&select2=${select2}">??????</a>
			                     </c:if>
			                     <a class="btn btn-outline-primary btn-sm"
			                        href="approvedate?pageNoD=${pagerD.totalPageNo}&select1=${select1}&select2=${select2}">??????</a>
			                  </div>
			               </td>
			            </tr>
			         </table>
			    
				</div>
			</div>
		</div>
		
				<div class="term">
                <!-- term?????? -->
				<!-- ?????? ????????? ????????? -->
				<div class="main-table-third">
				<div class="tabs">
    			<label class="tab" id="one-tab" for="one">TERM</label>
					<div class="table-responsive custom-table-responsive">
						<table class="table custom-table">
							<thead>
								<tr>
									<th scope="col">?????????</th>
									<th scope="col">????????????</th>
									<th scope="col">????????????</th>
									<th scope="col">??????</th>
									<th scope="col">??????</th>
									<th scope="col">??????</th>
								</tr>
							</thead>
							<tbody>
								<tr class="spacer">
									<td colspan="100"></td>
								</tr>
								<c:forEach var="terms" items="${terms}">
									<tr class="activetr">
										<td>${terms.termNm}</td>
										<td><small class="d-block">${terms.termEngAbbn}</small></td>
										<td>${terms.termDnm}</td>
										<td><button type="button" class="btn btn-primary"
												data-toggle="popover" data-placement="right" title="??????"
												data-content="${terms.termExpln}">??????</button></td>
										<td>
											<form action="${pageContext.request.contextPath}/termapproval" method="post">
			                           			<input type="hidden" name="termNo" value="${terms.termNo}">
			                           			<button type="submit" class="btn btn-success">??????</button>
			                               </form>
										</td>
										<td>
											<form action="${pageContext.request.contextPath}/termreject" method="post">                           			
			                           			<input type="hidden" name="termNo" value="${terms.termNo}">
			                           			<button type="submit" class="btn btn-danger">??????</button>
			                          		</form>
										</td>
									</tr>
									<tr class="spacer">
										<td colspan="100"></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- ????????? ?????? ?????? -->
						<table class="table table-sm table-bordered">
							<tr>
								<td colspan="4" class="text-center">
									<div>
										<a class="btn btn-outline-primary btn-sm" href="approvedate?pageNoT=1&select1=${select1}&select2=${select2}">??????</a>
										<c:if test="${pagerT.groupNo>1}">
											<a class="btn btn-outline-info btn-sm"
												href="approvedate?pageNoT=${pagerT.startPageNo-1}&select1=${select1}&select2=${select2}">??????</a>
										</c:if>
			
										<c:forEach var="i" begin="${pagerT.startPageNo}"
											end="${pagerT.endPageNo}">
											<c:if test="${pagerT.pageNo != i}">
												<a class="btn btn-outline-success btn-sm"
													href="approvedate?pageNoT=${i}&select1=${select1}&select2=${select2}">${i}</a>
											</c:if>
											<c:if test="${pagerT.pageNo == i}">
												<a class="btn btn-danger btn-sm" href="approvedate?pageNoT=${i}&select1=${select1}&select2=${select2}">${i}</a>
											</c:if>
										</c:forEach>
			
										<c:if test="${pagerT.groupNo<pagerT.totalGroupNo}">
											<a class="btn btn-outline-info btn-sm"
												href="approvedate?pageNoT=${pagerT.endPageNo+1}&select1=${select1}&select2=${select2}">??????</a>
										</c:if>
										<a class="btn btn-outline-primary btn-sm"
											href="approvedate?pageNoT=${pagerT.totalPageNo}&select1=${select1}&select2=${select2}">??????</a>
									</div>
								</td>
							</tr>
						</table>
					</div>
			</div>
		</div>
				<!-- member?????? -->
				<!-- ?????? ????????? ????????? -->
				<div class="main-table-fourth">
				<div class="tabs">
    			<label class="tab" id="one-tab" for="one">MEMBER</label>
					<div class="table-responsive custom-table-responsive">
						<table class="table custom-table">
							<thead>
								<tr>
									<th scope="col">?????????</th>
									<th scope="col">?????????</th>
									<th scope="col">???????????????</th>
									<th scope="col">??????</th>
									<th scope="col">??????</th>
								</tr>
							</thead>
							<tbody>
								<tr class="spacer">
									<td colspan="100"></td>
								</tr>
								<c:forEach var="members" items="${members}">
									<tr class="activetr">
										<td>${members.mbrId}</td>
										<td>${members.mbrEml}</td>
										<td>${members.mbrYn}</td>
										<td>
											<form action="${pageContext.request.contextPath}/memberGrant" method="post">
			                           			<input type="hidden" name="mbrId" value="${members.mbrId}">
			                           			<button type="submit" class="btn btn-success">??????</button>
			                               </form>
										</td>
										<td>
											<form action="${pageContext.request.contextPath}/memberDelete" method="post">                           			
			                           			<input type="hidden" name="mbrId" value="${members.mbrId}">
			                           			<button type="submit" class="btn btn-danger">??????</button>
			                          		</form>
										</td>
									</tr>
									<tr class="spacer">
										<td colspan="100"></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- ????????? ?????? ?????? -->
						<table class="table table-sm table-bordered">
							<tr>
								<td colspan="4" class="text-center">
									<div>
										<a class="btn btn-outline-primary btn-sm" href="approvedate?pageNoM=1&select1=${select1}&select2=${select2}">??????</a>
										<c:if test="${pagerM.groupNo>1}">
											<a class="btn btn-outline-info btn-sm"
												href="approvedate?pageNoM=${pagerM.startPageNo-1}&select1=${select1}&select2=${select2}">??????</a>
										</c:if>
			
										<c:forEach var="i" begin="${pagerM.startPageNo}"
											end="${pagerM.endPageNo}">
											<c:if test="${pagerM.pageNo != i}">
												<a class="btn btn-outline-success btn-sm"
													href="approvedate?pageNoM=${i}&select1=${select1}&select2=${select2}">${i}</a>
											</c:if>
											<c:if test="${pagerM.pageNo == i}">
												<a class="btn btn-danger btn-sm" href="approvedate?pageNoM=${i}&select1=${select1}&select2=${select2}">${i}</a>
											</c:if>
										</c:forEach>
			
										<c:if test="${pagerM.groupNo<pagerM.totalGroupNo}">
											<a class="btn btn-outline-info btn-sm"
												href="approvedate?pageNoM=${pagerM.endPageNo+1}&select1=${select1}&select2=${select2}">??????</a>
										</c:if>
										<a class="btn btn-outline-primary btn-sm"
											href="approvedate?pageNoM=${pagerM.totalPageNo}&select1=${select1}&select2=${select2}">??????</a>
									</div>
								</td>
							</tr>
						</table>   		
						</div></div></div></div></div></div></div>
</div>
   <%@include file="/WEB-INF/views/layout/footer.jsp"%>

</body>
</html>

<script>
   const shrink_btn = document.querySelector(".shrink-btn");
   /* ?????? ?????? */
   const search = document.querySelector(".search");
   /* ???????????? */
   const sidebar_links = document.querySelectorAll(".sidebar-links a");
   sidebar_links.forEach((link) => link.addEventListener("click", changeLink)); 
   /*  */
   const active_tab = document.querySelector(".active-tab");
   /*  */
   const shortcuts = document.querySelector(".sidebar-links h4");
   /*  */
   const tooltip_elements = document.querySelectorAll(".tooltip-element");
   tooltip_elements.forEach((elem) => {
        elem.addEventListener("mouseover", showTooltip);
   });
   /*  */
   let activeIndex;
   /*  */
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
      console.log("?????? ???");
      let topPosition = activeIndex * 58 + 2.5;
      if (activeIndex > 3) {
         topPosition += shortcuts.clientHeight;
      }
      active_tab.style.top = `${topPosition}px`;
   }

   function changeLink() {
      console.log("?????? ???");
        sidebar_links.forEach((sideLink) => sideLink.classList.remove("active"));
        this.classList.add("active");
        activeIndex = this.dataset.active;
        moveActiveTab();
   }

   function showTooltip() {
      let tooltip = this.parentNode.lastElementChild;
      let spans = tooltip.children;
      let tooltipIndex = this.dataset.tooltip;
      Array.from(spans).forEach((sp) => sp.classList.remove("show"));
      spans[tooltipIndex].classList.add("show");
      tooltip.style.top = `${(100 / (spans.length * 2)) * (tooltipIndex * 2 + 1)}%`;
   }
</script>   