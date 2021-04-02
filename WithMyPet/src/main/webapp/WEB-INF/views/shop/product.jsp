<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>:: With My Pet :: 함께 산책해요 | 쇼핑 대분류 카테고리 </title>
      <!-- google fonts -->  
      <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
      <!-- google fonts --> 
      <!-- Template CSS -->
      <link rel="stylesheet" href="assets/css/category.css">
      <!-- Template CSS -->
      <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
   </head>
   <body>
      <!--header-->
      <header id="site-header" class="fixed-top" >
         <div class="container">
            <nav class="navbar navbar-expand-lg stroke" style="margin-top: 1.%; margin-right: 1.5%;">
               <a href="../"><img src="assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt="" /></a>
               <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                  data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                  aria-label="Toggle navigation">
               <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
               <span class="navbar-toggler-icon fa icon-close fa-times"></span>
               </button>
               <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                  <ul class="navbar-nav ml-auto" style="margin-right: 0.5%;">
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
                        <a class="nav-link dropdown-toggle" href="product" id="navbarDropdown1" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        쇼 핑 <span class="fa fa-angle-down"></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                           <a class="dropdown-item" href="product">쇼핑하기</a>
                        </div>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        커뮤니티 <span class="fa fa-angle-down"></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                            <a class="dropdown-item" href="board/list.do?board_idx=1" style="font-family: 'Spoqa Han Sans Neo';">공지사항</a>
                          <a class="dropdown-item" href="board/list.do?board_idx=2" style="font-family: 'Spoqa Han Sans Neo';">일상이야기</a>
                          <a class="dropdown-item" href="board/list.do?board_idx=3" style="font-family: 'Spoqa Han Sans Neo';">산책후기</a>
                          <a class="dropdown-item" href="board/list.do?board_idx=4" style="font-family: 'Spoqa Han Sans Neo';">일상이야기</a>
                        </div>
                     </li>
                     <c:choose>
                        <c:when test="${empty login.member_name}">
                           <li class="nav-item">
                              <a class="nav-link" href="/member/login.do" style="font-family: 'Spoqa Han Sans Neo';">로그인 </a>
                           </li>
                        </c:when>
                        <c:otherwise>
                           <li class="nav-item">
                              <a class="nav-link" href="/member/logout.do" style="font-family: 'Spoqa Han Sans Neo';">로그아웃 </a>
                           </li>
                           <li class="nav-item">
                              <a class="nav-link" href="/member/login.do" style="font-family: 'Spoqa Han Sans Neo';">마이페이지 </a>
                           </li>
                        </c:otherwise>
                     </c:choose>
                     <!-- 관리자일때만 관리자페이지 입장 -->
                     <c:if test="${login.member_name eq 'admin'}">
                        <li class="nav-item">
                           <a class="nav-link" href="/admin/index.do" style="font-family: 'Spoqa Han Sans Neo';">관 리 </a>
                        </li>
                     </c:if>
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
                        <img class="d-block w-100" src="assets/images/2ban2.jpg" height="400px" alt="First slide">
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="assets/images/2ban3.jpg" height="400px" alt="Second slide">
                     </div>
                     <div class="carousel-item">
                        <img class="d-block w-100" src="assets/images/2ban4.jpg" height="400px" alt="Third slide">
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
      <!--/gallery-->
      <section class="w3l-portfolio-8 py-5">
         <div class="portfolio-main py-md-4 py-3">
            <div class="container">
               <div class="header-section text-center mx-auto">
                  <h3 class="sub-title">쇼핑 카테고리</h3>
                  <!--h3 class="hny-title">Latest Gallery</h3-->
               </div>
               <div class="row galler-top mt-lg-5 mt-4">
                  <div class="col-md-4 protfolio-item hover14">
                     <a href="category?catgo_code=8"  class="mb-4" style="text-align: center;">
                        <figure>
                           <img src="assets/images/g1.jpg" alt="product" class="author align-items-center mt-3 mb-1"  onclick="location.href='category?catgo_code=8'" width="300" height="300" >
                        </figure>
                        <c:if test="${empty product}">
                           없음.
                        </c:if>
                        <c:forEach items="${product}" var="list">
                           <span class="sub-title2 text-center mb-2" >${list.catgo_name}</span>
                        </c:forEach>
                     </a>
                     <a href="category2" data-lightbox="example-set" class="mb-4" data-title="lorem ipsum dolor sit amet" style="text-align: center;">
                        <figure>
                           <img src="assets/images/g2.jpg" alt="product" class="author align-items-center mt-3 mb-1" onclick="location.href='category2'" width="300" height="300">
                        </figure>
                        <span class="sub-title2 text-center mb-2">가방</span>         
                     </a>
                  </div>
                  <div class="col-md-4 protfolio-item hover14">
                     <a href="category2" class="mb-4" style="text-align: center;">
                        <figure>
                           <img src="assets/images/g3-1.jpg" alt="product" class="author align-items-center mt-3 mb-1" onclick="location.href='category2'" width="300" height="300">
                        </figure>
                        <span class="sub-title2 text-center mb-2">애견방석</span>
                     </a>
                     <a href="assets/images/g4.jpg" data-lightbox="example-set" class="mb-4" data-title="lorem ipsum dolor sit amet" style="text-align: center;">
                        <figure>
                           <img src="assets/images/g4.jpg" alt="product" class="author align-items-center mt-3 mb-1" width="300" height="300">
                        </figure>
                        <span class="sub-title2 text-center mb-2">사료</span>
                     </a>
                  </div>
                  <div class="col-md-4 protfolio-item hover14">
                     <a href="assets/images/g5.jpg" class="mb-4" style="text-align: center;">
                        <figure>
                           <img src="assets/images/g5.jpg" alt="product" class="author align-items-center mt-3 mb-1" width="300" height="300">
                        </figure>
                        <span class="sub-title2 text-center mb-2">계단</span>
                     </a>
                     <a href="assets/images/g6.jpg" class="mb-4" style="text-align: center;">
                        <figure>
                           <img src="assets/images/g6.jpg" alt="product" class="author align-items-center mt-3 mb-1" width="300" height="300">
                        </figure>
                        <span class="sub-title2 text-center mb-2">산책줄 & 하네스</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!--//gallery-->
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