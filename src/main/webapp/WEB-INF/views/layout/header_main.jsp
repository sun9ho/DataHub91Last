<%@ page contentType="text/html; charset=UTF-8"%>


<div class="header-container"> 
	<header>
		<div class="top-left">			
			<a href='<c:url value='/'/>'><img
				src="${pageContext.request.contextPath}/resources/images/logoimg.png"
				width="160px" height="65px"></a> 
		</div>

		<div class="heder-top">

			<ul class="slider-menu-top">
			<c:choose>
				<c:when test="${empty mbrId}">
					<li><a href='<c:url value='/member/login'/>'><button class="mybutton" id="btn_login">로그인</button></a></li>
				</c:when>
				<c:otherwise>
					<li><button class="openBtn" id="btn_logout">로그아웃</button></li>
				</c:otherwise>
			</c:choose>
			</ul>
		</div>
		
		<%-- <a href='<c:url value='/member/logout'/>'> --%>

		<ul class="slider-menu">
			<li><a href="<c:url value='/'/>"><b>홈</b></a></li>
			<li><a href="<c:url value='/word'/>"><b>단어</b></a></li>
			<li><a href="<c:url value='/domain'/>"><b>도메인</b></a></li>
			<li><a href="<c:url value='/term'/>"><b>용어</b></a></li>
			<li><a href="<c:url value='/term/insert'/>"><b>등록</b></a></li>
			<li><a href="<c:url value='/approve'/>"><b>승인</b></a></li>
		</ul>
	</header>
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

<script>
 $(function(){
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

 })

</script>
