<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>:: 관리자 :: With My Pet</title>
      <link href="../assets/css/admin/style2.css" rel="stylesheet">
      <style>
         .imgsrc {
         position: static;
         width: 401%;
         border-radius: 76px;
         margin-left: 38%;
         margin-top: 26%;
         bottom: 5%;
         max-width: 405%;
         box-shadow: 1px 1px 3px black;
         }
      </style>
   </head>
   <body>
      <!-- 기본 틀 -->
     
      <!--**********************************
         Nav header start
         ***********************************-->
      <div class="nav-header" style="background-color:#FFD687;">
         <div class="brand-logo" style="display:flex; margin:auto;">
            <a href="#" style="display:flex; margin:auto;">
            <span class="brand-title" style="display:flex; margin:auto; margin-bottom:10%;">
            <img style="display:flex; margin:auto; width:80%;"src="../assets/images/logos/logo-grey.png" alt=""><br/><br/>
            </span>
            </a>
         </div>
      </div>
      <!--**********************************
         Nav header end
         ***********************************-->
      <!--**********************************
         Header start
         ***********************************-->
      <div class="header" style="background-color:#FFD687; margin-bottom: -1%;">
         <div class="header-content clearfix">
            <div class="nav-control">
               <div class="hamburger">
                  <span class="toggle-icon"><i class="icon-menu"></i></span>
               </div>
            </div>
            <!-- 검색 -->
            <div class="header-left">
               <div class="input-group icons" style="width:200%;">
                  <input id="mainSearchKeyword" type="text" class="form-control" placeholder="검색어를 입력하세요." aria-label="Search Dashboard">
                  <div class="drop-down animated flipInX d-md-none">
                     <input type="text" class="form-control" placeholder="Search">
                  </div>
                  <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1">
                  <a onclick="mainSearchCheck()"><i class="mdi mdi-magnify"></i></a>
                  </span>
               </div>
            </div>
            <div class="header-right">
               <ul class="clearfix">
                  <!-- 새 문의글  -->
                  <li class="icons dropdown">
                     <a href="javascript:void(0)" data-toggle="dropdown">
                     <i class="mdi mdi-email-outline"></i>
                     <span class="badge badge-pill gradient-1">3</span>
                     </a>
                     <div class="drop-down animated fadeIn dropdown-menu">
                        <div class="dropdown-content-heading d-flex justify-content-between">
                           <span class="" style="font-family: 'Spoqa Han Sans Neo';">새 문의글</span>  
                           <a href="javascript:void()" class="d-inline-block">
                           <span style="font-family: 'Spoqa Han Sans Neo';"class="badge badge-pill gradient-1">3</span>
                           </a>
                        </div>
                        <div class="dropdown-content-body">
                           <ul>
                              <li class="notification-unread">
                                 <a href="javascript:void()">
                                    <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/1.jpg" alt="">
                                    <div class="notification-content">
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Saiful Islam</div>
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                    </div>
                                 </a>
                              </li>
                              <li class="notification-unread">
                                 <a href="javascript:void()">
                                    <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/2.jpg" alt="">
                                    <div class="notification-content">
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Adam Smith</div>
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Can you do me a favour?</div>
                                    </div>
                                 </a>
                              </li>
                              <li>
                                 <a href="javascript:void()">
                                    <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/3.jpg" alt="">
                                    <div class="notification-content">
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Barak Obama</div>
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                    </div>
                                 </a>
                              </li>
                              <li>
                                 <a href="javascript:void()">
                                    <img class="float-left mr-3 avatar-img" src="../assets/images/admin/avatar/4.jpg" alt="">
                                    <div class="notification-content">
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-heading">Hilari Clinton</div>
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-timestamp">08 Hours ago</div>
                                       <div style="font-family: 'Spoqa Han Sans Neo';"class="notification-text">Hello</div>
                                    </div>
                                 </a>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </li>
                  <!-- 확인 필요 사항 -->
                  <li class="icons dropdown">
                     <a href="javascript:void(0)" data-toggle="dropdown">
                     <i class="mdi mdi-bell-outline"></i>
                     <span class="badge badge-pill gradient-2">5</span>
                     </a>
                     <div class="drop-down animated fadeIn dropdown-menu dropdown-notfication">
                        <div class="dropdown-content-heading d-flex justify-content-between">
                           <span class="">확인사항</span>  
                           <a href="javascript:void()" class="d-inline-block">
                           <span class="badge badge-pill gradient-2">5</span>
                           </a>
                        </div>
                        <div class="dropdown-content-body">
                           <ul>
                              <li>
                                 <a href="javascript:void()">
                                    <span class="mr-3 avatar-icon bg-success-lighten-2"><i class="icon-present"></i></span>
                                    <div class="notification-content">
                                       <h6 class="notification-heading">산책 포인트 지급</h6>
                                       <span class="notification-text">Within next 5 days</span> 
                                    </div>
                                 </a>
                              </li>
                              <li>
                                 <a href="javascript:void()">
                                    <span class="mr-3 avatar-icon bg-danger-lighten-2"><i class="icon-present"></i></span>
                                    <div class="notification-content">
                                       <h6 class="notification-heading">배송 현황 변경</h6>
                                       <span class="notification-text">One hour ago</span> 
                                    </div>
                                 </a>
                              </li>
                           </ul>
                        </div>
                     </div>
                  </li>
                  <!-- 페이지 이동 네비 바 -->
                  <li class="icons dropdown d-none d-md-flex">
                     <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                     <span>관리페이지</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                     </a>
                     <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                        <div class="dropdown-content-body">
                           <ul>
                              <li><a href="../">메인화면</a></li>
                              <li><a href="../walk/list.do">산책</a></li>
                              <li><a href="../product">쇼핑</a></li>
                              <li><a href="../board/list.do">커뮤니티</a></li>
                           </ul>
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
      </div>
      <!--**********************************
         Header end ti-comment-alt
         ***********************************-->
      <!--**********************************
         Sidebar start
         ***********************************-->
      <div class="nk-sidebar" style="background-color:#FFD687;">
         <div class="nk-nav-scroll" style="background-color:#FFD687;">
            <ul class="metismenu" id="menu" style="background-color:#FFD687;">
               <li class="nav-label"></li>
               <li>
                  <a href="#" aria-expanded="false">
                  <i class="icon-menu menu-icon"></i><span class="nav-text"></span>
                  </a>
               </li>
               <li class="mega-menu mega-menu-sm">
                  <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                  <i class="icon-globe-alt user-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">회 원</span>
                  </a>
                  <ul aria-expanded="false">
                     <li><a href="memberList.do"style="font-family: 'Spoqa Han Sans Neo';">회원 목록</a></li>
                     <li><a href="memberMessage.do"style="font-family: 'Spoqa Han Sans Neo';">회원에게 메세지 전송</a></li>
                  </ul>
               </li>
               <li class="mega-menu mega-menu-sm">
                  <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                  <i class="icon-globe-alt user-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">산 책</span>
                  </a>
                  <ul aria-expanded="false">
                     <li><a href="nextWalk.do"style="font-family: 'Spoqa Han Sans Neo';">산책 예정 현황</a></li>
                     <li><a href="previousWalk.do"style="font-family: 'Spoqa Han Sans Neo';">지난 산책 현황</a></li>
                  </ul>
               </li>
               <li class="mega-menu mega-menu-sm" style="z-index:999;">
                  <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                  <i class="icon-graph menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">상 품</span>
                  </a>
                  <ul aria-expanded="false">
                     <li><a href="registerProduct.do"style="font-family: 'Spoqa Han Sans Neo';">상품 등록</a></li>
                     <li><a href="productQ.do"style="font-family: 'Spoqa Han Sans Neo';">문의 답변</a></li>
                     <li><a href="productA.do"style="font-family: 'Spoqa Han Sans Neo';">지난 문의 내용</a></li>
                     <li><a href="orderStatus.do"style="font-family: 'Spoqa Han Sans Neo';">주문 현황</a></li>
                  </ul>
               </li>
               <li class="mega-menu mega-menu-sm">
                  <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                  <i class="icon-graph menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">게시글</span>
                  </a>
                  <ul aria-expanded="false">
                     <li><a href="recentBoard.do"style="font-family: 'Spoqa Han Sans Neo';">최근 게시글</a></li>
                     <li><a href="reportedPost.do"style="font-family: 'Spoqa Han Sans Neo';">신고글 목록</a></li>
                  </ul>
               </li>
               <li>
                  <a href="walkStatistic.do" aria-expanded="false">
                  <i class="icon-badge menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">산책 통계</span>
                  </a>
               </li>
               <li>
                  <a href="salesStatistic.do" aria-expanded="false">
                  <i class="icon-badge menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">매출 통계</span>
                  </a>
               </li>
               <li>
                  <a href="postNotice" aria-expanded="false">
                  <i class="icon-badge menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">공지사항 작성</span>
                  </a>
               </li>
            </ul>
         </div>
         <br/>
      </div>
      <!-- //about register parts -->
      <section>
         </br></br></br></br></br>
         <div class="container py-lg-5 card" style="margin-left: 20%; margin-bottom: 5%;">
            <h3 class="hny-title " style="margin-left: 15%;"><b>상품등록 화면</b></h3 >
            </br>   
            <div class="content-info-in row">
               <div class="content-gd col-lg-5 pl-lg-4">
                  <div class="pricing-sec-7">
                     <div class="pricing-gd-left pric-7-1">
                        <div id="card-body">
                           <!--  파일첨부 -->
                           <form name="frm" enctype="multipart/form-data" action="../../category?catgo_code=8"  method="post"  autocomplete="off" align="center">
                              <div class="w3l-pricing-7" align="center">
                                 <div class="title-content text-left mb-2">
                                    <div class="inputArea" >
                                       <label for="product_name" ><b>상품명</b></label>
                                       <input type="text" id="product_name" name="product_name" required class="form-control bg-transparent" align="center"/>
                                    </div>
                                    <div class="inputArea">
                                       <label for="product_price"><b>상품가격</b></label>
                                       <input type="text" id="product_price" name="product_price"class="form-control bg-transparent" placeholder="숫자만 입력해주세요" required/>
                                    </div>
                                    <div class="inputArea">
                                       <label for="product_tag"><b>상품태그</b></label>
                                       <textarea rows="1" cols="50" id="product_tag" name="product_tag" class="form-control bg-transparent" required></textarea>
                                    </div>
                                    <div class="inputArea ">
                                       <label for="product_content"><b>상품소개</b></label>
                                       <textarea rows="5" cols="50" id="product_content" name="product_content" class="form-control bg-transparent" required></textarea>
                                    </div>
                                    <div class="inputArea ">
                                       <label for="product_image" >
                                          <p><b>상품 이미지</b></p>
                                       </label>
                                       <input type="file" name="uploadfile" id="uploadfile" class="form-control bg-transparent" onchange="previewImage(this)" required/>
                                       <div id="preview" class="preview" ></div>
                                       <script type="text/javascript">
                                          function previewImage(f){
                                          	var file = f.files;
                                          	// 확장자 체크
                                          	if(!/\.(gif|jpg|jpeg|png)$/i.test(file[0].name)){
                                          		alert('gif, jpg, png 파일만 선택해 주세요.\n\n현재 파일 : ' + file[0].name);
                                          		// 선택한 파일 초기화
                                          		f.outerHTML = f.outerHTML;
                                          		document.getElementById('preview').innerHTML = '';
                                          	}
                                          	else {
                                          		// FileReader 객체 사용
                                          		var reader = new FileReader();
                                          		// 파일 읽기가 완료되었을때 실행
                                          		reader.onload = function(rst){
                                          			document.getElementById('preview').innerHTML = '<img class="imgsrc" src="' + rst.target.result + '">';
                                          		}
                                          		// 파일을 읽는다
                                          		reader.readAsDataURL(file[0]);
                                          	}
                                          }
                                       </script>
                                    </div>
                                 </div>
                              </div>
                              <div class="text-left2" style="margin-top: 25%;">
                                 <input type="submit" value="업로드" onclick="Confirm();" style="margin-top: 3%;" class="popup btn btn-style btn-primary">
                              </div>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- //about register parts -->
      <!-- footer-28 block -->
      <section class="w3l-footer" style="background-color:black; display:absolute;z-index:100;">
         <footer class="footer-28">
            <div class="footer-bg-layer">
               <div class="container py-lg-3">
                  <div class="row footer-top-28">
                     <div class="col-lg-6 col-md-5 footer-list-28 mt-5">
                        <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Contact information</h6>
                        <ul>
                           <li>
                              <p style="font-family: 'Spoqa Han Sans Neo';"><strong>Address</strong> : Seoul Mapo Baekbumro, South Korea</p>
                              <p style="font-family: 'Spoqa Han Sans Neo';"><strong>Contact</strong> : <a href="tel:+(12)234-11-24">Click Here</a></p>
                           </li>
                        </ul>
                     </div>
                     <div class="col-lg-6 col-md-7">
                        <div class="row">
                           <div class="col-sm-4 col-6 footer-list-28 mt-5">
                              <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Walk Service</h6>
                              <ul style="font-family: 'Spoqa Han Sans Neo';">
                                 <li><a href="about.html">Cha Ji Hyun</a></li>
                                 <li><a href="blog.html">Lim Yeon Ji</a></li>
                              </ul>
                           </div>
                           <div class="col-sm-4 col-6 footer-list-28 mt-5">
                              <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Shopping Service</h6>
                              <ul style="font-family: 'Spoqa Han Sans Neo';">
                                 <li><a href="contact.html">Lee Ok Seok</a></li>
                                 <li><a href="#signup">Sung Jin Hee</a></li>
                              </ul>
                           </div>
                           <div class="col-sm-4 footer-list-28 mt-5">
                              <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Member Service</h6>
                              <ul style="font-family: 'Spoqa Han Sans Neo';">
                                 <li><a href="#URL">Choi Woo Jae</a></li>
                                 <li><a href="#URL">Lee Su Jin</a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </footer>
      </section>
      <!--**********************************
         Scripts
         ***********************************-->
      <script src="../assets/plugins/common/common.min.js"></script>
      <script src="../assets/js/admin/custom.min.js"></script>
      <script src="../assets/js/admin/settings.js"></script>
      <script src="../assets/js/admin/gleek.js"></script>
      <script src="../assets/js/admin/styleSwitcher.js"></script>
   </body>
</html>