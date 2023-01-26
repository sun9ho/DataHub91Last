<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>Parent</title>
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
    <b><font size="5" color="gray">부모창</font></b>
    <br><br>
    
    <input type="button" value="자식창 열기" onclick="openChild()">
    <br>전달할 값 : <input type="text" id="pInput"> 
    <input type="button" value="전달" onclick="setChildText()">
    
    <script type="text/javascript">
        let openWin;

        function openChild() {
            // window.name = "부모창 이름"; 
            window.name = "parentForm";
            
            // window.open("open할 window", "자식창 이름", "팝업창 옵션");
            openWin = window.open("${pageContext.request.contextPath}/apply/child", "childForm", "width=570, height=350, resizable = no, scrollbars = no");    
        }

        function setChildText(){
            openWin.document.getElementById("cInput").value = document.getElementById("pInput").value;
        }
    </script>
</body>
</html>