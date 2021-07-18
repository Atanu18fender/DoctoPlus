<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mvc.util1.DBConnection1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.CallableStatement"%>

<head>
<link
	href="assets/application/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link
	href="assets/application/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="assets/application/vendor/select2/select2.min.css"
	rel="stylesheet" media="all">
<link href="assets/application/vendor/datepicker/daterangepicker.css"
	rel="stylesheet" media="all">

<!-- Main CSS-->
<link href="assets/application/css/main.css" rel="stylesheet"
	media="all">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta name="description"
	content="Chameleon Admin is a modern Bootstrap 4 webapp &amp; admin dashboard html template with a large number of components, elegant design, clean and organized code.">
<meta name="keywords"
	content="admin template, Chameleon admin template, dashboard template, gradient admin template, responsive admin template, webapp, eCommerce dashboard, analytic dashboard">
<meta name="author" content="ThemeSelect">
<title>Doctor Management Dashboard!!</title>
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

<script src='assets/js/updateProfile.js'></script>

<script language="javascript">
	function myFunction() {
		var doIt = confirm('Are you sure ?');
		/* var res = ValidatePopup(); */

		if (doIt) {
			var f = document.form;
			f.method = "post";
			f.action = 'docRequest';
			f.submit();
		} else {
			console.log("Could not send !! ");
		}
	}
</script>

</head>

<body
	style="background-image: url(theme-assets/images/backgrounds/04.jpg)"
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

	<%@ include file="upnav_user.jsp"%>

	<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);

	if (session.getAttribute("userName") == null)
		response.sendRedirect("login.jsp");
	%>


	<!-- fixed-top-->

	<!-- ////////////////////////////////////////////////////////////////////////////-->

	<div class="container-fluid">
		<div class="content-wrapper">
			<div class="wrapper wrapper--w790">
				<div class="card card-5">
					<div class="card-heading">
						<h2 class="title">Registration Form</h2>
					</div>
					<div class="card-body">

						<form method="POST" name="form">

							<input class="input--style-5" type="text" name="ID"
								value="<%=ID%>" style="display: none;"> <input
								class="input--style-5" type="text" name="UserName"
								value="<%=name%>" style="display: none;">

							<div class="form-row m-b-55">
								<div class="name">Name</div>
								<div class="value">
									<div class="row row-space">
										<div class="col-6">
											<div class="input-group-desc">
												<input class="input--style-5" type="text" name="first_name">
												<label class="label--desc">first name</label>
											</div>
										</div>
										<div class="col-6">
											<div class="input-group-desc">
												<input class="input--style-5" type="text" name="last_name">
												<label class="label--desc">last name</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="name">Registration Number</div>
								<div class="value">
									<div class="input-group">
										<input class="input--style-5" type="text" name="Reg_number"
											required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="name">Date of Reg.</div>
								<div class="col-5">
									<div class="input-group">
										<input class="input--style-5" type="date" name="date">
									</div>
								</div>
							</div>
							<div class="form-row m-b-55">
								<div class="name">UPRN No</div>
								<div class="value">
									<div class="row row-refine">
										<div class="col-9">
											<div class="input-group-desc">
												<input class="input--style-5" type="text" name="uprn">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="name">State Medical Council</div>
								<div class="value">
									<div class="input-group">
										<div class="rs-select2 js-select-simple select--no-search">
											<select name="stateCouncil" tabindex="-1"
												class="select2-hidden-accessible" aria-hidden="true">
												<option disabled="disabled" selected="selected">Choose
													option &nbsp;&nbsp;&nbsp;</option>
												<option>Andhra Pradesh Medical Council</option>
												<option>Arunachal Pradesh Medical Council</option>
												<option>Assam Medical Council</option>
												</option>
												<option>Bhopal Medical Council</option>
												<option>Bihar Medical Council</option>
												<option>Bombay Medical Council</option>
												<option>Chandigarh Medical Council</option>
												<option>Chattisgarh Medical Council</option>
												<option>Delhi Medical Council</option>
												<option>Goa Medical Council</option>
												<option>Gujarat Medical Council</option>
												<option>Haryana Medical Council</option>
												<option>Himachal Pradesh Medical Council</option>
												<option>Hyderabad Medical Council</option>
												<option>Jammu & Kashmir Medical Council</option>
												<option>Jharkhand Medical Council</option>
												<option>Karnataka Medical Council</option>
												<option>Madhya Pradesh Medical Council</option>
												<option>Madras Medical Council</option>
												<option>Mahakoshal Medical Council</option>
												<option>Maharashtra Medical Council</option>
												<option>Manipur Medical Council</option>
												<option>Medical Council of India</option>
												<option>Medical Council of Tanganyika</option>
												<option>Mizoram Medical Council</option>
												<option>Mysore Medical Council</option>
												<option>Nagaland Medical Council</option>
												<option>Orissa Council of Medical Registration</option>
												<option>Pondicherry Medical Council</option>
												<option>Punjab Medical Council</option>
												<option>Rajasthan Medical Council</option>
												<option>Sikkim Medical Council</option>
												<option>Tamil Nadu Medical Council</option>
												<option>Telangana State Medical Council</option>
												<option>Travancore Cochin Medical Council,
													Trivandrum</option>
												<option>Tripura State Medical Council</option>
												<option>Uttar Pradesh Medical Council</option>
												<option>Uttarakhand Medical Council</option>
												<option>Vidharba Medical Council</option>
												<option>West Bengal Medical Council</option>
											</select><span
												class="select2 select2-container select2-container--default"
												dir="ltr" style="width: 110px;"><span
												class="selection"></span><span class="dropdown-wrapper"
												aria-hidden="true"></span></span>
											<div class="select-dropdown"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-row p-t-20">
								<label class="label label--block">I solemnly declare
									that the information in this form is truly stated and correct
									and I am competent to furnish as well as verify it with
									adequate details whenever requested for by Docto +</label>
								<div class="p-t-15">
									<label class="radio-container m-r-55">I agree <input
										type="radio" checked="checked" name="exist"> <span
										class="checkmark"></span>
									</label> <label class="radio-container">I disagree <input
										type="radio" name="exist"> <span class="checkmark"></span>
									</label>
								</div>
							</div>
							<div>
								<button class="btn btn--radius-2 btn--red" type="submit"
									onclick="myFunction()">Register</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ////////////////////////////////////////////////////////////////////////////-->

	<%-- <%@ include file="footer_user.jsp"%> --%>

	<!-- Jquery JS-->
	<script src="assets/application/vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="assets/application/vendor/select2/select2.min.js"></script>
	<script src="assets/application/vendor/datepicker/moment.min.js"></script>
	<script src="assets/application/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="assets/application/js/global.js"></script>

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