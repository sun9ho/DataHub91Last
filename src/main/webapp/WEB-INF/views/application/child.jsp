<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>Child</title>
    <!--신청서폼 제이쿼리와 부트스트랩, 순서는 제이쿼리 -> 부트스트랩 순서 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--자동완성 자바스크립트에서는 4.3.1 쓰길래 통일  -->
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
<!--  -->
</head>
<body>
    <br>
    <b><font size="5" color="gray">자식창</font></b>
    <br><br>
 <!-- <input type="button" id ="das" value="전달" onclick="setParentText()"> -->
    <input type="text" id="cInput"> <input type="button" id ="das" value="전달">
    <br><br>
    <input type="button" value="창닫기" onclick="window.close()">
    
    <script>
    $("#das").click(function(){
    	console.log("진입");
    	$("opener.document").find("#pInput").val("aㄴㅁㅁdsasd");
    	opener.document.getElementById("pInput").value = document.getElementById("cInput").value;
    });
        function setParentText(){
        	opener.document.getElementById("pInput").value = document.getElementById("cInput").value
        	//$("opener.document").find("#pInput").val("aㄴㅁㅁdsasd");
        }
    </script>
</body>
</html>