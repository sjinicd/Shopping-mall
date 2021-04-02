<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <link rel="stylesheet" href="../assets/css/style-liberty.css">

    
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote css/js-->
<link href="//fonts.googleapis.com/css2?family=Jost:wght@300;400;600&display=swap" rel="stylesheet">
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/write.css"> 
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<!-- include summernote-ko-KR -->
<script src="../assets/js/summernote-ko-KR.js"></script>
<title>글쓰기</title>
<Style>
.go{margin-top: 100px;}.navbar{margin:20px;}

</Style>


<script>
$(document).ready(function() {
	var toolbar = [
	    // 글꼴 설정
	    ['fontname', ['fontname']],
	    // 글자 크기 설정
	    ['fontsize', ['fontsize']],
	    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
	    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	    // 글자색
	    ['color', ['forecolor','color']],
	    // 표만들기
	    ['table', ['table']],
	    // 글머리 기호, 번호매기기, 문단정렬
	    ['para', ['ul', 'ol', 'paragraph']],
	    // 줄간격
	    ['height', ['height']],
	    // 그림첨부, 링크만들기, 동영상첨부
	    ['insert',['picture','link','video']],
	    // 코드보기, 확대해서보기, 도움말
	    ['view', ['codeview','fullscreen', 'help']]
	  ];
	
	var setting = {
            height : 300,
            minHeight : null,
            maxHeight : null,
            maxWidth : 100,
            focus : true,
            lang : 'ko-KR',
            toolbar : toolbar,
            //콜백 함수
            callbacks : { 
            	onImageUpload : function(files, editor, welEditable) {
            // 파일 업로드(다중업로드를 위해 반복문 사용)
            for (var i = files.length - 1; i >= 0; i--) {
            uploadSummernoteImageFile(files[i],
            this);
            		}
            	}
            }
         };
        $('#summernote').summernote(setting);
        });
        
         function uploadSummernoteImageFile(file, el) {
			data = new FormData();
			data.append("file", file);
			$.ajax({
				data : data,
				type : "POST",
				url : "uploadSummernoteImageFile",
				contentType : false,
				enctype : 'multipart/form-data',
				processData : false,
				success : function(data) {
					alert('data load'+data.url);
					$(el).summernote('editor.insertImage', data.url);
				}
			});
		} 
function goWrite(f) {
        	var title = f.post_subject.value;
        	var writer = f.post_writer.value;
        	var content = f.content.value;
        	var boardname = f.board_idx.value;
        	
        	if (title.trim() == ''){
        		alert("제목을 입력해주세요");
        		return false;
        	}
        	if (writer.trim() == ''){
        		alert("작성자를 입력해주세요");
        		return false;
        	}
        	if (content.trim() == ''){
        		alert("내용을 입력해주세요");
        		return false;
        	}	
        	if (boardname == ''){
        		alert("게시판을 선택해주세요");
        		return false;
        	}	
        	f.action='rewrite.do';
        	f.submit();
        	return true;
        }

</script>	

</head>
<body>

<!--header-->
<header id="site-header" class="fixed-top">
  <div class="container" style="margin-top: -0.7%;">
      <nav class="navbar navbar-expand-lg stroke">
          <a href="../../"><img src="../assets/images/logos/logo-yellow.png" class="img-curve img-fluid" alt=""></a>
         
          <!-- if logo is image enable this   
      <a class="navbar-brand" href="#index.html">
          <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
      </a> -->
          <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
              <span class="navbar-toggler-icon fa icon-close fa-times"></span>
              
          </button>

          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
              <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                      <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                  </li>
                  
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	산 책 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                      	<a class="dropdown-item" href="walk/list.do?cp=1">산책모집 </a>
                          <a class="dropdown-item" href="walk/board.do">산책후기 </a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	쇼 핑 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                      	<a class="dropdown-item" href="product?catgo_code=9">쇼핑하기</a>
                          <a class="dropdown-item" href="cart">장바구니</a>
                          <a class="dropdown-item" href="order">결제</a>
                      </div>
                  </li>
                  <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-family: 'Spoqa Han Sans Neo';">
                         	 커뮤니티 <span class="fa fa-angle-down"></span>
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown1" style="font-family: 'Spoqa Han Sans Neo';">
                          <a class="dropdown-item" href="board/list.do?board_idx=1&amp;cp=1">공지사항</a>
                          <a class="dropdown-item" href="board/list.do?board_idx=2&amp;cp=1">일상이야기</a>
                          <a class="dropdown-item" href="board/list.do?board_idx=3&amp;cp=1">산책후기</a>
                          <a class="dropdown-item" href="board/list.do?board_idx=4&amp;cp=1">쇼핑후기</a>
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
		                      <a class="nav-link" href="/member/login.do" style="font-family: 'Spoqa Han Sans Neo';">로그아웃 </a>
		                  </li>
		                  <li class="nav-item">
		                      <a class="nav-link" href="/member/mypage.do" style="font-family: 'Spoqa Han Sans Neo';">마이페이지 </a>
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

<h2 style="text-align: center;">글 작성</h2><br><br><br>

<div style="width: 60%; margin: auto;">
	<form name="f" method="post" action="modify.do" class="go" enctype="multipart/form-data" onsubmit='return '>	
	
	
	<!-- 1. 최초글작성 / 2. 수정글 작성  -->
	<c:choose>
	<c:when test="${empty board.post_subject}">
	<select id="category" name="board_idx" class="form-control" required="" style="font-size:13px;">
	       	         
	         <option value="">게시판을 선택해 주세요.</option>
	         
	            <c:if test="${login.member_name eq '관리자'}"><option value="1" >
					공지사항</option></c:if>
	            <option value="2" >
					일상이야기 </option>
				<option value="3" >
					산책후기 </option>
			 	<option value="4" >
					쇼핑후기 </option>
				<option value="5" >
					문의사항 </option>
		
    </select>
	</c:when>
		
	<c:otherwise>
	<select id="category" name="board_idx" class="form-control" required="">
	         <c:choose>
	      
	         <c:when test="${board.board_idx eq '1'}">
	         <option value="1" >
					공지사항</option></c:when>
			<c:when test="${board.board_idx eq '2'}">
	         <option value="2" >
					일상이야기</option></c:when>
			<c:when test="${board.board_idx eq '3'}">
	         <option value="3" >
					산책후기</option></c:when>
			<c:when test="${board.board_idx eq '4'}">
	         <option value="4" >
					쇼핑후기</option></c:when>
			<c:otherwise>
	         <option value="5" >
					문의사항</option></c:otherwise>	
			</c:choose>
	</select>
	</c:otherwise>
	</c:choose>
			
			
		<br>
                
        <c:choose>
		 <c:when test="${login.member_name eq '관리자'}">
		<input type="text" name="post_subject"  class="	form-control" value="문의 답변입니다"/><br>
		</c:when>
		
		<c:otherwise>
		<input type="text" name="post_subject"  class="form-control" value="제목"/><br>
		</c:otherwise>
		</c:choose>
		
		<br> 
		<textarea id="summernote" name="content" >${board.content}</textarea>
		${board.board_name}
<input type="hidden" name="member_number" class="form-control" value="${login.member_number}"/><br>
		
		
		<input id="subBtn" type="button" value="rewrite" style="float: right;" onclick="goWrite(this.form)"/>
		<input type="hidden" name="post_order" class="form-control" value="${board.post_order}"/><br>
		<input type="hidden" name="post_idx" class="form-control" value="${board.post_idx}"/><br>
		<input type="hidden" name="post_writer" class="form-control" value="${login.member_name}" readonly/><br>
	
	</form>
</div>


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
          <p class="copy-footer-28 text-center"> © 2021 With My Pet. All Rights Reserved.
           </p>
        </div>
      </div>
    </div>
  </footer>
  </section>
</body>
</html>