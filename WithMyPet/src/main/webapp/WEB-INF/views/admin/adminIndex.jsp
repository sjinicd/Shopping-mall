<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Date, java.text.SimpleDateFormat" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<%
	Date nowDay = new Date();
	SimpleDateFormat dateForm = new SimpleDateFormat("yyyy�� MM�� dd��, a hh:mm�� ����");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>:: ������ :: With My Pet</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/logos/logo-yellow.png">
    <link rel="stylesheet" href="../assets/plugins/chartist/css/chartist.min.css">
    <link rel="stylesheet" href="../assets/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
    <link href="../assets/css/admin/style.css" rel="stylesheet">
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style>
	canvas{
		-moz-user-select: none;
		-webkit-user-select: none;
		-ms-user-select: none;
	}
	</style>
</head>

<body>
    <div id="preloader">
        <div class="loader">
            <svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3" stroke-miterlimit="10" />
            </svg>
        </div>
    </div>
    
    <div id="main-wrapper">
        <div class="nav-header" style="background-color:#FFD687;">
            <div class="brand-logo" style="display:flex; margin:auto;">
                <a href="#" style="display:flex; margin:auto;">
                    <span class="brand-title" style="display:flex; margin:auto; margin-bottom:10%;">
                        <img style="display:flex; margin:auto; width:80%;"src="../assets/images/logos/logo-grey.png" alt=""><br/><br/>
                    </span>
                </a>
            </div>
        </div>
        <div class="header" style="background-color:#FFD687; margin-bottom: -1%;">    
            <div class="header-content clearfix">
                
                <div class="nav-control">
                    <div class="hamburger">
                        <span class="toggle-icon"><i class="icon-menu"></i></span>
                    </div>
                </div>
                <!-- �˻� -->
                <div class="header-left">
                    <div class="input-group icons" style="width:200%;">
                        <input id="mainSearchKeyword" type="text" class="form-control" placeholder="�˻�� �Է��ϼ���." aria-label="Search Dashboard">
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
                    	<!-- �� ���Ǳ�  -->
                        <li class="icons dropdown">
                        	<a href="../msg/chat.do">
                                <i class="mdi mdi-email-outline"></i>
                                <span class="badge badge-pill gradient-1">3</span>
                            </a>
                        </li>
                        
                        <!-- ������ �̵� �׺� �� -->
                        <li class="icons dropdown d-none d-md-flex">
                            <a href="javascript:void(0)" class="log-user"  data-toggle="dropdown">
                                <span>����������</span>  <i class="fa fa-angle-down f-s-14" aria-hidden="true"></i>
                            </a>
                            <div class="drop-down dropdown-language animated fadeIn  dropdown-menu">
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li><a href="../">����ȭ��</a></li>
                                        <li><a href="../walk/list.do">��å</a></li>
                                        <li><a href="../product">����</a></li>
                                        <li><a href="../board/list.do">Ŀ�´�Ƽ</a></li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
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
                            <i class="icon-globe-alt user-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">ȸ ��</span>
                        </a>
                        <ul aria-expanded="false">
                        	<li><a href="memberList.do"style="font-family: 'Spoqa Han Sans Neo';">ȸ�� ���</a></li>
                        </ul>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm">
                    	<a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-globe-alt user-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">�� å</span>
                        </a>
                        <ul aria-expanded="false">
                        	<li><a href="nextWalk.do"style="font-family: 'Spoqa Han Sans Neo';">��å ���� ��Ȳ</a></li>
                        	<li><a href="previousWalk.do"style="font-family: 'Spoqa Han Sans Neo';">���� ��å ��Ȳ</a></li>
                        </ul>
                    </li>
                    
                    <li class="mega-menu mega-menu-sm" style="z-index:999;">
                        <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                            <i class="icon-graph menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">�� ǰ</span>
                        </a>
                        <ul aria-expanded="false">
                            <li><a href="registerProduct.do"style="font-family: 'Spoqa Han Sans Neo';">��ǰ ���</a></li>
                            <li><a href="productQ.do"style="font-family: 'Spoqa Han Sans Neo';">���� �亯</a></li>
                            <li><a href="productA.do"style="font-family: 'Spoqa Han Sans Neo';">���� ���� ����</a></li>
                            <li><a href="orderStatus.do"style="font-family: 'Spoqa Han Sans Neo';">�ֹ� ��Ȳ</a></li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="walkStatistic.do" aria-expanded="false">
                            <i class="icon-badge menu-icon"></i><span class="nav-text"style="font-family: 'Spoqa Han Sans Neo';">��å ���</span>
                        </a>
                    </li>
                    
                </ul>
            </div>
        </div>
        <!-- ���� -->
        <div class="content-body" style="background-color:white;">
            <div class="container-fluid mt-3">
            
                <h4 style="text-align:center; margin:auto;font-family: 'Spoqa Han Sans Neo';">���� ��Ȳ</h4>
                <p style="text-align:center; margin:auto;font-family: 'Spoqa Han Sans Neo';"><%=dateForm.format(nowDay)%></p><br/>
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-1">
                            <div class="card-body">
                                <h3 class="card-title text-white"style="font-family: 'Spoqa Han Sans Neo';">�ű� ����</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white"style="font-family: 'Spoqa Han Sans Neo';">${indexData.newMember} ��</h2>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-user"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-3">
                            <div class="card-body">
                                <h3 class="card-title text-white"style="font-family: 'Spoqa Han Sans Neo';">�� ���� ȸ��</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white"style="font-family: 'Spoqa Han Sans Neo';">${indexData.totalMember} ��</h2>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-users"></i></span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-2">
                            <div class="card-body">
                                <h3 class="card-title text-white"style="font-family: 'Spoqa Han Sans Neo';">���� ����</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white"style="font-family: 'Spoqa Han Sans Neo';">${indexData.todayIncome} ��</h2>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-shopping-cart"></i></span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-sm-6">
                        <div class="card gradient-4">
                            <div class="card-body">
                                <h3 class="card-title text-white"style="font-family: 'Spoqa Han Sans Neo';">��Ī ����</h3>
                                <div class="d-inline-block">
                                    <h2 class="text-white"style="font-family: 'Spoqa Han Sans Neo';">${indexData.matchPer}</h2>
                                </div>
                                <span class="float-right display-5 opacity-5"><i class="fa fa-heart"></i></span>
                            </div>
                        </div>
                    </div>
                </div><br/><hr style="width:50%; margin:auto;"><br/><br/><br/>
                
                <div class="row">
                        <div class="col-lg-6 col-md-6">
                        	<!-- ��å&�Ǹ� ��� -->
	                        <div class="card">
	                            <div class="card-body">
	                                <h4 class="card-title"style="font-family: 'Spoqa Han Sans Neo';">��å & �Ǹ� ���</h4>
	                                <canvas id="lineChart" width="500" height="250"></canvas>
	                            </div>
	                        </div>
                        </div>    
<script>
	var thisWeek = new Array();
	var weekWalk = new Array();
	var weekSale = new Array();
	
	<c:forEach items="${indexData.allList.week}" var="item">
		thisWeek.push("${item}");
	</c:forEach>
	<c:forEach items="${indexData.allList.walk}" var="item">
		weekWalk.push("${item}");
	</c:forEach>
	<c:forEach items="${indexData.allList.sale}" var="item">
		weekSale.push("${item}");
	</c:forEach>
	
	/* ���� ��Ʈ ���� */
	var lineChart = document.getElementById('lineChart').getContext('2d');
	var barChart = new Chart(lineChart,{
		type:'line',
		data: {
			labels : thisWeek,
			fill: false,
			borderColor: "rgb(255 180 70)",
			datasets:[{
				label: '��å Ƚ��',
				data: weekWalk,
			}, {
				label: '�Ǹ� Ƚ��',
				fill: false,
				borderColor: "rgb(110 197 206)",
				data: weekSale,
			}]
		},
		options: {
			responsive: true,
			title: {
				display: true,
				text: '�ְ� ��å �Ǹ� ���'
			},
			tooltips: {
				mode: 'index',
				intersect: false,
			},
			hover: {
				mode: 'nearest',
				intersect: true
			},
			scales: {
				xAxes: [{
					display: true,
					scaleLabel: {
						display: true,
						labelString: '��¥'
					}
				}],
				yAxes: [{
					display: true,
					scaleLabel: {
						display: true,
						labelString: 'Ƚ��'
					}
				}]
			}
		}
	});
</script>
                        <!-- �Ǹ��� ���� -->
                        <div class="col-lg-6 col-md-6">
	                        <div class="card">
	                            <div class="card-body">
	                                <h4 class="card-title"style="font-family: 'Spoqa Han Sans Neo';">�α� �Ǹ� ����Ʈ</h4>
	                                <canvas id="doughnutChart" width="500" height="250"></canvas>
	                            </div>
	                        </div>
		                </div>
		            </div><br/><hr style="width:50%; margin:auto;"><br/><br/><br/>
		            <c:forEach items="${indexData.bestSeller}" var="item" varStatus="status">
		            	<input type="hidden" id="names${status.index}" value="${item.product_name}">
		            	<input type="hidden" id="sales${status.index}" value="${item.count}">
		            </c:forEach>
<script>
/*���� ��Ʈ*/
new Chart(document.getElementById("doughnutChart"), {
    type: 'doughnut',
    data: {
      labels: [$('#names0').val(), $('#names1').val(), $('#names2').val(), $('#names3').val(), $('#names4').val()],
      datasets: [{
          label: "Population (millions)",
          backgroundColor: ["#FFB446", "#FEE4B1","#AFD4DD","#6EC5CE","#999999"],
          data: [$('#sales0').val(), $('#sales1').val(), $('#sales2').val(), $('#sales3').val(), $('#sales4').val()]
        }]
    },
    options: {
      title: {
        display: true,
        text: '�ְ� �Ǹŷ� ���� ��'
      }
    }
});
</script> 
				<!-- �ֱ� ��ǰ�Ǹ� ����  -->
				<h4 style="text-align:center;margin:auto;font-family: 'Spoqa Han Sans Neo';">�ֱ� �Ǹ� ����</h4><br/>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="active-member">
                                    <div class="table-responsive">
                                        <table class="table table-xs mb-0">
                                            <thead>
                                                <tr style="font-family: 'Spoqa Han Sans Neo';">
                                                    <th>������</th>
                                                    <th>�� ǰ</th>
                                                    <th>�ּ���</th>
                                                    <th>�� ��</th>
                                                    <th>�������</th>
                                                    <th>�ֱ�Ȱ��</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                            	<c:forEach items="${indexData.payData}" var="pay" varStatus="status">
                                                <tr style="font-family: 'Spoqa Han Sans Neo';">
                                                    <td><img src="${indexData.payPicList[status.index]}" class=" rounded-circle mr-3" alt="">${pay.member_name}</td>
                                                    <td>${pay.product_name}</td>
                                                    <td>
                                                        <span>${pay.member_address}</span>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            
                                                            	<c:choose>
                                                            		<c:when test="${!empty pay.pcount}">
                                                            			<span>�������</span>
                                                            		</c:when>
                                                            		<c:otherwise>
                                                            			<span><i class="fa fa-circle-o text-success  mr-2"></i>�����Ϸ�</span>
                                                            		</c:otherwise>
                                                                </c:choose>
                                                                
                                                        </div>
                                                    </td>
                                                    
                                                    <c:choose>
                                                		<c:when test="${pay.pay_method eq null}">
                                                			<td></td>
                                                		</c:when>
                                                		<c:otherwise>
                                                			<td>${pay.pay_method}</td>
                                                		</c:otherwise>
                                                    </c:choose>
                                                    
                                                    <td>
                                                        <span>Last Login</span>
                                                        <span class="m-0 pl-3">10 sec ago</span>
                                                    </td>
                                                </tr>
                                                </c:forEach>
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>                        
                    </div>
               </div><br/><hr style="width:50%; margin:auto;"><br/><br/><br/>
                
                

                <h4 style="text-align:center; margin:auto; font-family: 'Spoqa Han Sans Neo';">�ű� ȸ��</h4><br/>
                <div class="row">
                
                <c:forEach items="${indexData.newMemList}" var="member">
                    <div class="col-lg-3 col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="text-center">
                                    <img src="<c:url value="/img/${indexData.picList[status.index]}"/>" class="rounded-circle" alt="">
                                    <h5 class="mt-3 mb-1"style="font-family: 'Spoqa Han Sans Neo';">${member.member_name}</h5>
                                    <p class="m-0"style="font-family: 'Spoqa Han Sans Neo';">${member.member_address}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                
                </div><br/><br/><br/>
                
            </div>
        </div>
    </div>
    
    
<!-- footer-28 block -->
<section class="w3l-footer" style="background-color:black; display:absolute;">
  <footer class="footer-28">
    <div class="footer-bg-layer">
      <div class="container py-lg-3">
        <div class="row footer-top-28">
          <div class="col-lg-6 col-md-5 footer-list-28 mt-5">
            <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Contact information</h6>
            <ul style="padding:0;">
              <li>
                <p style="font-family: 'Spoqa Han Sans Neo';color:#999999;"><strong>Address</strong> : Seoul Mapo Baekbumro, South Korea</p>
                <p style="font-family: 'Spoqa Han Sans Neo';color:#999999;"><strong>Contact</strong> : <a style="color:#999999; text-decoration:none;" href="tel:+(12)234-11-24">Click Here</a></p>
              </li>
            </ul>
          </div>
          <div class="col-lg-6 col-md-7">
            <div class="row">
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Walk Service</h6>
                <ul style="font-family: 'Spoqa Han Sans Neo'; padding:0;">
                  <li><a style="color:#999999; text-decoration:none;"href="about.html">Cha Ji Hyun</a></li>
                  <li><a style="color:#999999; text-decoration:none;"href="blog.html">Lim Yeon Ji</a></li>
                </ul>
              </div>
              <div class="col-sm-4 col-6 footer-list-28 mt-5">
                <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Shopping Service</h6>
                <ul style="font-family: 'Spoqa Han Sans Neo'; padding:0;">
                  <li><a style="color:#999999; text-decoration:none;"href="contact.html">Lee Ok Seok</a></li>
                  <li><a style="color:#999999; text-decoration:none;"href="#signup">Sung Jin Hee</a></li>
                </ul>
              </div>
              <div class="col-sm-4 footer-list-28 mt-5">
                <h6 class="footer-title-28" style="color:white;font-family: 'Spoqa Han Sans Neo';">Member Service</h6>
                <ul style="font-family: 'Spoqa Han Sans Neo'; padding:0;">
                  <li><a style="color:#999999; text-decoration:none;"href="#URL">Choi Woo Jae</a></li>
                  <li><a style="color:#999999; text-decoration:none;"href="#URL">Lee Su Jin</a></li>
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
        Main wrapper end
    ***********************************-->
<script>
/* admin �˻� ��ȿ�� �˻� */
function mainSearchCheck(){
	var check = document.getElementById('mainSearchKeyword');
	if (check.value == '') alert("�˻�� �Է����ּ���.");
	mainSearchKeyword.focus();
}
</script>
    <!--**********************************
        Scripts
    
    ***********************************-->
    <script src="../assets/plugins/common/common.min.js"></script>
    <script src="../assets/js/admin/custom.min.js"></script>
    <script src="../assets/js/admin/settings.js"></script>
    <script src="../assets/js/admin/gleek.js"></script>
    <script src="../assets/js/admin/styleSwitcher.js"></script>
    <!-- Circle progress -->
    <script src="../assets/plugins/circle-progress/circle-progress.min.js"></script>
    <!-- Datamap -->
    <script src="../assets/plugins/d3v3/index.js"></script>
    <script src="../assets/plugins/topojson/topojson.min.js"></script>
    <script src="../assets/plugins/datamaps/datamaps.world.min.js"></script>
    <!-- Morrisjs -->
    <script src="../assets/plugins/raphael/raphael.min.js"></script>
    <script src="../assets/plugins/morris/morris.min.js"></script>
    <script src="../assets/js/admin/dashboard/dashboard-1.js"></script>

</body>

</html>