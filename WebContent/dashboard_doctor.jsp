<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="description"
	content="Chameleon Admin is a modern Bootstrap 4 webapp &amp; admin dashboard html template with a large number of components, elegant design, clean and organized code.">
<meta name="keywords"
	content="admin template, Chameleon admin template, dashboard template, gradient admin template, responsive admin template, webapp, eCommerce dashboard, analytic dashboard">
<meta name="author" content="ThemeSelect">
<title>Doctor Dashboard!!</title>
<link rel="apple-touch-icon"
	href="theme-assets/images/ico/apple-icon-120.png">
<link rel="shortcut icon" type="image/x-icon"
	href="theme-assets/images/ico/favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,300i,400,400i,600,600i,700,700i%7CComfortaa:300,400,700"
	rel="stylesheet">
<link
	href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css"
	rel="stylesheet">
<!-- BEGIN VENDOR CSS-->
<link rel="stylesheet" type="text/css"
	href="theme-assets/css/vendors.css">
<link rel="stylesheet" type="text/css"
	href="theme-assets/vendors/css/charts/chartist.css">
<!-- END VENDOR CSS-->
<!-- BEGIN CHAMELEON  CSS-->
<link rel="stylesheet" type="text/css"
	href="theme-assets/css/app-lite.css">
<!-- END CHAMELEON  CSS-->
<!-- BEGIN Page Level CSS-->
<link rel="stylesheet" type="text/css"
	href="theme-assets/css/core/menu/menu-types/vertical-menu.css">
<link rel="stylesheet" type="text/css"
	href="theme-assets/css/core/colors/palette-gradient.css">
<link rel="stylesheet" type="text/css"
	href="theme-assets/css/pages/dashboard-ecommerce.css">
<!-- END Page Level CSS-->
<!-- BEGIN Custom CSS-->
<!-- END Custom CSS-->
<script type="text/javascript">
	function loadAppointment(ID) {
		console.log(ID);
		$.ajax({
			url : "GetPatientList.jsp",
			type : "post",
			data : "DocID="+ID,
			success : function(data) {
				console.log(data);
				$("#recent-buyers").html(data);
			}
		});
	}
</script>

</head>

<body
	class="vertical-layout vertical-menu 2-columns fixed-navbar  menu-expanded pace-done"
	data-open="click" data-menu="vertical-menu" data-color="bg-chartbg"
	data-col="2-columns">
	<div class="pace  pace-inactive">
		<div class="pace-progress" data-progress-text="100%"
			data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
			<div class="pace-progress-inner"></div>
		</div>
		<div class="pace-activity"></div>
	</div>

	<!-- fixed-top-->
	<%@ include file="upnav_doctor.jsp"%>

	<!-- ////////////////////////////////////////////////////////////////////////////-->
	<%@ include file="sidenav_doctor.jsp"%>


	<div class="app-content content">
		<div class="content-wrapper">
			<!-- <div class="content-wrapper-before"></div> -->
			<div class="content-header row"></div>
			<div class="content-body">
				<!-- Chart -->
				<div class="row match-height">
					<div class="col-12">
						<!--         <div class="">
            <div id="gradient-line-chart1" class="height-250 GradientlineShadow1"><svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line y1="215" y2="215" x1="50" x2="983.40625" class="ct-grid ct-vertical"></line><line y1="165" y2="165" x1="50" x2="983.40625" class="ct-grid ct-vertical"></line><line y1="115" y2="115" x1="50" x2="983.40625" class="ct-grid ct-vertical"></line><line y1="65" y2="65" x1="50" x2="983.40625" class="ct-grid ct-vertical"></line><line y1="15" y2="15" x1="50" x2="983.40625" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M50,190C127.784,190,127.784,115,205.568,115C283.352,115,283.352,190,361.135,190C438.919,190,438.919,90,516.703,90C594.487,90,594.487,140,672.271,140C750.055,140,750.055,40,827.839,40C905.622,40,905.622,95,983.406,95" class="ct-line"></path><circle cx="50" cy="190" ct:value="190" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="205.56770833333334" cy="115" ct:value="115" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="361.1354166666667" cy="190" ct:value="190" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="516.703125" cy="90" ct:value="90" r="10" class="ct-point ct-point-circle"></circle><circle cx="672.2708333333334" cy="140" ct:value="140" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="827.8385416666667" cy="40" ct:value="40" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="983.40625" cy="95" ct:value="95" r="10" class="ct-point ct-point-circle-transperent"></circle></g><g class="ct-series ct-series-b"><path d="M50,140C127.784,140,127.784,40,205.568,40C283.352,40,283.352,150,361.135,150C438.919,150,438.919,35,516.703,35C594.487,35,594.487,195,672.271,195C750.055,195,750.055,89,827.839,89C905.622,89,905.622,165,983.406,165" class="ct-line"></path><circle cx="50" cy="140" ct:value="140" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="205.56770833333334" cy="40" ct:value="40" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="361.1354166666667" cy="150" ct:value="150" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="516.703125" cy="35" ct:value="35" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="672.2708333333334" cy="195" ct:value="195" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="827.8385416666667" cy="89" ct:value="89" r="10" class="ct-point ct-point-circle-transperent"></circle><circle cx="983.40625" cy="165" ct:value="165" r="10" class="ct-point ct-point-circle-transperent"></circle></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="50" y="220" width="155.56770833333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Mon</span></foreignObject><foreignObject style="overflow: visible;" x="205.56770833333334" y="220" width="155.56770833333334" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Tue</span></foreignObject><foreignObject style="overflow: visible;" x="361.1354166666667" y="220" width="155.56770833333331" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Wed</span></foreignObject><foreignObject style="overflow: visible;" x="516.703125" y="220" width="155.56770833333337" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Thu</span></foreignObject><foreignObject style="overflow: visible;" x="672.2708333333334" y="220" width="155.56770833333337" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Fri</span></foreignObject><foreignObject style="overflow: visible;" x="827.8385416666667" y="220" width="155.56770833333326" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 156px; height: 20px;">Sat</span></foreignObject><foreignObject style="overflow: visible;" x="983.40625" y="220" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">Sun</span></foreignObject><foreignObject style="overflow: visible;" y="165" x="10" height="50" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 50px; width: 30px;">100</span></foreignObject><foreignObject style="overflow: visible;" y="115" x="10" height="50" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 50px; width: 30px;">150</span></foreignObject><foreignObject style="overflow: visible;" y="65" x="10" height="50" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 50px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="15" x="10" height="50" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 50px; width: 30px;">250</span></foreignObject><foreignObject style="overflow: visible;" y="-15" x="10" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">300</span></foreignObject></g><defs><linearGradient id="lineLinear1" x1="0" y1="0" x2="1" y2="0"><stop offset="0%" stop-color="rgba(168,120,244,0.1)"></stop><stop offset="10%" stop-color="rgba(168,120,244,1)"></stop><stop offset="80%" stop-color="rgba(255,108,147, 1)"></stop><stop offset="98%" stop-color="rgba(255,108,147, 0.1)"></stop></linearGradient><linearGradient id="lineLinear2" x1="0" y1="0" x2="1" y2="0"><stop offset="0%" stop-color="rgba(0,230,175,0.1)"></stop><stop offset="10%" stop-color="rgba(0,230,175,1)"></stop><stop offset="80%" stop-color="rgba(255,161,69, 1)"></stop><stop offset="98%" stop-color="rgba(255,161,69, 0.1)"></stop></linearGradient></defs></svg></div>
        </div> -->
					</div>
				</div>

				<!-- Statistics -->
				<div class="row match-height">
					<div class="col-xl-4 col-lg-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title" id="heading-multiple-thumbnails">Doctor
									Details</h4>
								<a class="heading-elements-toggle"> <i
									class="la la-ellipsis-v font-medium-3"></i>
								</a>
								<div class="heading-elements">
									<span class="avatar"> <img
										src="theme-assets/images/portrait/small/avatar-s-2.png"
										alt="avatar">
									</span> <span class="avatar"> <img
										src="theme-assets/images/portrait/small/avatar-s-3.png"
										alt="avatar">
									</span> <span class="avatar"> <img
										src="theme-assets/images/portrait/small/avatar-s-4.png"
										alt="avatar">
									</span>
								</div>
							</div>
							<div class="card-content">
								<div class="card-body">
									<h4 class="card-title">Content title</h4>
									<p class="card-text">Jelly beans sugar plum cheesecake
										cookie oat cake soufflé.Tootsie roll bonbon liquorice tiramisu
										pie powder.Donut sweet roll marzipan pastry cookie cake
										tootsie roll oat cake cookie.Jelly beans sugar plum cheesecake
										cookie oat cake soufflé. Tart lollipop carrot cake sugar plum.
									</p>
									<p class="card-text">Sweet roll marzipan pastry halvah.
										Cake bear claw sweet. Tootsie roll pie marshmallow lollipop
										chupa chups donut fruitcake cake.Jelly beans sugar plum
										cheesecake cookie oat cake soufflé. Tart lollipop carrot cake
										sugar plum. Marshmallow wafer tiramisu jelly beans.</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-12">
						<div class="card">
							<div class="card-content">
								<div class="card-body">
									<h4 class="card-title">Nearest Chamber</h4>
									<h6 class="card-subtitle text-muted">Carousel Card With
										Header &amp; Footer</h6>
								</div>
								<div id="carousel-area" class="carousel slide"
									data-ride="carousel">
									<ol class="carousel-indicators">
										<li data-target="#carousel-area" data-slide-to="0" class=""></li>
										<li data-target="#carousel-area" data-slide-to="1" class=""></li>
										<li data-target="#carousel-area" data-slide-to="2"
											class="active"></li>
									</ol>
									<div class="carousel-inner" role="listbox">
										<div class="carousel-item">
											<img src="theme-assets/images/carousel/08.jpg"
												class="d-block w-100" alt="First slide">
										</div>
										<div class="carousel-item">
											<img src="theme-assets/images/carousel/03.jpg"
												class="d-block w-100" alt="Second slide">
										</div>
										<div class="carousel-item active">
											<img src="theme-assets/images/carousel/01.jpg"
												class="d-block w-100" alt="Third slide">
										</div>
									</div>
									<a class="carousel-control-prev" href="#carousel-area"
										role="button" data-slide="prev"> <span
										class="la la-angle-left" aria-hidden="true"></span> <span
										class="sr-only">Previous</span>
									</a> <a class="carousel-control-next" href="#carousel-area"
										role="button" data-slide="next"> <span
										class="la la-angle-right icon-next" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<div class="card-body">
									<a href="#" class="card-link">Card link</a> <a href="#"
										class="card-link">Another link</a>
								</div>
							</div>
							<div
								class="card-footer border-top-blue-grey border-top-lighten-5 text-muted">
								<span class="float-left">2 days ago</span> <span
									class="tags float-right"> <span
									class="badge badge-pill badge-primary">Branding</span> <span
									class="badge badge-pill badge-danger">Design</span>
								</span>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">Today's Appointment <span style="transform:rotate(180deg);"></span></h4>
								<a class="heading-elements-toggle"> <i
									class="la-sort-amount-desc font-medium-3"></i>
								</a>
								<div class="heading-elements">
									<ul class="list-inline mb-0">
										<li><a type="button" data-action="reload" onclick="loadAppointment('<%=request.getAttribute("ID") == null ? ID : request.getAttribute("ID")%>')"> <i class="la la-sort-amount-desc font-large-1"></i>
										</a></li>
									</ul>
								</div>
							</div>
							<div class="card-content">
								<div id="recent-buyers" class="media-list">
									
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--/ Statistics -->
			</div>
		</div>
	</div>
	<!-- ////////////////////////////////////////////////////////////////////////////-->


	<%@ include file="footer.jsp"%>

	<!-- BEGIN VENDOR JS-->
	<script src="theme-assets/vendors/js/vendors.min.js"
		type="text/javascript"></script>
	<!-- BEGIN VENDOR JS-->
	<!-- BEGIN PAGE VENDOR JS-->
	<script src="theme-assets/vendors/js/charts/chartist.min.js"
		type="text/javascript"></script>
	<!-- END PAGE VENDOR JS-->
	<!-- BEGIN CHAMELEON  JS-->
	<script src="theme-assets/js/core/app-menu-lite.js"
		type="text/javascript"></script>
	<script src="theme-assets/js/core/app-lite.js" type="text/javascript"></script>
	<!-- END CHAMELEON  JS-->
	<!-- BEGIN PAGE LEVEL JS-->
	<script src="theme-assets/js/scripts/pages/dashboard-lite.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL JS-->

</body>