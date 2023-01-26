<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header_main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">	
</head>
<style>

</style>
<body>
	<%@include file="/WEB-INF/views/layout/header_main.jsp"%>
<div class="container">	

  <div class="login">
    <div class="login__content">
      <div class="login__img">
        <img class="login_logo_img" src="${pageContext.request.contextPath}/resources/images/login.png">
      </div>
      <div class="login__forms">
<!--         login form -->
        <form action="<c:url value='/member/login'/>" method="POST">

            <div class="input-box">
                <input id="mbrId" type="text" name="mbrId" placeholder="아이디">
                <label for="username">아이디</label>
            </div>

            <div class="input-box">
                <input id="mbrPswd" type="password" name="mbrPswd" placeholder="비밀번호">
                <label for="password">비밀번호</label>
            </div>
           
            <input type="submit" value="로그인">
        </form>   				
    </div>
   </div>
   </div>
   <!-- main container end -->
</div>



<%@include file="/WEB-INF/views/layout/footer.jsp"%>
</body>
</html>

