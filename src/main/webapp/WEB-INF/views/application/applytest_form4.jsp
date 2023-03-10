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
         <h1 class="logo">?????????</h1>         
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
                     <!-- ?????? ?????? ???????????? ??? div ?????? ?????? ????????? ?????????. ???????????? append??? ????????? -->

                     <!-- ??????????????? ???????????? -->
                     <div class="custom-control custom-switch"
                        style="display: inline-block;">
                        <input type="checkbox" class="custom-control-input"
                           id="customSwitch1"> <label class="custom-control-label"
                           for="customSwitch1"></label>
                     </div>
                     <!--  -->

                     <!-- ????????????????????? -->
                     <input type="text" id="wordSearch1" placeholder="????????????"
                        style="padding-left: 10px; width: 300px">
                     <!--  -->

                     <!-- ????????? ???????????? -->
                     <button type="button" class="btn btn-success add-textbox">
                        <i class="glyphicon glyphicon-plus"></i>
                     </button>
                     <!--  -->

                     <!-- DB??? ????????? OX????????? ?????????. -->
                     <%-- <img id="wordSearchCheck" >
                     <video src="<c:url value='/resources/videos/circle_check_animation.mp4'/>" width=50 height=50 autoplay="autoplay" muted="muted"></video> --%>
                     <div class="video-button">
                        <video id="wordSearchCheck1" width=39 height=50
                           autoplay="autoplay" muted="muted"></video>
                     </div>
                     <!--  -->

                     <!-- ???????????? ????????????. ????????? customSwitch1???. none???????????? ?????? ?????????. -->
                     <div class="profile">
                     	<div class="word_text">                   
                           <div class="customSwitch1" style="display: none">
                           <h2>?????????</h2>
			               <input type="text" id="wordName"
			                     placeholder="?????????" style="padding-left: 10px;"><button class="btn">pay now</button>
			               <br>
			               <br>
                           </div>
                           <div class="customSwitch1" style="display: none">
                           <h2>?????????????????????</h2>
			               <input type="text" id="wordName"
			                     placeholder="?????????????????????" style="padding-left: 10px;"><button class="btn">pay now</button>
			               <br>
			               <br>
                           </div>
                           <div class="customSwitch1" style="display: none">
                           <h2>???????????????</h2>
			               <input type="text" id="wordName"
			                     placeholder="???????????????" style="padding-left: 10px;"><button class="btn">pay now</button>
			               <button class="btn">change plan</button>
			               <br>
			               <br>
                           </div>
                    
                           <div class="customSwitch1" style="display: none">
                           <h2>????????????</h2>
			               <textarea id="story" name="story" class="txtarea" rows="3" cols="39"></textarea>
			               <button class="btn">pay now</button>
			               <p></p>
                           </div>
                        </div>                                                    
                     </div>
                     <!--  -->

                     <!-- <div class="customSwitch1" style="display: none">
                        ?????????&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
                           type="text" id="wordName" placeholder="?????????"
                           style="padding-left: 10px;"><br>
                     </div>
                     <br>
                     <div class="customSwitch1" style="display: none">
                        ?????????????????????&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
                           id="wordEngAbbreviation" placeholder="?????????????????????"
                           style="padding-left: 10px;"><br>
                     </div>
                     <div class="customSwitch1" style="display: none">
                        <br>
                        ???????????????&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input
                           type="text" id="wordEng" placeholder="???????????????"
                           style="padding-left: 10px;"><br>
                     </div>
                     <div class="customSwitch1" style="display: none">
                        <br> ????????????&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
                           id="wordDescription" placeholder="?????? ??????"
                           style="padding-left: 10px;"><br>
                     </div> -->
                  </div>
                  <br>
                  <div class="form-group">
                     <button type="submit" id="submit" class="btn btn-success"
                        style="float: right; margin-left: 10px">?????? ??????</button>
                     <button type="button" id="test" class="btn btn-success"
                        style="float: right; margin-left: 10px">?????????</button>
                  </div>
               </form>

         <!--     <div class="payment noshow">
      <h1>Payment Info</h1>
      <h2>Payment Method</h2>
      <p>Mastercard ???????????? ???????????? ???????????? 0000 <button class="btn">update</button></p>
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
            <h1>?????????</h1>
            <h2>??????????????????</h2>
               <input type="text" id="wordName"
                     placeholder="??????????????????" style="padding-left: 10px;"><button class="btn">pay now</button>
               <br>
               <br>
            <h2>??????????????????</h2>
               <input type="text" id="wordName"
                     placeholder="??????????????????" style="padding-left: 10px;"><button class="btn">pay now</button>
               <br>
               <br>
            <h2>????????????</h2>
               <input type="text" id="wordName"
                     placeholder="????????????" style="padding-left: 10px;"><button class="btn">pay now</button>
               <button class="btn">change plan</button>
               <br>
               <br>
            <h2>???????????????</h2>
               <input type="text" id="wordName"
                     placeholder="???????????????" style="padding-left: 10px;"><button class="btn">pay now</button>
               <button class="btn">manage</button>
               <br>
               <br>
            <h2>???????????????</h2>
               <input type="text" id="wordName"
                     placeholder="???????????????" style="padding-left: 10px;"><button class="btn">pay now</button>
               <br>   
               <br>
            <h2>???????????????</h2>
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
            <h1>??????</h1>
            
               <h2>?????????</h2>
               <input type="text" id="wordName"
                     placeholder="?????????" style="padding-left: 10px;"><button class="btn">sync</button>
                    <br>
               <br>
               <h2>????????????</h2>
               <input type="text" id="wordName"
                     placeholder="????????????" style="padding-left: 10px;"><button class="btn">hold</button>
                    <br>
               <br>
               <h2>?????????????????????</h2>
               <input type="text" id="wordName"
                     placeholder="?????????????????????" style="padding-left: 10px;"><button class="btn">cancel</button>
                    <br>
               <br>
               <h2>????????????</h2>
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
            //??????????????? ?????? ?????? a????????? ????????? ???
            function(e) {
               e.preventDefault();
               //a ????????? submit ????????? ????????? ?????? href ??? ?????? ??????????????? , ?????? ?????????????????? ???????????????.
               //preventDefault ??? ?????? ????????? ????????? ????????? ??? ????????????.
               
               $('nav a').removeClass('active');
               //??????????????? ?????? ?????? a????????? ??????????????? active??? ?????? ?????? ???????????? ???????????????.
               
               
               if($(this).hasClass("nonactive")===true){
                  
               }
               //$(this).hasClass("active")===true ??? ???????????????????????? ????????? ????????? ???????????? ??????.
               else{
                  
                  $(this).addClass('active');
                  //???????????? ????????? ????????? ??????????????? active??? ????????????.
                  
                  if (this.id === !'payment') {
                  //
                  $('.payment').addClass('noshow');//?????? ??????????????? ???????????? ???????????? ?????? ??????????????? noshow??? ??? ??????.
               } else if (this.id === 'payment') {//??????  ????????????????????? id??? payment??? ??????
                  //
                  $('.payment').removeClass('noshow');
                  $('.rightbox').children().not('.payment').addClass(
                        'noshow');
               } 
               else if (this.id === 'profile') {//??????  ????????????????????? id??? profile??? ??????
                  //
                  $('.profile').removeClass('noshow');
                  $('.rightbox').children().not('.profile').addClass(
                        'noshow');
               } 
               else if (this.id === 'subscription') {//??????  ????????????????????? id??? payment ??????
                  //
                  $('.subscription').removeClass('noshow');
                  $('.rightbox').children().not('.subscription')
                        .addClass('noshow');
               } 
               else if (this.id === 'privacy') {//??????  ?????????????????? id??? privacy ??????
                  $('.privacy').removeClass('noshow');
                  $('.rightbox').children().not('.privacy').addClass(
                        'noshow');
               } 
               else if (this.id === 'settings') {//??????  ?????????????????? id??? settings ??????
                  $('.settings').removeClass('noshow');
                  $('.rightbox').children().not('.settings').addClass(
                        'noshow');
               }
               }
               
               
               
            }); 
   </script>
   
   <script>
   /* append??? ????????? html??? on??? ???????????? ??????????????? ????????????. */
   /* ??? ???????????? ???????????? ???????????? ?????????,???????????? ???????????? ????????? ?????????. */
   for (let i = 0; i < 10; i++){
      /* ???????????? ?????? ????????? ???????????? ??????????????? ????????????. */
      $(".textbox-wrapper").on('change','#customSwitch'+i,function(){
         console.log("??????0");
         if ($('#customSwitch'+i).is(':checked')) {
            console.log("??????1");
            $('.customSwitch'+i).css('display', 'block');
         } else {
            console.log("??????2");
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
                        title : "????????? ??????",
                        text : "???????????? ??????????????????. ??????????????? ?????? ??????????????????",
                        icon : "resources/images/alert_cross.jpg",
                        //"warning"
                        button : "??????",
                     });
                  } else {
                     swal({
                        title : "????????? ??????",
                        text : "????????? ???????????????.",
                        icon : "success",
                        button : "??????",
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
                        title : "??????",
                        text : "???????????? ??????????????????.",
                        icon : "resources/images/alert_cross.jpg",
                        //"warning"
                        button : "??????",
                     });
                  } else {
                     swal({
                        title : "??????",
                        text : "DB??? ?????????????????????.",
                        icon : "success",
                        button : "??????",
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
                        //???????????? ????????? ???????????? ????????? ????????????.
                        //.textbox-wrapper ??? ?????? #wordSearch(?????????)?????? keyup ???????????? ???????????????
                            
                            //???????????? ????????? autocomplete()??? ????????????.
                           $("#wordSearch"+i).autocomplete({
                              source : function( request, response ) {
                                 //?????? ??????? jquery Ajax??? ????????? ????????? ???
                                 //json????????? ???????????? ??????????????? ????????? ?????? ??????
                                   $.ajax({
                                      //????????? URL
                                       url: "ajax/autocomplete",
                                       //?????? jsontype json??????
                                       dataType: "json",
                                       // parameter ?????????. ???????????? ????????? ??????.
                                       processData:true,
                                       data: 
                                       {
                                         //request.term >> ?????? ????????? text???????????? ????????? ?????????.
                                         searchvalue: request.term
                                       }           
                                   ,      
                                       success: function( result ) {
                                          //return ????????? response() ???????????? ????????? ?????? ???????????? ????????????.
                                           response( 
                                              $.map( result, function( item ) {
                                                    return {
                                                    //label : ????????? ???????????? ?????????
                                                    //value : ?????? text????????? ????????? ???
                                                    //????????? ?????? ????????? ??????
                                                    //????????? ???????????? text??? ???, value??? ???????????? 
                                                         label: item.wordNm,
                                                         value: item.wordNm
                                                    }
                                               })
                                            );
                                       }
                                     });
                               },
                              //?????? ?????? ???????????? ????????? ????????????????????? ??????
                              minLength: 1,
                              //???????????? ???????????? ?????? ??? ????????? ???????????? ?????? ??????
                              //??????????????? ?????? text???????????? ?????? ????????????.
                              select: function( event, ui ) {
                                 //???????????? ?????? ??? ???????????? ?????????
                                 //?????????, ??? ?????? ????????? ????????? AJAX ????????? ???????????????,
                                 //???????????? ?????? ?????? ????????? ????????? ??????. ????????? ?????? ????????? ?????? ??? ??????.
                                 //????????? setTimeout() ????????? ?????????????????? ????????? ???????????? 0.1??? ?????? ????????? ???????????????
                                 //???????????? ???????????? ????????? ???????????? ?????? ????????? ?????? ????????? ??? ?????????.
                                 setTimeout(function() { 
                                    var wordSearchCheck = $("#wordSearchCheck"+i);
                                    console.log("??????1: "+$("#wordSearch"+i).val());
                                    var parameter = encodeURI(encodeURIComponent($("#wordSearch"+i).val()));
                                    console.log("??????2: "+parameter);
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
                                             //DB??? ?????? ?????? ?????????
                                             console.log('Circlecheck??? ?????? ????????????');
                                             wordSearchCheck.attr("src", "<c:url value='/resources/videos/circle_check_animation.mp4'/>");
                                             data = JSON.stringify(data);
                                             }else if(!data){
                                             //DB??? ?????? ?????? ?????????
                                          console.log('Crosscheck??? ?????? ????????????');
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
                        console.log("??????1: "+$("#wordSearch"+i).val());
                        var parameter = encodeURI(encodeURIComponent($("#wordSearch"+i).val()));
                        console.log("??????2: "+parameter);
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
                                 //DB??? ?????? ?????? ?????????
                                 console.log('Circlecheck??? ?????? ????????????');
                                 wordSearchCheck.attr("src", "<c:url value='/resources/videos/circle_check_animation.mp4'/>");
                                 data = JSON.stringify(data);
                                 }else if(!data){
                                 //DB??? ?????? ?????? ?????????
                              console.log('Crosscheck??? ?????? ????????????');
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
                                       <!-- apennd() ???????????? ????????? ????????? ???????????? ????????? ????????? ???????????? ????????? ??? ??????. -->
                                             
                                       <div>
                                          <!-- 250????????? 256????????? ?????????, input div label ?????? ????????? ????????? input checkbox??? -->
                                          <div class="custom-control custom-switch"
                                             style="display: inline-block;">
                                             <input type="checkbox" class="custom-control-input"
                                                id="customSwitch"> <label class="custom-control-label"
                                                id="customSwitchLabel"
                                                for="customSwitch"></label>
                                          </div>
                                          
                                          <!-- -->   
                                       
                                          <!-- ??????????????? ??????????????? -->
                                          <input type="text" id="wordSearch"
                                                placeholder="????????????"
                                                style="padding-left: 10px; width: 300px">
                                          <!--  -->
                                             
                                          <!-- ???????????? ?????? -->
                                          <button type="button" class="btn btn-danger remove-textbox">
                                                 <i class="glyphicon glyphicon-minus"></i>
                                             </button>   
                                             <!-- -->   
                                             
                                            <!-- DB??? ????????? OX????????? ?????????. -->
                                          <%-- <img id="wordSearchCheck" >
                                          <video src="<c:url value='/resources/videos/circle_check_animation.mp4'/>" width=50 height=50 autoplay="autoplay" muted="muted"></video> --%>
                                          <div class="video-button">
                                             <video id="wordSearchCheck" width=39 height=50
                                                autoplay="autoplay" muted="muted"></video>
                                          </div>
                                          <!--  -->
                                              
                                       </div>
                                           <!-- ???????????? ?????? ??? ?????? ????????? -->                     
                                           <div class="profile">
                                        	<div class="word_text">                   
                                              <div class="customSwitch" style="display: none">
                                              <h2>?????????</h2>
                   			               <input type="text" id="wordName"
                   			                     placeholder="?????????" style="padding-left: 10px;"><button class="btn">pay now</button>
                   			               <br>
                   			               <br>
                                              </div>
                                              <div class="customSwitch" style="display: none">
                                              <h2>?????????????????????</h2>
                   			               <input type="text" id="wordName"
                   			                     placeholder="?????????????????????" style="padding-left: 10px;"><button class="btn">pay now</button>
                   			               <br>
                   			               <br>
                                              </div>
                                              <div class="customSwitch" style="display: none">
                                              <h2>???????????????</h2>
                   			               <input type="text" id="wordName"
                   			                     placeholder="???????????????" style="padding-left: 10px;"><button class="btn">pay now</button>
                   			               <button class="btn">change plan</button>
                   			               <br>
                   			               <br>
                                              </div>
                                       
                                              <div class="customSwitch" style="display: none">
                                              <h2>????????????</h2>
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