<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
         src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
         src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- Bootstrap CSS -->
<link
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
   crossorigin="anonymous">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
      crossorigin="anonymous" charset="UTF-8"></script>
   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<style>
@import
   url("https://fonts.googleapis.com/css?family=Nunito:400,900|Montserrat|Roboto")
   ;

/* body {
   background: linear-gradient(to right, #3fb6a8, #7ed386);
} */

.noshow {
   display: none;
}

.container {
min-height:600px;
width:600px;
   background: #ffffff;
   width: 610px;
   height: 1000px;
   margin: 0 auto;
   position: relative;
   margin-top: 10%;
   box-shadow: 2px 5px 20px rgba(119, 119, 119, 0.5);
   text-align: center;
}

.logo {
   float: right;
   margin-right: 12px;
   margin-top: 20px;
   font-family: "Nunito Sans", sans-serif;
   color: #3dbb3d;
   font-weight: 900;
   font-size: 1em;
   letter-spacing: 1px;
}

.CTA {
   width: 80px;
   height: 40px;
   right: -20px;
   bottom: 0;
   margin-bottom: 90px;
   position: absolute;
   z-index: 1;
   background: #7ed386;
   font-size: 1em;
   transform: rotate(-90deg);
   transition: all 0.5s ease-in-out;
   cursor: pointer;
}

.CTA h1 {
   color: #ffffff;
   margin-top: 10px;
   margin-left: 9px;
}

.CTA:hover {
   background: #3fb6a8;
   transform: scale(1.1);
}

.leftbox {
   float: left;
    /* top: 5%; */
    left: 5%;
    /* bottom: -5%; */
    position: absolute;
    width: 15%;
    height: 105%;
    background: #7ed386;
    box-shadow: 3px 3px 10px rgb(119 119 119 / 50%);
}

nav a {
   list-style: none;
   padding: 35px;
   /*padding-top: 75px;*/
   color: #ffffff;
   font-size: 1.1em;
   display: block;
   transition: all 0.3s ease-in-out;
}

nav a:hover {
   color: #3fb6a8;
   transform: scale(1.2);
   cursor: pointer;
}

nav a:first-child {
   margin-top: 7px;
}
.admin-user img {
  width: 2.9rem;
  border-radius: 50%;
  margin: 0 0.4rem;
  height: 0px;
}

.active {
   color: #3fb6a8;
}

.rightbox {
   float: right;
   width: 65%;
   height: 100%;
}

.profile, .payment, .subscription, .privacy, .settings {
   transition: opacity 0.5s ease-in;
   width: 70%;
   height: 30%;
}

h1 {
   font-family: "Montserrat", sans-serif;
   color: #7ed386;
   font-size: 1em;
   margin-top: 20px;
   margin-bottom: 20px;
}

h2 {
   color: #777777;
   font-family: "Roboto", sans-serif;
   width: 80%;
   text-transform: uppercase;
   font-size: 8px;
   letter-spacing: 1px;
   margin-left: 2px;
}

td {
   font-family: "Montserrat", sans-serif;
   color: #777777;
   font-size: 1em;
   margin-top: 40px;
   margin-bottom: 35px;
}

.word_text{
margin-left: 20%;
margin-top: 5%;
}
/* td {
  color: #777777;
  font-family: "Roboto", sans-serif;
  width: 80%;
  text-transform: uppercase;
  font-size: 8px;
  letter-spacing: 1px;
  margin-left: 2px;
} */
input {
   border-width: 1px;
   border-style: solid;
   border-image: linear-gradient(to right, #3fb6a8, rgba(126, 211, 134, 0.5))
      1 0%;
   border-top: 0;
   width: 80%;
   font-family: "Montserrat", sans-serif;
   font-size: 0.7em;
   padding: 7px 0;
   color: #070707;
}

p {
   border-width: 1px;
   border-style: solid;
   border-image: linear-gradient(to right, #3fb6a8, rgba(126, 211, 134, 0.5))
      1 0%;
   border-top: 0;
   width: 80%;
   font-family: "Montserrat", sans-serif;
   font-size: 0.7em;
   padding: 7px 0;
   color: #070707;
}

span {
   font-size: 0.5em;
   color: #777777;
}

.btn {
   float: right;
   font-family: "Roboto", sans-serif;
   text-transform: uppercase;
   font-size: 10px;
   border: none;
   color: #3fb6a8;
}

.btn:hover {
   text-decoration: underline;
   font-weight: 900;
}

/* input {
  border: 1px solid #dddddd;
  font-family: "Roboto", sans-serif;
  padding: 2px;
  margin: 0;
} */
.privacy h2 {
   margin-top: 25px;
}

.noshow {
   opacity: 0;
}

footer {
   position: absolute;
   width: 20%;
   bottom: 0;
   right: -20px;
   text-align: right;
   font-size: 0.8em;
   text-transform: uppercase;
   letter-spacing: 2px;
   font-family: "Roboto", sans-serif;
}

footer p {
   border: none;
   padding: 0;
}

footer a {
   color: #ffffff;
   text-decoration: none;
}

footer a:hover {
   color: #7d7d7d;
}

.txtarea{
   outline-color:#3fb6a8;
   border:none;
}
</style>
<%@include file="/WEB-INF/views/layout/header_main.jsp"%>
<body>
   <div class="container">
      <div id="logo">
         <h1 class="logo">신청서</h1>         
      </div>
      <div class="leftbox">
         <nav>
            <a id="profile" class="active"><i class="fa fa-user"></i></a> <a
               id="payment" class="nonactive"></a> <a id="subscription"><i class="fa fa-tv"></i></a>
            <a id="privacy" class="nonactive"></a> <a id="settings"><i class="fa fa-cog"></i></a>
         </nav>
      </div>
      <div class="rightbox">
          <form method="get" action="${applydomain}">

                  <div id="textbox-wrapper" class="textbox-wrapper">
                     <!-- 모든 단어 신청서는 이 div 태그 안에 들어갈 것이다. 제이쿼리 append를 통해서 -->

                     <!-- 여기까지가 스위치다 -->
                     <div class="custom-control custom-switch"
                        style="display: inline-block;">
                        <input type="checkbox" class="custom-control-input"
                           id="customSwitch1"> <label class="custom-control-label"
                           for="customSwitch1"></label>
                     </div>
                     <!--  -->

                     <!-- 단어검색창이다 -->
                     <input type="text" id="wordSearch1" placeholder="단어검색"
                        style="padding-left: 10px; width: 300px">
                     <!--  -->

                     <!-- 플러스 버튼이다 -->
                     <button type="button" class="btn btn-success add-textbox">
                        <i class="glyphicon glyphicon-plus"></i>
                     </button>
                     <!--  -->

                     <!-- DB에 있는지 OX체크를 해준다. -->
                     <%-- <img id="wordSearchCheck" >
                     <video src="<c:url value='/resources/videos/circle_check_animation.mp4'/>" width=50 height=50 autoplay="autoplay" muted="muted"></video> --%>
                     <div class="video-button">
                        <video id="wordSearchCheck1" width=39 height=50
                           autoplay="autoplay" muted="muted"></video>
                     </div>
                     <!--  -->

                     <!-- 펼쳐지는 신청서다. 클래스 customSwitch1다. none이었다가 보일 것이다. -->
                     <div class="profile">
                     	<div class="word_text">                   
                           <div class="customSwitch1" style="display: none">
                           <h2>단어명</h2>
			               <input type="text" id="wordName"
			                     placeholder="단어명" style="padding-left: 10px;"><button class="btn">pay now</button>
			               <br>
			               <br>
                           </div>
                           <div class="customSwitch1" style="display: none">
                           <h2>단어영문약어명</h2>
			               <input type="text" id="wordName"
			                     placeholder="단어영문약어명" style="padding-left: 10px;"><button class="btn">pay now</button>
			               <br>
			               <br>
                           </div>
                           <div class="customSwitch1" style="display: none">
                           <h2>단어영문명</h2>
			               <input type="text" id="wordName"
			                     placeholder="단어영문명" style="padding-left: 10px;"><button class="btn">pay now</button>
			               <button class="btn">change plan</button>
			               <br>
			               <br>
                           </div>
                    
                           <div class="customSwitch1" style="display: none">
                           <h2>단어설명</h2>
			               <textarea id="story" name="story" class="txtarea" rows="3" cols="39"></textarea>
			               <button class="btn">pay now</button>
			               <p></p>
                           </div>
                        </div>                                                    
                     </div>
                     <!--  -->

                     <!-- <div class="customSwitch1" style="display: none">
                        단어명&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
                           type="text" id="wordName" placeholder="단어명"
                           style="padding-left: 10px;"><br>
                     </div>
                     <br>
                     <div class="customSwitch1" style="display: none">
                        단어영문약어명&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
                           id="wordEngAbbreviation" placeholder="단어영문약어명"
                           style="padding-left: 10px;"><br>
                     </div>
                     <div class="customSwitch1" style="display: none">
                        <br>
                        단어영문명&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
                           type="text" id="wordEng" placeholder="단어영문명"
                           style="padding-left: 10px;"><br>
                     </div>
                     <div class="customSwitch1" style="display: none">
                        <br> 단어설명&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
                           id="wordDescription" placeholder="단어 설명"
                           style="padding-left: 10px;"><br>
                     </div> -->
                  </div>
                  <br>
                  <div class="form-group">
                     <button type="submit" id="submit" class="btn btn-success"
                        style="float: right; margin-left: 10px">다음 단계</button>
                     <button type="button" id="test" class="btn btn-success"
                        style="float: right; margin-left: 10px">테스트</button>
                  </div>
               </form>

         <!--     <div class="payment noshow">
      <h1>Payment Info</h1>
      <h2>Payment Method</h2>
      <p>Mastercard •••• •••• •••• 0000 <button class="btn">update</button></p>
      <h2>Billing Address</h2>
      <p>1234 Example Ave | Seattle, WA <button class="btn">change</button></p>
      <h2>Zipcode</h2>
      <p>999000</p>
      <h2>Billing History</h2>
      <p>2018<button class="btn">view</button></p>
      <h2>Redeem Gift Subscription </h2>
      <p><input type="text" placeholder="Enter Gift Code"></input> <button class="btn">Redeem</button></p>
    </div> -->

         <div class="subscription noshow">
            <h1>도메인</h1>
            <h2>도메인그룹명</h2>
               <input type="text" id="wordName"
                     placeholder="도메인그룹명" style="padding-left: 10px;"><button class="btn">pay now</button>
               <br>
               <br>
            <h2>도메인분류명</h2>
               <input type="text" id="wordName"
                     placeholder="도메인분류명" style="padding-left: 10px;"><button class="btn">pay now</button>
               <br>
               <br>
            <h2>도메인명</h2>
               <input type="text" id="wordName"
                     placeholder="도메인명" style="padding-left: 10px;"><button class="btn">pay now</button>
               <button class="btn">change plan</button>
               <br>
               <br>
            <h2>데이터타입</h2>
               <input type="text" id="wordName"
                     placeholder="데이터타입" style="padding-left: 10px;"><button class="btn">pay now</button>
               <button class="btn">manage</button>
               <br>
               <br>
            <h2>데이터길이</h2>
               <input type="text" id="wordName"
                     placeholder="데이터길이" style="padding-left: 10px;"><button class="btn">pay now</button>
               <br>   
               <br>
            <h2>도메인설명</h2>
               <textarea id="story" name="story" class="txtarea" rows="3" cols="39"></textarea>
               <button class="btn">pay now</button>
               <p></p>
         </div>

         <!-- <div class="privacy noshow">
      <h1>Privacy Settings</h1>
      <h2>Manage Email Notifications<button class="btn">manage</button></h2>
      <p></p>
      <h2>Manage Privacy Settings<button class="btn">manage</button></h2>
      <p></p>
      <h2>View Terms of Use <button class="btn">view</button></h2>
      <p></p>
      <h2>Personalize Ad Experience <button class="btn">update</button></h2>
      <p></p>
      <h2>Protect Your Account <button class="btn">protect</button></h2>
      <p></p>
    </div> -->

         <div class="settings noshow">
            <h1>용어</h1>
            
               <h2>용어명</h2>
               <input type="text" id="wordName"
                     placeholder="용어명" style="padding-left: 10px;"><button class="btn">sync</button>
                    <br>
               <br>
               <h2>도메인명</h2>
               <input type="text" id="wordName"
                     placeholder="도메인명" style="padding-left: 10px;"><button class="btn">hold</button>
                    <br>
               <br>
               <h2>용어영문약어명</h2>
               <input type="text" id="wordName"
                     placeholder="용어영문약어명" style="padding-left: 10px;"><button class="btn">cancel</button>
                    <br>
               <br>
               <h2>용어설명</h2>
               <textarea id="story" name="story" class="txtarea" rows="3" cols="39"></textarea><button class="btn">Manage Devices</button>
               <p></p>
               <br>
               <br>
         </div>

      </div>
   </div>

   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
   <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

   <script type="text/javascript">
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
               } 
               else if (this.id === 'subscription') {//좌측  네비게이션에서 id가 payment 버튼
                  //
                  $('.subscription').removeClass('noshow');
                  $('.rightbox').children().not('.subscription')
                        .addClass('noshow');
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
            console.log("진입1");
            $('.customSwitch'+i).css('display', 'block');
         } else {
            console.log("진입2");
            $('.customSwitch'+i).css('display', 'none');
         }
      });
   }
      $(function() {
         /*  */
         $("#test").click(
               function() {
                  var wordName = $("#wordName").val();
                  var wordEngAbbreviation = $("#wordEngAbbreviation").val();
                  var wordEng = $("#wordEng").val();
                  var wordDescription = $("#wordDescription").val();
                  
                  if (wordName == '' || wordEngAbbreviation == ''
                        || wordEng == '' || wordDescription == '') {
                     swal({
                        title : "테스트 실패",
                        text : "테스트가 실패했습니다. 신청양식을 전부 입력해주세요",
                        icon : "resources/images/alert_cross.jpg",
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
   /*       $("#submit").click(
               function() {
                  var csWordName = $("#csWordName").val();
                  var csWordEngAbbreviation = $("#csWordEngAbbreviation").val();
                  var csWordEng = $("#csWordEng").val();
                  var csWordDescription = $("#csWordDescription").val();

                  if (csWordName == '' || csWordEngAbbreviation == ''
                     || csWordEng == '' || csWordDescription == '') {
                     swal({
                        title : "반려",
                        text : "신청서를 반려했습니다.",
                        icon : "resources/images/alert_cross.jpg",
                        //"warning"
                        button : "확인",
                     });
                  } else {
                     swal({
                        title : "승인",
                        text : "DB에 등록되었습니다.",
                        icon : "success",
                        button : "승인",
                     });
                  }
               }) */
      });
      $(document)
            .ready(
                  function() {
                     
                     $(function(){
                        for (let i = 0; i < 10; i++){
                           
                        $(".textbox-wrapper").on('keyup',"#wordSearch"+i,function(){
                        //검색창에 문자를 입력하면 함수가 실행된다.
                        //.textbox-wrapper 의 자식 #wordSearch(검색창)에게 keyup 이벤트가 실행된다면
                            
                            //자동완성 함수인 autocomplete()가 실행된다.
                           $("#wordSearch"+i).autocomplete({
                              source : function( request, response ) {
                                 //많이 봤죠? jquery Ajax로 비동기 통신한 후
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
                                 setTimeout(function() { 
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
                                 }, 100);
                           
                              
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
                                             .append(`<form name="demo-form" method="post" class="input-group">
                                       <!-- apennd() 메소드는 선택된 요소의 마지막에 새로운 요소나 콘텐츠를 추가할 수 있다. -->
                                             
                                       <div>
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
                                          <%-- <img id="wordSearchCheck" >
                                          <video src="<c:url value='/resources/videos/circle_check_animation.mp4'/>" width=50 height=50 autoplay="autoplay" muted="muted"></video> --%>
                                          <div class="video-button">
                                             <video id="wordSearchCheck" width=39 height=50
                                                autoplay="autoplay" muted="muted"></video>
                                          </div>
                                          <!--  -->
                                              
                                       </div>
                                           <!-- 펼쳤다가 접을 수 있는 신청서 -->                     
                                           <div class="profile">
                                        	<div class="word_text">                   
                                              <div class="customSwitch" style="display: none">
                                              <h2>단어명</h2>
                   			               <input type="text" id="wordName"
                   			                     placeholder="단어명" style="padding-left: 10px;"><button class="btn">pay now</button>
                   			               <br>
                   			               <br>
                                              </div>
                                              <div class="customSwitch" style="display: none">
                                              <h2>단어영문약어명</h2>
                   			               <input type="text" id="wordName"
                   			                     placeholder="단어영문약어명" style="padding-left: 10px;"><button class="btn">pay now</button>
                   			               <br>
                   			               <br>
                                              </div>
                                              <div class="customSwitch" style="display: none">
                                              <h2>단어영문명</h2>
                   			               <input type="text" id="wordName"
                   			                     placeholder="단어영문명" style="padding-left: 10px;"><button class="btn">pay now</button>
                   			               <button class="btn">change plan</button>
                   			               <br>
                   			               <br>
                                              </div>
                                       
                                              <div class="customSwitch" style="display: none">
                                              <h2>단어설명</h2>
                   			               <textarea id="story" name="story" class="txtarea" rows="3" cols="39"></textarea>
                   			               <button class="btn">pay now</button>
                   			               <p></p>
                                              </div>
                                           </div>                                                    
                                        </div>
                                             <!--  -->
                                             
                                             </form>   
                                       `);
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
   </script>

</body>
<%@include file="/WEB-INF/views/layout/footer.jsp"%>
</html>