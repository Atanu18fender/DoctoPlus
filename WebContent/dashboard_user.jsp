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
<title>User Dashboard!!</title>
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
<style>
.banner-background1 {
	clip-path: polygon(0 0, 100% 6%, 100% 100%, 0 100%);
}

.banner-background2 {
	clip-path: polygon(0 0, 100% 0, 100% 100%, 0 93%);
}

.fa-syringe {
	color: #e60000;
}

.fa-pills {
	color: #71da71;
}

.fa-virus-slash {
	color: #6600ff;
}

.round {
	border-radius: 40%;
	box-shadow: 6px 6px 10px grey;
}

.card-cat {
	background-color: #99ffd6 !important;
	margin: auto;
	/* transition: all 0.5s ease 0s; */
}

}
.round:hover {
	transform: translate(10px);
}

.overlay {
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	background-color: #008CBA;
	overflow: hidden;
	width: 100%;
	height: 100%;
	-webkit-transform: scale(0);
	-ms-transform: scale(0);
	transform: scale(0);
	-webkit-transition: .3s ease;
	transition: .3s ease;
}

/* .round:hover .overlay {
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1);
} */
.text {
	color: white;
	font-size: 20px;
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	text-align: center;
}

.card-body {
	text-align: center;
}

.animal {
	background-image:
		url("https://media.discordapp.net/attachments/830034964753547269/870946704927625246/bgpet.png?width=1025&height=372");
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

.gaping {
	margin-top: 4%;
	margin-bottom: 4%;
	margin-left: 4%;
	margin-right: 4%;
}

.gaping1 {
	margin-top: 0;
}

.gaping-text {
	margin-top: 40px;
	margin-bottom: 40px;
	text-align: center;
	color: white;
}

.anima {
	transition: transform 250ms;
}

.anima:hover {
	-ms-transform: translateY(-10px); /* IE 9 */
	transform: translateY(-10px);
}
</style>




<script src="https://kit.fontawesome.com/80570ed867.js"
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function() {
		function disablePrev() {
			window.history.forward()
		}
		window.onload = disablePrev();
		window.onpageshow = function(evt) {
			if (evt.persisted)
				disableBack()
		}
	});
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
	<%@ include file="upnav_user.jsp"%>

	<!-- ////////////////////////////////////////////////////////////////////////////-->
	<%-- 	<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);

	if (session.getAttribute("userName") == null)
		response.sendRedirect("login.jsp");
	%> --%>

	<div class="container-fluid">
		<!-- Statistics -->
        <!-- Search Modal -->
		<%@ include file="SearchModal.jsp"%>
		<!-- End of Modal -->

		<div class="row match-height">
			<div class="col-lg-4 col-md-12">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">Generic Medicines at your door step</h4>

					</div>
					<img class="" src="theme-assets/images/carousel/1mg.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<strong>Buy Generic Medicines from TATA 1mg <i
								class="fas fa-pills fa-2x"></i></strong>
						</p>

					</div>
					<div
						class="card-footer border-top-blue-grey border-top-lighten-5 text-muted">
						<span class="float-left"><a
							href="https://www.1mg.com/?utm_source=google&utm_medium=cpc&utm_campaign=Search-Brand-1mg&utm_keyword=1mg&utm_adgroup={adgroup}&gclid=Cj0KCQjwub-HBhCyARIsAPctr7zU81JCkbDMIbdwl4HBF4OPLLjI4jdNiu9LaagMJ_rjq3xPVGvD00UaAisyEALw_wcB"
							target="_blank"><button type="button"
									class="btn btn-warning btn-min-width mr-1 mb-1">Buy
									Now</button></a></span>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-12">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">Covid Corner</h4>
					</div>
					<img class="" src="theme-assets/images/carousel/corona.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<strong>Corona Symptoms ?? Dont Panic ! <i
								class="fas fa-virus-slash fa-2x"></i></strong>
						</p>
						<div
							class="card-footer border-top-blue-grey border-top-lighten-5 text-muted">
							<span class="float-left"><a
								href="https://www.srlworld.com/covid-19" target="_blank"><button
										type="button" class="btn btn-warning btn-min-width mr-1 mb-1">Visit
										Here</button></a></span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-12">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">Let's Fight Corona Virus Together</h4>
					</div>
					<img class="" src="theme-assets/images/carousel/vaccine.png"
						alt="Card image cap">
					<div class="card-body">
						<p class="card-text">
							<strong>Book a slot at COwin <i
								class="fas fa-syringe fa-2x"></i>
							</strong>
						</p>
					</div>
					<div
						class="card-footer border-top-blue-grey border-top-lighten-5 text-muted">
						<span class="float-left"><span class="float-left"><a
								href="https://www.cowin.gov.in/" target="_blank"><button
										type="button" class="btn btn-warning btn-min-width mr-1 mb-1">Book
										Now</button></a></span></span>
					</div>
				</div>
			</div>
		</div>
		<!-- category part -->

		<div class="row banner-background2" style="background-color: #99ffd6;">
			<div class="col-lg-2 col-md-4 col-sm-4 col-xsm-4">
				<a href="DocSpeciality.jsp?speciality=general">
					<div class="card card-cat">
						<div class="card-body"></div>
						<img class="round anima"
							src="theme-assets/images/gallery/period.png">

						<div class="card-body">
							<strong>Period doubts or Pregnancy</strong>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 col-xsm-4">
				<a href="DocSpeciality.jsp?speciality=dermatologist">
					<div class="card card-cat">
						<div class="card-body"></div>
						<img class="round anima"
							src="theme-assets/images/gallery/pimple.jpg">
						<div class="card-body">
							<strong>Acne,Pimple and Skin issues</strong>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 col-xsm-4">
				<a href="DocSpeciality.jsp?speciality=sexologist">
					<div class="card card-cat">
						<div class="card-body"></div>
						<img class="round anima" src="theme-assets/images/gallery/sex.jpg">
						<div class="card-body">
							<strong>Performance issues on bed</strong>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 col-xsm-4">
				<a href="DocSpeciality.jsp?speciality=pediatrician">
					<div class="card card-cat">
						<div class="card-body"></div>
						<img class="round anima"
							src="theme-assets/images/gallery/child.jpg">
						<div class="card-body">
							<strong>Child not feeling well ?</strong>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 col-xsm-4">
				<a href="DocSpeciality.jsp?speciality=dentist">
					<div class="card card-cat">
						<div class="card-body"></div>
						<img class="round anima"
							src="theme-assets/images/gallery/tooth.jpg">
						<div class="card-body">
							<strong>Dental Problems</strong>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4 col-xsm-4">
				<a href="DocSpeciality.jsp?speciality=psychiatrist">
					<div class="card card-cat">
						<div class="card-body"></div>
						<img class="round anima"
							src="theme-assets/images/gallery/mental.jpg">
						<div class="card-body">
							<strong>Depression and Anxiety</strong>
						</div>
					</div>
				</a>
			</div>
		</div>

		<!-- veterinary section -->
		<div class="animal banner-background1 gaping1">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-sm-12 gaping">

					<div id="carouselExampleControls" class="carousel slide"
						style="box-shadow: 8px 8px 8px #808080;" data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-100"
									src="theme-assets/images/carousel/dog.png" alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100"
									src="theme-assets/images/carousel/cat.png" alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100"
									src="theme-assets/images/carousel/cat-puppy.png"
									alt="Third slide">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleControls"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselExampleControls"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>

				<div
					class="col-lg-4 col-md-6 col-sm-12 align-self-center gaping-text">


					<h1>Now We have our veterinary medical support for your
						pet....</h1>
					<br>
					<h3 style="color: white; background-color: #a3c2c2; opacity: 0.7;">#Pet
						Lives Matter :)</h3>
					<br>
					<button type="button" class="btn btn-warning">Visit Now</button>
					<div class="card-body"></div>


				</div>

			</div>


		</div>



	</div>
	<!-- ////////////////////////////////////////////////////////////////////////////-->


	<%@ include file="footer_user.jsp"%>

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