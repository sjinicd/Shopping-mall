<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>:: With My Pet :: 함께 산책해요 </title>
   <!-- google fonts -->  
   <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/icon/footprint16.png">
   <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
   <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
   <link rel="stylesheet" href="assets/plugins/toastr/css/toastr.min.css">
   <link rel="stylesheet" href="../assets/css/follow.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.29.2/sweetalert2.all.js"></script>
</head>

	<style>
	
	  	form {
	  		margin-top: 10px;
	  	}
	  	
	div.wrapper {
		display: flex;
        width: 740px;
        height: auto;
        justify-content: center;
        align-item: center;
    }
    div.left {
   		display: flex;
        width: 35%;
        box-sizing: border-box;
        text-align:center;
        justify-content: center;
        align-items: center;
    }
    div.center {
    	display: flex;
        width: 40%;
        box-sizing: border-box;
        justify-content: flex-start;
        align-items: center;
	}
	   
    div.right {
   	 	display: flex;
        width: 25%;
        box-sizing: border-box;
        justify-content: center;
        align-items: center;
    }
	</style>
	
<body>
<!--header-->
<header id="site-header" class="fixed-top">
  <div class="container">
      <nav class="navbar navbar-expand-lg stroke">
          <a href="/"><img src="../assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt="" /></a>
         
          <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
              data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
              aria-label="Toggle navigation">
              <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
              <span class="navbar-toggler-icon fa icon-close fa-times"></span>
          </button>
          
          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                      <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	산 책 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu " aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';" >
                      	<a class="dropdown-item" href="../walk/list.do?cp=1" >산책모집 </a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	쇼 핑 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                      	<a class="dropdown-item" href="../product?catgo_code=9">쇼핑하기</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                          data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	 커뮤니티 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                          <a class="dropdown-item" href="../board/list.do?board_idx=1" style="font-family: 'Spoqa Han Sans Neo';">공지사항</a>
                          <a class="dropdown-item" href="../board/list.do?board_idx=2" style="font-family: 'Spoqa Han Sans Neo';">일상이야기</a>
                          <a class="dropdown-item" href="../board/list.do?board_idx=3" style="font-family: 'Spoqa Han Sans Neo';">산책후기</a>
                          <a class="dropdown-item" href="../board/list.do?board_idx=4" style="font-family: 'Spoqa Han Sans Neo';">일상이야기</a>
                      </div>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="/member/mypage.do" style="font-family: 'Spoqa Han Sans Neo';">마이페이지 </a>
                  </li>                     
                  <li class="nav-item">
                      <a class="nav-link" href="/member/logout.do" style="font-family: 'Spoqa Han Sans Neo';">로그아웃 </a>
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
      </nav>
  </div>
</header>
&nbsp;
<!-- //header -->
  <section class="w3l-stats py-5" id="follow-stats">
    <div class="gallery-inner container py-lg-0 py-3">
      <div class="row stats-con pb-lg-3">
        <div class="col-lg-3 col-6 stats_info counter_grid">
          <div class="testi-des">
          	<div class="test-img">
          		<img src="<c:url value="/img/${petMypage.pet_fname}"/>" class="img-fluid" alt="client-img" style="width: 130px; height: 130px;">
          	</div>
          </div>
          <h4>내 프로필</h4>
        </div>
        <div class="col-lg-3 col-6 stats_info counter_grid1" button type="button"  onclick="location.href =  '/member/mypost.do';">
          <p class="counter">POST</p>
          <h4>게시물</h4>
        </div>
        <div class="col-lg-3 col-6 stats_info counter_grid mt-lg-0 mt-5" button type="button" onclick="location.href =  '/member/follower.do';">
          <p class="counter">${fn:length(followerMembervo1) }</p>
          <h4>팔로워</h4>
        </div>
        <div class="col-lg-3 col-6 stats_info counter_grid mt-lg-0 mt-5" button type="button" onclick="location.href =  '/member/following.do';">
          <p class="counter">${fn:length(followingMembervo1) }</p>
          <h4>팔로잉</h4>
        </div>
      </div>
    </div>
  </section>
<!-- //////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
<br><br><br><br>
<div class="testi-des" style="margin-bottom:40px; text-align:center;">
<center>
<h2>팔로잉</h2>
<br><br><br>
<c:forEach var="followingMembervo1" items="${followingMembervo1}" varStatus="status">	
<input class="following_delete" type="hidden">
	<div class="wrapper">	
     <div class="left">
        <img src="<c:url value="/img/${followingMembervo2[status.index].pet_fname}"/>"  width="80" hight="80" align="middle">
        </div>
        <!-- 가운데 -->
        <div class="center">${followingMembervo1.member_name}
        </div>
        <!-- 오른쪽 -->
        <div class="right">
        <button onclick="following_delete(${followingMembervo1.member_number});" class="btn btn-primary mt-4">삭제</button>
        </div>
	</div>
<br><br><br>
		</c:forEach>
	</center>
</div>
<br><br>
</body>
<script>
function following_delete(member_number) {
	$('following_delete').val(member_number);
		
	$.ajax({
	    type : "POST",
	    url : "deleteFollowing.do",
	    data :{  member_number : member_number
	    	},
	    success : function(data) {
	    }
	});
}
</script>

	<section class="w3l-footer">
  <footer class="footer-28">
    <div class="footer-bg-layer">
      <div class="container py-lg-3">
        <div class="row footer-top-28">
          <div class="col-lg-6 col-md-5 footer-list-28 mt-5">
            <h6 class="footer-title-28">Contact information</h6>
            <ul>
              <li>
                <p><strong>Address</strong> : Seoul Mapo Baekbumro, South Korea</p>
              </li>
              <li>
                <p><strong>Contact</strong> : <a href="tel:+(12)234-11-24">Click Here</a></p>
              </li>
            </ul>

            <div class="main-social-footer-28 mt-3">
              <ul class="social-icons">
                <li class="facebook">
                  <a href="#link" title="Facebook">
                    <span class="fa fa-facebook" aria-hidden="true"></span>
                  </a>
                </li>
                <li class="twitter">
                  <a href="#link" title="Twitter">
                    <span class="fa fa-twitter" aria-hidden="true"></span>
                  </a>
                </li>
                <li class="dribbble">
                  <a href="#link" title="Dribbble">
                    <span class="fa fa-dribbble" aria-hidden="true"></span>
                  </a>
                </li>
                <li class="google">
                  <a href="#link" title="Google">
                    <span class="fa fa-google" aria-hidden="true"></span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-lg-6 col-md-7">
            <div class="row">
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28">Walk Service</h6>
                <ul>
                  <li><a href="about.html">Cha Ji Hyun</a></li>
                  <li><a href="blog.html">Lim Yeon Ji</a></li>
                </ul>
              </div>
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28">Shopping Service</h6>
                <ul>
                  <li><a href="contact.html">Lee Ok Seok</a></li>
                  <li><a href="#signup">Sung Jin Hee</a></li>
                </ul>
              </div>
              <div class="col-sm-4 footer-list-28 mt-5">
                <h6 class="footer-title-28">Member Service</h6>
                <ul>
                  <li><a href="#URL">Choi Woo Jae</a></li>
                  <li><a href="#URL">Lee Su Jin</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>


      <div class="midd-footer-28 align-center py-lg-4 py-3 mt-5">
        <div class="container">
          <p class="copy-footer-28 text-center"> &copy; 2021 With My Pet. All Rights Reserved.
           </p>
        </div>
      </div>
    </div>
  </footer>
  </section>
 
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
    
    $(document).ready(function () {
    	 $('.popup-with-zoom-anim').magnificPopup({
             type: 'inline',

             fixedContentPos: false,
             fixedBgPos: true,

             overflowY: 'auto',

             closeBtnInside: true,
             preloader: false,

             midClick: true,
             removalDelay: 300,
             mainClass: 'my-mfp-zoom-in'
           });

           $('.popup-with-move-anim').magnificPopup({
             type: 'inline',

             fixedContentPos: false,
             fixedBgPos: true,

             overflowY: 'auto',

             closeBtnInside: true,
             preloader: false,

             midClick: true,
             removalDelay: 300,
             mainClass: 'my-mfp-slide-bottom'
           });
    	$("#owl-demo1").owlCarousel({
    	      loop: true,
    	      margin: 20,
    	      nav: false,
    	      responsiveClass: true,
    	      responsive: {
    	        0: {
    	          items: 1,
    	          nav: false
    	        },
    	        736: {
    	          items: 1,
    	          nav: false
    	        },
    	        1000: {
    	          items: 2,
    	          nav: false,
    	          loop: false
    	        }
    	      }
    	    })
        $('.owl-one').owlCarousel({
          loop: true,
          margin: 0,
          nav: false,
          responsiveClass: true,
          autoplay: true,
          autoplayTimeout: 5000,
          autoplaySpeed: 1000,
          autoplayHoverPause: false,
          responsive: {
            0: {
              items: 1,
              nav: false
            },
            480: {
              items: 1,
              nav: false
            },
            667: {
              items: 1,
              nav: true
            },
            1000: {
              items: 1,
              nav: true
            }
          }
        })
      })

    var login = '${login.member_name}';
    var sender = $('#senNo').val();
    var socket = null;
    if(login != '') connectWS();
    function connectWS(){
    	var url = "ws://localhost:8080/replyEcho";
    	var ws = new WebSocket(url);
    	socket = ws;
    	// 커넥션 연결
    	ws.onopen = function(event){
    		console.log('info : connection opened'+event);
    	 // 메세지 왔을때 (알림 + 목록갱신)
    	 ws.onmessage = function (event){
    		toastr.options = {
                  closeButton: true,
                  progressBar: true,
                  showMethod: 'slideDown',
                  timeOut: 8000
           };
           toastr.success('메시지 알림', event.data+' 님이 메시지를 보냈습니다!');
    	 };
    	};
    	ws.onclose = function(event) { 
    		console.log('info : connection closed.');
    		setTimeout(function(){ 
    			connectWS();
    		}, 1000);
    	};
    	ws.onerror = function(event) { console.log('error : '+event); };
    };
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
      })
      
      
  </script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="../assets/js/theme-change.js"></script>
  <script src="../assets/js/owl.carousel.js"></script>
  <script src="../assets/js/jquery.waypoints.min.js"></script>
  <script src="../assets/js/jquery.countup.js"></script>
  <script src="../assets/js/jquery.magnific-popup.min.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>
  <script src="../assets/plugins/sweetalert2/dist/sweetalert2.min.js"></script>
  <script src="//cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.js"></script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</body>
</html>