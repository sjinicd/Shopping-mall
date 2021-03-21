<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>With My Pet | 쇼핑 상세페이지 </title>
      <!-- google fonts -->  
      <link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="../assets/css/productDes.css">
      <link rel="stylesheet" href="../assets/css/semantic.min.css">
      <link rel="stylesheet" href="../assets/css/semantic2.css">
      <!-- google fonts --> 
      
   </head>
   <body>
      <!--header-->
      <header id="site-header" class="fixed-top">
         <div class="container">
            <nav class="navbar navbar-expand-lg stroke">
               <a href="../"><img src="assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt="" /></a>
               </a>
               </h1>
               <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                  data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                  aria-label="Toggle navigation">
               <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
               <span class="navbar-toggler-icon fa icon-close fa-times"></span>
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
                        <a class="nav-link dropdown-toggle" href="product" id="navbarDropdown1" role="button"
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
      <!-- //about breadcrumb -->
      <section class="w3l-blog-single" id="blog">
      <section class="w3l-blog-single1 py-5">
         <div class="container py-lg-5">
         <div class="d-grid-1">
            <div class="text">
               <ul class="tag">
                  <li class="design">Hot item</li>
               </ul>
               <h3 class="hny-title mt-3">위마펫 마약방석</h3>
               <tr>
                  <h4>&nbsp;</h4>
                  <table>
                     <tr>
                        <td>
                           <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" align="center" data-interval="false">
                              <ol class="carousel-indicators">
                                 <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                 <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                 <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                              </ol>
                              <div class="carousel-inner" >
                                 <div class="carousel-item active" >
                                    <img class="d-block w-100" src="assets/images/g3-2.jpg" height="400px" alt="First slide">
                                 </div>
                                 <div class="carousel-item" >
                                    <img class="d-block w-100" src="assets/images/g3-1.jpg" height="400px" alt="Second slide">
                                 </div>
                                 <div class="carousel-item" >
                                    <img class="d-block w-100" src="assets/images/g3-4.jpg" height="400px" alt="Third slide">
                                 </div>
                              </div>
                           </div>
                  </table>
                  <!--img src="assets/images/g10-1.jpg" width="350" height="450"-->
                 <td align="center">
                     <form name="addProductsInCart" id="addProductsInCart" method="post" action="cart">
                     <input name="product_name" type="hidden" value="${productDes21.product_name}">
                     	<input name="product_code" type="hidden" value="${productDes21.product_code}">
                     	<input name="product_price" type="hidden" value="${productDes21.product_price}">
                     	<input name="product_content" type="hidden" value="${productDes21.product_content}">
                     	<input name="product_image" type="hidden" value="assets/images/${productDes21.product_image}">
                        <table class="table" >
                           <tr>
                     		
                     		</tr>
                           <tr>
                           
                           <td>상품명</td>
                           <td name="product_name" type="hidden" value="${productDes21.product_name}">${productDes21.product_name}</td>
                           </tr>
                           <tr>
                           <td>가격</td>
                           <td name="product_price" type="hidden" value="${productDes21.product_price}">${productDes21.product_price}</td>
                           </td>
                           </tr>
                           </tr>
                           <td>
                           	수량 선택 &nbsp;</br></td>
                           <td>
                          
                          	<input type="number" id="product_amount" name="product_amount" class="ui selection dropdown"
                          	value="${productDes21.product_amount}" step="1" min="1" max="10">
                           &nbsp;
                           
                           </br>
                           </td>
                           <tr>
                           <td> 
                           &nbsp;Size 선택 &nbsp;</br> 
                           </td>
                           <td>
                           &nbsp;<select name="product_size" align="center" id="product_size" class="ui selection dropdown" value="${productDes21.product_size}">==$0
                           <option value="S 베이지">S 베이지</option>
                           <option value="M 베이지">M 베이지</option>
                           <option value="S 모카">S 모카</option>
                           <option value="M 모카">M 모카</option>
                           </select>&nbsp;
                           </td> &nbsp;
                           </tr>
                           </td>
                           </tr></br></br>
                           <td colspan="4">
                              &nbsp;
                              <input type="submit" style="text-align:left;" value="장바구니에 담기">
                              <!--input type="submit" value="리뷰 올리기" class="btn btn-style btn-primary"-->
                              </br>
                              
                              </br><a href="product?catgo_code=9">상품목록</a>
                           </td>
                        </table>
                        </form>
                        </td>
                        </tr>
                     </table>
                   
               </tr>
            </div>
         </div>
         <div class="text-content-text">
         <div class="d-grid-2">
         <div class="text2">
            <p class="mt-md-0 mt-4 ml-md-4 ml-0"> 
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <h4 class="text-head-text-9" align="center">
               <a href="#text">
                  </br>
                  <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                  <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                  <p class="text2-text2 mt-2" align="center">
               <a align="center">안녕하세요~~!💕</br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
               With My Pet 입니다! </br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
               With My Pet 마약방석은 </br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>베이직한 디자인과 컬러로 오랫동안 사랑받고 있는 </br> <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>핫 아이템이에요^^*</br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
               <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
               강아지들이 너무 애정하는 털 소재로 만들어져있고 </br> <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>사이드 부분에 턱을 기댈 수 있도록</br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p> 디자인되어 있어 강아지들이 너무 좋아해요.</br>
               </a>
            </h4>
            </p>
            </p>
            <div class="text-content-text">
               <div class="d-grid-2">
                  <div class="text2">
                     <p class="mt-md-0 mt-4 ml-md-4 ml-0"> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <h4 class="text-head-text-9" align="center">
                        <a href="#text">
                           </br>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                           </br>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                           </br></br>
                           <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <img src="assets/images/g3-6.jpg" width="650" height="500" align="center">
                           <p class="text2-text2 mt-2" align="center">
                        <a align="center"></br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>                     
                        고급 화이바솜이 가득한 빈백 형태의 방석으로 </br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>뒤쪽을 받쳐주는 등받이가</br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p> 사람에게 안긴 듯한 포근한 느낌을 줘요. 
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;</p></br><p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                        <img src="assets/images/g3-5.jpg" width="650" height="500" align="center"> <p>&nbsp;&nbsp;&nbsp;&nbsp;</p></p>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;</p></br>
                        <img src="assets/images/g3-3.jpg" width="650" height="500" align="center"></br>
                        <p class="text2-text2 mt-2" align="center">&nbsp;&nbsp;&nbsp;&nbsp;베이지 컬러 [M, L] &nbsp;&nbsp;&nbsp;&nbsp;</p>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;</p></br>
                        <img src="assets/images/g3-4.jpg" width="650" height="500" align="center"></br></br></br>
                        <p class="text2-text2 mt-2">&nbsp;&nbsp;&nbsp;&nbsp;    </p></br></br>
                        <img src="assets/images/g3-1.jpg" width="650" height="500" align="center"></br></br></br>
                        <p class="text2-text2 mt-2">&nbsp;&nbsp;&nbsp;&nbsp;모카 컬러 [M, L] </p> </br></br>
                        <img src="assets/images/g3-5.jpg" width="650" height="500" align="center"></br></br>
                        <p class="text2-text2 mt-2">&nbsp;&nbsp;&nbsp;&nbsp;</p></br></br></br></br></br> 
                        <img src="assets/images/g3-2.jpg" width="650" height="500" align="center"></br></br></br>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                        <img src="assets/images/g3-3.jpg" width="650" height="500" align="center">
                        <p class="text2-text2 mt-2">&nbsp;&nbsp;&nbsp;&nbsp;</p> 
                        </a>
                     </h4>
                     </p>
                     </p>
                     <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                     <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                     <h4 class="text-head-text-9" align="center">
                        <a href="#text">
                           위마펫 마약방석 </br>
                     </h4>
                     <p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
                     <p class="text2-text2 mt-2" align="center">With My Pet 인기상품 입니다.</br>
                     빵빵하고 포근한 위마펫 마약방석으로  </br> 사랑하는 아이들에게 더욱 편안한 휴식공간을 만들어주세요.</br>
                     고급 화이바솜 충전재를 사용해 복원력이 뛰어나  모양이 잘 유지됩니다.</br>오랫동안 편안함을 느낄 수 있어요.</p>
                  </div>
                  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
               </div>
            </div>
         </div>
      </section>
      <!-- text-styles-33 -->
      <!-- /text-styles-33 -->
      <!-- text -->
      <section class="w3l-blog-single3">
      <div class="text-element-9">
      <div class="container">
      <div class="d-grid grid-text-9">
      <div class="right-text-9">
      <h4 class="text-head-text-9" align="center"><a href="#text">사이즈 소개</a></h4>
      <img src="assets/images/g3-7.jpg" width="800" height="650" align="center">
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
      <h4 class="text-head-text-9" align="center"><a href="#text">모델</a></h4>
      <img src="assets/images/g10-11.jpg" width="700" height="300" align="center">
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;빼로(포메라니안) 3kg/ M착용      이오(포메라니안) 2.5kg/ M 착용</p>
      <div class="social-share-blog mt-4">
      <ul class="column3 social m-0 p-0">
      <li>
      <h4 class="m-0 mr-md-4 mr-2">공유해보세요 :</h4>
      </li>
      <li><a href="https://www.facebook.com/" class="facebook"><span class="fa fa-facebook"></span></a></li>
      <!--li><a href="https://www.kakaocorp.com/service/KakaoTalk" class="twitter"><span class="fa fa-twitter"></span></a></li-->
      <li><a href="https://www.instagram.com/" class="instagram"><span class="fa fa-instagram"></span></a></li>
      </ul>
      </div>
      <nav class="post-navigation row mt-5 py-4">
      <div class="post-prev col-6 pr-sm-5">
      <span class="nav-title">
      <span class="fa fa-angle-double-left"></span> 이전 게시글 </span>
      <a href="#url" rel="prev" class="posts-view posts-view-left">
      <img src="assets/images/g13.jpg" class="img-fluid postimg radius-image d-none d-md-block">
      <label>원피스</label>
      </a>
      </div>
      <div class="post-next col-6 pl-sm-5 text-right">
      <span class="nav-title">
      다음 게시물 <span class="fa fa-angle-double-right"></span> </span>
      <a href="#url" rel="next" class="posts-view posts-view-right">
      <label>크리스마스</label>
      <img src="assets/images/g8.jpg" class="img-fluid postimg radius-image d-none d-md-block">
      </a>
      </div>
      </nav>
      </div>
      </div>
      </div>
      </div>
      </section>
      <!-- //text -->
      <!-- text-styles-30 -->
      <section class="w3l-blog-single4">
         <div class="text-styles-30_sur py-5" style=" text-align: left">
         <div class="container py-lg-3">
            <div class="text-styles-top-30">
               <h3 class="title-blog mb-4">리뷰</h3>
               <c:forEach items="${reviewCon}" var="reviewCon" varStatus="status">
               <div>
                  <div class="img-circle">
                     <img src="assets/images/yumin.jpg" class="mr-3" alt="...">
                  </div>
                  <div class="media-body">
                           <input type="hidden" name="member_number" value="member_number">
                           <h5 class="mt-0">${reviewCon.review_subject}</h5>
                           <span class="time">${reviewCon.review_message}</span>
                           <p>${reviewCon.review_email}</p>
                           <input type="hidden" name="review_number" value="review_number">
                           <input type="hidden" name="catgo_code" value="catgo_code">
                           <a href="#reply-form" class="reply">Reply</a>
                           <!-- status.index: ${status.index}  -->
                        </c:forEach>
                  
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- /text-styles-30 -->
      <!-- /text-styles-30 -->
      <section class="w3l-blog-single5">
         <div class="grid-main py-3">
         <div class="container">
            <div class="horizontal-align">
               <div class="grids-titles">
                  <h3 class="title-blog mb-4">관련 상품페이지</h3>
               </div>
               <div class="row">
                  <div class="col-lg-6 col-md-6 item mt-lg-0 mt-5">
                     <div class="card">
                        <div class="card-header p-0 position-relative">
                           <a href="blog-single.html">
                           <img class="card-img-bottom d-block" src="assets/images/g3.jpg" alt="Card image cap">
                           </a>
                        </div>
                        <div class="card-body blog-details">
                           <a href="blog-single.html" class="blog-desc">핫케이크 방석
                           </a>
                           <p>아늑하고 푹신한 핫케이크</p>
                           <div class="author align-items-center mt-3 mb-1">
                              <a href="#author">16000</a> - <span class="meta-value">#푹신함</span>
                           </div>
                           <ul class="blog-meta">
                              <li class="meta-item blog-students">
                                 <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                              </li>
                              <li class="meta-item blog-students">
                                 <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-6 col-md-6 item mt-lg-0 mt-5">
                     <div class="card">
                        <div class="card-header p-0 position-relative">
                           <a href="blog-single.html">
                           <img class="card-img-bottom d-block" src="assets/images/g4.jpg" alt="Card image cap">
                           </a>
                        </div>
                        <div class="card-body blog-details">
                           <a href="blog-single.html" class="blog-desc">애견 사료
                           </a>
                           <p> 영양듬뿍 애견 간식</p>
                           <div class="author align-items-center mt-3 mb-1">
                              <a href="#author">59000</a> - <span class="meta-value"> #건강#건식 </span>
                           </div>
                           <ul class="blog-meta">
                              <li class="meta-item blog-students">
                                 <span class="meta-value"> <span class="fa fa-comment"></span> 30 comments</span>
                              </li>
                              <li class="meta-item blog-students">
                                 <span class="meta-value"> <span class="fa fa-eye"></span> 30 Views</span>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- form 29 block -->
      <section class="w3l-blog-single6" id="reply-form">
         <div class="form-29 py-5">
            <div class="container pb-lg-3">
               <div class="form-main-cont-29">
                  <div class="content-29-form align-center">
                     <h3 class="title-blog mb-4">상품리뷰를 남겨주세요</h3>
                     <form id="reviewform" name="insertReview" action="productDes" method="post">
                        <div class="w3l-forms-29-form">
                           <div class="">
                              <input type="text" class="form-control" name="review_subject" placeholder="Subject*"  required>
                           </div>
                        </div>
                        <div class="mt-4">
                           <textarea class="contact-textarea form-control" placeholder="Your Message*" name="review_message" 
                              required></textarea>
                        </div>
                        <div class="">
                           <input type="email" class="form-control" name="review_email" placeholder="Email Address*"  required>
                        </div>
                        <div class="text-right mt-4">
                           <input type="submit" value="리뷰 올리기" class="btn btn-style btn-primary">
                        </div>
                        <input type="hidden" name="member_number" value="${reviewCon.get(0).member_number}">
                        <input type="hidden" name="review_number" value="6">
                        <input type="hidden" name="catgo_code" value="${reviewCon.get(0).catgo_code}">
                     </form>
                     <div id="inputData"></div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- footer-28 block -->
      <section class="w3l-footer">
         <footer class="footer-28">
            <div class="footer-bg-layer">
               <div class="container py-lg-3">
                  <div class="row footer-top-28">
                     <div class="col-lg-6 col-md-5 footer-list-28 mt-5">
                        <h6 class="footer-title-28">Contact information</h6>
                        <ul>
                           <li>
                              <p><strong>Address</strong> : #135 block, Barnard St. Brooklyn, London 10036, UK</p>
                           </li>
                           <li>
                              <p><strong>Phone</strong> : <a href="tel:+(12)234-11-24">+(12)234-11-24</a></p>
                           </li>
                           <li>
                              <p><strong>Email</strong> : <a href="mailto:example@mail.com">example@mail.com</a></p>
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
                              <h6 class="footer-title-28">Company</h6>
                              <ul>
                                 <li><a href="about.html">About Us</a></li>
                                 <li><a href="blog.html">Blog Posts</a></li>
                                 <li><a href="services.html">Services</a></li>
                                 <li><a href="#pricing">Pricing</a></li>
                              </ul>
                           </div>
                           <div class="col-sm-4 col-6 footer-list-28 mt-5">
                              <h6 class="footer-title-28">Quick Links</h6>
                              <ul>
                                 <li><a href="contact.html">Contact Us</a></li>
                                 <li><a href="#signup">Create account</a></li>
                                 <li><a href="#learn">Care Center</a></li>
                                 <li><a href="#feedback">Site Feedack</a></li>
                              </ul>
                           </div>
                           <div class="col-sm-4 footer-list-28 mt-5">
                              <h6 class="footer-title-28">Support</h6>
                              <ul>
                                 <li><a href="#URL">All Dogs</a></li>
                                 <li><a href="#URL">Care Advices</a></li>
                                 <li><a href="#URL">Care Support</a></li>
                                 <li><a href="#URL">Veterinary Help</a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="midd-footer-28 align-center py-lg-4 py-3 mt-5">
                  <div class="container">
                     <p class="copy-footer-28 text-center"> &copy; 2020 Pooch Care. All Rights Reserved.
                     </p>
                  </div>
               </div>
            </div>
         </footer>
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
      <!-- js for portfolio lightbox -->
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