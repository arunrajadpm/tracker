
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>My Tasks</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png"
	href="assets/images/icon/favicon.ico">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">
<link rel="stylesheet" href="assets/css/metisMenu.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/slicknav.min.css">
<!-- amchart css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- others css -->
<link rel="stylesheet" href="assets/css/typography.css">
<link rel="stylesheet" href="assets/css/default-css.css">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<!-- modernizr css -->
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
<script>
function myFunction() {
 /*  setInterval(function(){ alert("Hello"); }, 3000); */
}
</script>
</head>

<body>
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/tracker" user="root" password="" />

	<sql:query dataSource="${db}" var="rs">  
SELECT name from user;  
</sql:query>

	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- preloader area start -->
	<div id="preloader">
		<div class="loader"></div>
	</div>
	<!-- preloader area end -->
	<!-- page container area start -->
	<div class="page-container">
		<!-- sidebar menu area start -->
		<p id="demo"></p>
		<div class="sidebar-menu">
			<div class="sidebar-header">
				<div class="logo">
					<a href="index.html"><img src="assets/images/icon/logo.png"
						alt="logo"></a>
				</div>
			</div>
			<div class="main-menu">
				<div class="menu-inner">
					<nav>
						<ul class="metismenu" id="menu">
							<li>
							<li><a href="dashboard.jsp">Dashboard</a></li>

							</li>
							<li class="active"><a href="javascript:void(0)"
								aria-expanded="true"><i class="ti-layout-sidebar-left"></i><span>Tasks

								</span></a>
								<ul class="collapse">
									<li class="active"><a href="gettask">My Tasks</a></li>
									<li><a href="index3-horizontalmenu.html">Horizontal
											Sidebar</a></li>
								</ul></li>
							<li><a href="javascript:void(0)" aria-expanded="true"><i
									class="ti-pie-chart"></i><span>Charts</span></a>
								<ul class="collapse">
									<li><a href="barchart.html">bar chart</a></li>
									<li><a href="linechart.html">line Chart</a></li>
									<li><a href="piechart.html">pie chart</a></li>
								</ul></li>
							<li><a href="javascript:void(0)" aria-expanded="true"><i
									class="ti-palette"></i><span>UI Features</span></a>
								<ul class="collapse">
									<li><a href="accordion.html">Accordion</a></li>
									<li><a href="alert.html">Alert</a></li>
									<li><a href="badge.html">Badge</a></li>
									<li><a href="button.html">Button</a></li>
									<li><a href="button-group.html">Button Group</a></li>
									<li><a href="cards.html">Cards</a></li>
									<li><a href="dropdown.html">Dropdown</a></li>
									<li><a href="list-group.html">List Group</a></li>
									<li><a href="media-object.html">Media Object</a></li>
									<li><a href="modal.html">Modal</a></li>
									<li><a href="pagination.html">Pagination</a></li>
									<li><a href="popovers.html">Popover</a></li>
									<li><a href="progressbar.html">Progressbar</a></li>
									<li><a href="tab.html">Tab</a></li>
									<li><a href="typography.html">Typography</a></li>
									<li><a href="form.html">Form</a></li>
									<li><a href="grid.html">grid system</a></li>
								</ul></li>
							<li><a href="javascript:void(0)" aria-expanded="true"><i
									class="ti-slice"></i><span>icons</span></a>
								<ul class="collapse">
									<li><a href="fontawesome.html">fontawesome icons</a></li>
									<li><a href="themify.html">themify icons</a></li>
								</ul></li>
							<li><a href="javascript:void(0)" aria-expanded="true"><i
									class="fa fa-table"></i> <span>Tables</span></a>
								<ul class="collapse">
									<li><a href="table-basic.html">basic table</a></li>
									<li><a href="table-layout.html">table layout</a></li>
									<li><a href="datatable.html">datatable</a></li>
								</ul></li>
							<li><a href="maps.html"><i class="ti-map-alt"></i> <span>maps</span></a></li>
							<li><a href="invoice.html"><i class="ti-receipt"></i> <span>Invoice
										Summary</span></a></li>
							<li><a href="javascript:void(0)" aria-expanded="true"><i
									class="ti-layers-alt"></i> <span>Pages</span></a>
								<ul class="collapse">
									<li><a href="login.html">Login</a></li>
									<li><a href="login2.html">Login 2</a></li>
									<li><a href="login3.html">Login 3</a></li>
									<li><a href="register.html">Register</a></li>
									<li><a href="register2.html">Register 2</a></li>
									<li><a href="register3.html">Register 3</a></li>
									<li><a href="register4.html">Register 4</a></li>
									<li><a href="screenlock.html">Lock Screen</a></li>
									<li><a href="screenlock2.html">Lock Screen 2</a></li>
									<li><a href="reset-pass.html">reset password</a></li>
									<li><a href="pricing.html">Pricing</a></li>
								</ul></li>
							<li><a href="javascript:void(0)" aria-expanded="true"><i
									class="fa fa-exclamation-triangle"></i> <span>Error</span></a>
								<ul class="collapse">
									<li><a href="404.html">Error 404</a></li>
									<li><a href="403.html">Error 403</a></li>
									<li><a href="500.html">Error 500</a></li>
								</ul></li>
							<li><a href="javascript:void(0)" aria-expanded="true"><i
									class="fa fa-align-left"></i> <span>Multi level menu</span></a>
								<ul class="collapse">
									<li><a href="#">Item level (1)</a></li>
									<li><a href="#">Item level (1)</a></li>
									<li><a href="#" aria-expanded="true">Item level (1)</a>
										<ul class="collapse">
											<li><a href="#">Item level (2)</a></li>
											<li><a href="#">Item level (2)</a></li>
											<li><a href="#">Item level (2)</a></li>
										</ul></li>
									<li><a href="#">Item level (1)</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<!-- sidebar menu area end -->
		<!-- main content area starts -->
		<div class="col-12 mt-5">
			<div class="card">
			<form action="estimation_request" method="post" enctype="multipart/form-data">
				<div class="card-body">
					<h4 class="header-title">Estimation Request</h4>
					<div class="form-group">
						<label for="example-text-input" class="col-form-label">Project
							Name</label> <input class="form-control" type="text" name="project-name"
							id="project-name">
					</div>
					<div class="form-group">
						<label for="example-text-input" class="col-form-label">Project
							owner</label> <input class="form-control" type="text"
							name="project-owner" id="project-owner">
					</div>
					<div class="form-group">
						<label for="example-text-input" class="col-form-label">BA
							</label> <input class="form-control" type="text"
							name="project-ba" id="project-ba">
					</div>
					<div class="form-group">
					<c:set var = "now" value = "<%=new java.util.Date()%>" />
						<label for="example-date-input" class="col-form-label">Date</label>
						<input class="form-control" type="date" name="estimation-date" value="<fmt:formatDate pattern = "yyyy-MM-dd" 
                     value = "${now}" />"
							id="estimation-date">
					</div>
					<div class="form-group">
						<label for="example-date-input" class="col-form-label">Upload
							Document</label> <input class="form-control" type="file"
							name="project-document0" id="project-document0">
							<input class="form-control" type="file"
							name="project-document1" id="project-document1">
							<input class="form-control" type="file"
							name="project-document2" id="project-document2">
					</div>
                    
                    <div class="form-group">
						<label for="example-date-input" class="col-form-label">Validation Needed </label>
					<div class="custom-control custom-checkbox">
					<input type="checkbox"  class="custom-control-input" checked="checked"
							name="WebView" id="WebView" value="WebView"> <label class="custom-control-label"
							for="WebView">Web View</label>
					</div>
					<div class="custom-control custom-checkbox">
					<input type="checkbox"  class="custom-control-input" checked="checked"
							name="Android" id="Android" value="Android"> <label class="custom-control-label"
							for="Android">Android mobile responsive</label>
					</div>
					<div class="custom-control custom-checkbox">
					<input type="checkbox"  class="custom-control-input" checked="checked"
						name="iOS"	id="iOS" value="iOS"> <label class="custom-control-label"
							for="iOS">iOS mobile responsive</label>
					</div>
					<div class="custom-control custom-checkbox">
					<input type="checkbox"  class="custom-control-input" checked="checked"
						name="Tablets"	id="Tablets" value="Tablets"> <label class="custom-control-label"
							for="Tablets">Tablets responsive</label>
					</div>
					<div class="custom-control custom-checkbox">
					<input type="checkbox"  class="custom-control-input" checked="checked"
						name="API"	id="API" value="API"> <label class="custom-control-label"
							for="API">API</label>
					</div>
					<div class="custom-control custom-checkbox">
					<input type="checkbox"  class="custom-control-input" checked="checked"
						name="MAC"	id="MAC" value="MAC"> <label class="custom-control-label"
							for="MAC">MAC Browser</label>
					</div>
					</div>
					
						<div class="form-group">
						<label for="example-text-input" class="col-form-label">Expected Estimation
							</label> <input class="form-control" type="text"
							name="expected-estimation" id="expected-estimation">
					</div>
					<div class="form-group">
					<label for="example-text-input" class="col-form-label">Asign To
							</label>
					 <select style="padding-bottom: 3px" class="form-control" name="asignto">
						<c:forEach var="ul" items="${rs.rows}">
						<option value=" ${ul.name}" ><c:out value=" ${ul.name}" /></option>
						</c:forEach>
						</select>
					</div>
					<br>
					<br>
				 <input style="background-color:#007bff; color: white; font-size: medium;" class="form-control" type="submit" name="submit" id="submit" value="Submit">
					
				</div>
				</form>
			</div>
			</div>
			
			<!-- main content area end -->
			<!-- footer area start-->
			<footer> </footer>
			<!-- footer area end-->
		</div>
		<!-- page container area end -->
		<!-- offset area start -->
		<div class="offset-area">
			<div class="offset-close">
				<i class="ti-close"></i>
			</div>
			<ul class="nav offset-menu-tab">
				<li><a class="active" data-toggle="tab" href="#activity">Activity</a></li>
				<li><a data-toggle="tab" href="#settings">Settings</a></li>
			</ul>
			<div class="offset-content tab-content">
				<div id="activity" class="tab-pane fade in show active">
					<div class="recent-activity">
						<div class="timeline-task">
							<div class="icon bg1">
								<i class="fa fa-envelope"></i>
							</div>
							<div class="tm-title">
								<h4>Rashed sent you an email</h4>
								<span class="time"><i class="ti-time"></i>09:35</span>
							</div>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Esse distinctio itaque at.</p>
						</div>
						<div class="timeline-task">
							<div class="icon bg2">
								<i class="fa fa-check"></i>
							</div>
							<div class="tm-title">
								<h4>Added</h4>
								<span class="time"><i class="ti-time"></i>7 Minutes Ago</span>
							</div>
							<p>Lorem ipsum dolor sit amet consectetur.</p>
						</div>
						<div class="timeline-task">
							<div class="icon bg2">
								<i class="fa fa-exclamation-triangle"></i>
							</div>
							<div class="tm-title">
								<h4>You missed you Password!</h4>
								<span class="time"><i class="ti-time"></i>09:20 Am</span>
							</div>
						</div>
						<div class="timeline-task">
							<div class="icon bg3">
								<i class="fa fa-bomb"></i>
							</div>
							<div class="tm-title">
								<h4>Member waiting for you Attention</h4>
								<span class="time"><i class="ti-time"></i>09:35</span>
							</div>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Esse distinctio itaque at.</p>
						</div>
						<div class="timeline-task">
							<div class="icon bg3">
								<i class="ti-signal"></i>
							</div>
							<div class="tm-title">
								<h4>You Added Kaji Patha few minutes ago</h4>
								<span class="time"><i class="ti-time"></i>01 minutes ago</span>
							</div>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Esse distinctio itaque at.</p>
						</div>
						<div class="timeline-task">
							<div class="icon bg1">
								<i class="fa fa-envelope"></i>
							</div>
							<div class="tm-title">
								<h4>Ratul Hamba sent you an email</h4>
								<span class="time"><i class="ti-time"></i>09:35</span>
							</div>
							<p>Hello sir , where are you, i am egerly waiting for you.</p>
						</div>
						<div class="timeline-task">
							<div class="icon bg2">
								<i class="fa fa-exclamation-triangle"></i>
							</div>
							<div class="tm-title">
								<h4>Rashed sent you an email</h4>
								<span class="time"><i class="ti-time"></i>09:35</span>
							</div>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Esse distinctio itaque at.</p>
						</div>
						<div class="timeline-task">
							<div class="icon bg2">
								<i class="fa fa-exclamation-triangle"></i>
							</div>
							<div class="tm-title">
								<h4>Rashed sent you an email</h4>
								<span class="time"><i class="ti-time"></i>09:35</span>
							</div>
						</div>
						<div class="timeline-task">
							<div class="icon bg3">
								<i class="fa fa-bomb"></i>
							</div>
							<div class="tm-title">
								<h4>Rashed sent you an email</h4>
								<span class="time"><i class="ti-time"></i>09:35</span>
							</div>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Esse distinctio itaque at.</p>
						</div>
						<div class="timeline-task">
							<div class="icon bg3">
								<i class="ti-signal"></i>
							</div>
							<div class="tm-title">
								<h4>Rashed sent you an email</h4>
								<span class="time"><i class="ti-time"></i>09:35</span>
							</div>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Esse distinctio itaque at.</p>
						</div>
					</div>
				</div>
				<div id="settings" class="tab-pane fade">
					<div class="offset-settings">
						<h4>General Settings</h4>
						<div class="settings-list">
							<div class="s-settings">
								<div class="s-sw-title">
									<h5>Notifications</h5>
									<div class="s-swtich">
										<input type="checkbox" id="switch1" /> <label for="switch1">Toggle</label>
									</div>
								</div>
								<p>Keep it 'On' When you want to get all the notification.</p>
							</div>
							<div class="s-settings">
								<div class="s-sw-title">
									<h5>Show recent activity</h5>
									<div class="s-swtich">
										<input type="checkbox" id="switch2" /> <label for="switch2">Toggle</label>
									</div>
								</div>
								<p>The for attribute is necessary to bind our custom
									checkbox with the input.</p>
							</div>
							<div class="s-settings">
								<div class="s-sw-title">
									<h5>Show your emails</h5>
									<div class="s-swtich">
										<input type="checkbox" id="switch3" /> <label for="switch3">Toggle</label>
									</div>
								</div>
								<p>Show email so that easily find you.</p>
							</div>
							<div class="s-settings">
								<div class="s-sw-title">
									<h5>Show Task statistics</h5>
									<div class="s-swtich">
										<input type="checkbox" id="switch4" /> <label for="switch4">Toggle</label>
									</div>
								</div>
								<p>The for attribute is necessary to bind our custom
									checkbox with the input.</p>
							</div>
							<div class="s-settings">
								<div class="s-sw-title">
									<h5>Notifications</h5>
									<div class="s-swtich">
										<input type="checkbox" id="switch5" /> <label for="switch5">Toggle</label>
									</div>
								</div>
								<p>Use checkboxes when looking for yes or no answers.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- offset area end -->
		<!-- jquery latest version -->
		<script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
		<!-- bootstrap 4 js -->
		<script src="assets/js/popper.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/owl.carousel.min.js"></script>
		<script src="assets/js/metisMenu.min.js"></script>
		<script src="assets/js/jquery.slimscroll.min.js"></script>
		<script src="assets/js/jquery.slicknav.min.js"></script>

		<!-- start chart js -->
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
		<!-- start highcharts js -->
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<!-- start zingchart js -->
		<script src="https://cdn.zingchart.com/zingchart.min.js"></script>
		<script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
    </script>
		<!-- all line chart activation -->
		<script src="assets/js/line-chart.js"></script>
		<!-- all pie chart -->
		<script src="assets/js/pie-chart.js"></script>
		<!-- others plugins -->
		<script src="assets/js/plugins.js"></script>
		<script src="assets/js/scripts.js"></script>

</body>

</html>
