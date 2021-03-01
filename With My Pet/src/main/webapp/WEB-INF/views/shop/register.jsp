<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>:: With My Pet :: 함께 산책해요 | 상품 등록 </title>
      <!-- google fonts -->  
      <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
      <!-- google fonts --> 
      <!-- Template CSS -->
      <link rel="stylesheet" href="assets/css/cart.css">
      <!-- Template CSS -->
      <!-- sweetAlert --> 
      <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
		<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
      <!-- sweetAlert --> 
   </head>
   <body>
      <!--header-->
      <header id="site-header" class="fixed-top">
         <div class="container">
            <nav class="navbar navbar-expand-lg stroke">
               <a href="../"><img src="assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt="" /></a>
               </a>
               <!-- if logo is image enable this   
                  <a class="navbar-brand" href="#index.html">
                      <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
                  </a> -->
               <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                  data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                  aria-label="Toggle navigation">
               <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
               <span class="navbar-toggler-icon fa icon-close fa-times"></span>
               </span>
               </button>
               <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                  <ul class="navbar-nav ml-auto">
                     <li class="nav-item">
                        <a class="nav-link" href="../">Home <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        산 책 <span class="fa fa-angle-down"></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                           <a class="dropdown-item" href="walklist.do">산책모집 </a>
                           <a class="dropdown-item" href="walkboard.do">산책후기 </a>
                        </div>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        쇼 핑 <span class="fa fa-angle-down"></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                           <a class="dropdown-item" href="product">쇼핑하기</a>
                           <a class="dropdown-item" href="cart">장바구니</a>
                           <a class="dropdown-item" href="order">결제</a>
                        </div>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        커뮤니티 <span class="fa fa-angle-down"></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                           <a class="dropdown-item" href="blog.html">공지사항</a>
                           <a class="dropdown-item" href="blog-single.html">일상이야기</a>
                        </div>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="gallery.html">로그인 </a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="contact.html">Contact </a>
                     </li>
                  </ul>
               </div>
               <!-- toggle switch for light and dark theme -->
               <div class="mobile-position">
                  <nav class="navigation">
                     <div class="theme-switch-wrapper">
                        <label class="theme-switch" for="checkbox">
                           <input type="checkbox" id="checkbox">
                           <div class="mode-container">
                              <i class="gg-sun"></i>
                              <i class="gg-moon"></i>
                           </div>
                        </label>
                     </div>
                  </nav>
               </div>
               <!-- //toggle switch for light and dark theme -->
            </nav>
         </div>
      </header>
      <!-- //header -->
      <!-- about breadcrumb -->
      <section >
         <div class="breadcrumb-bg breadcrumb-bg-about py-sm-5 py-4">
            <div >
               <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                     <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                  </ol>
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <img class="d-block w-100" src="assets/images/2ban1.jpg" height="400px" alt="First slide">
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="assets/images/2ban2.jpg" height="400px" alt="Second slide">
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="assets/images/2ban1.jpg" height="400px" alt="Third slide">
                     </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                  </a>
               </div>
            </div>
         </div>
      </section>
      <!-- //about breadcrumb -->
      <section>
         <h3 class="hny-title" align="center">상품등록 화면</h3 >
         </br>     
         <div class="container py-lg-5" >
         <div class="content-info-in row">
         <div class="content-gd col-lg-5 pl-lg-4">
         <div class="title-content text-left mb-2">
         <div class="title-content text-left mb-2">
            <div id="container_box">
               <!--  파일첨부 -->
               <form enctype="multipart/form-data" action="category?catgo_code=8"  method="post" autocomplete="off" >
                  <div class="inputArea">
                     <label for="product_name">상품명</label>
                     <input type="text" id="product_name" name="product_name" oninvalid="alert('상품명을 입력해주세요~!');" required/>
                  </div>
                  <div class="inputArea">
                     <label for="product_price">상품가격</label>
                     <input type="text"  id="product_price" name="product_price" onKeyPress="return numChk(event)" oninvalid="alert('상품가격을 입력해주세요~!');" required/>
                  </div>
                  <div class="inputArea">
                     <label for="product_tag">상품태그</label>
                     <textarea rows="5" cols="50" id="product_tag" name="product_tag" oninvalid="alert('상품태그명을 입력해주세요~!');" required></textarea>
                  </div>
                  <div class="inputArea">
                     <label for="product_content">상품소개</label>
                     <textarea rows="5" cols="50" id="product_content" name="product_content" oninvalid="alert('상품콘텐츠을 입력해주세요~!');" required></textarea>
                  </div>
                  <div class="inputArea">
                     <label for="product_image" >상품 이미지</label>
                     <input type="file" name="uploadfile" oninvalid="alert('상품사진을 등록해주세요~!');" required />
                     <!-- %=request.getRealPath("/") % -->	
                  </div>
                  <input type="submit" value="업로드" onclick="alert(swal)" >
                  <button onclick="Alert();">Alert</button>
					<button onclick="Confirm();">Confirm</button>
               </form>
            </div>
         </div>
      </section>
      <script type="text/javascript">
         function numChk(e) { 
                    var keyValue = event.keyCode;
                    if((keyValue >= 0) && (keyValue <= 100000)){ 
                        return true;
                    }
                    else{ 
                        return false;
                    }
            } 
         
         function alert(swal){
        	 swal("Hello world!");
        	 
        	 var alert = function(msg, type) {
        			swal({
        				title : '',
        				text : msg,
        				type : type,
        				timer : 1500,
        				customClass : 'sweet-size',
        				showConfirmButton : false
        			});
        		}

        		var confirm = function(msg, title, resvNum) {
        			swal({
        				title : title,
        				text : msg,
        				type : "warning",
        				showCancelButton : true,
        				confirmButtonClass : "btn-danger",
        				confirmButtonText : "예",
        				cancelButtonText : "아니오",
        				closeOnConfirm : false,
        				closeOnCancel : true
        			}, function(isConfirm) {
        				if (isConfirm) {
        					swal('', '예약이 승인되었습니다.', "success");
        				}else{
        					swal('', '예약이 거부되었습니다.', "failed");
        				}

        			});
        		}

        		function Alert() {
        			alert('gg', 'success');
        		}
        		function Confirm() {
        			confirm('', '승인할까요?');
        		}
         }
      </script>
      <!-- //about breadcrumb -->
      </br>
      <script src="assets/js/bootstrap.min.js"></script>
      </section>  
      <!-- move top -->
      <button onclick="topFunction()" id="movetop" title="Go to top">
      &#10548;
      </button>
      <script>
         // When the user scrolls down 20px from the top of the document, show the button
         window.onscroll = function () {
           scrollFunction()
         };
         
         function scrollFunction() {
           if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
             document.getElementById("movetop").style.display = "block";
           } else {
             document.getElementById("movetop").style.display = "none";
           }
         }
         
         // When the user clicks on the button, scroll to the top of the document
         function topFunction() {
           document.body.scrollTop = 0;
           document.documentElement.scrollTop = 0;
         }
      </script>
      <!-- /move top -->
      </section>
      <!-- //footer-28 block -->
      <!-- disable body scroll which navbar is in active -->
      <script>
         $(function () {
           $('.navbar-toggler').click(function () {
             $('body').toggleClass('noscroll');
           })
         });
      </script>
      <!-- disable body scroll which navbar is in active -->
      <!-- Template JavaScript -->
      <script src="assets/js/jquery-3.3.1.min.js"></script>
      <script src="assets/js/theme-change.js"></script>
      <!-- libhtbox -->
      <script src="assets/js/lightbox-plus-jquery.min.js"></script>
      <!-- libhtbox -->
      <!--/MENU-JS-->
      <script>
         $(window).on("scroll", function () {
           var scroll = $(window).scrollTop();
         
           if (scroll >= 80) {
             $("#site-header").addClass("nav-fixed");
           } else {
             $("#site-header").removeClass("nav-fixed");
           }
         });
         
         //Main navigation Active Class Add Remove
         $(".navbar-toggler").on("click", function () {
           $("header").toggleClass("active");
         });
         $(document).on("ready", function () {
           if ($(window).width() > 991) {
             $("header").removeClass("active");
           }
           $(window).on("resize", function () {
             if ($(window).width() > 991) {
               $("header").removeClass("active");
             }
           });
         });
         
         
      </script>
      <!--//MENU-JS-->
      <script src="assets/js/bootstrap.min.js"></script>
   </body>
</html>