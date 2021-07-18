<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mvc.util1.DBConnection1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.CallableStatement"%>


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
	function myFunction(id) {
		var doIt = confirm('Do you want to save changes?');
		var res = ValidatePopup();

		if (doIt && res) {
			var f = document.form1;
			f.method = "post";
			f.action = 'SaveChanges?updateID=' + id;
			f.submit();
		} else {
			console.log("Could not save !! ");
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

	<%
	try {
		String UserId = request.getParameter("ID");
		System.out.println(UserId);
		Connection con = null;
		con = DBConnection1.createConnection();
		String SPsql = "EXEC SP_PM_GetUserByID ?"; // for stored proc taking 1 parameters
		PreparedStatement ps = con.prepareStatement(SPsql);
		ps.setEscapeProcessing(true);
		ps.setQueryTimeout(2000);
		ps.setString(1, UserId);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
	%>


	<!-- fixed-top-->

	<!-- ////////////////////////////////////////////////////////////////////////////-->

	<div class="container-fluid">
		<div class="content-wrapper">
			<div class="content-header row"></div>
			<div class="content-body">
				<!-- Chart -->
				<div class="row match-height">
					<div class="col-12"></div>
				</div>

				<!-- Statistics -->
				<div class="content-wrapper">
					<!-- <div class="content-wrapper-before"></div>
					<div class="content-header row">
						<div class="content-header-left col-md-4 col-12 mb-2">
							<h6 class="content-header-title"></h6>
						</div>
					</div> -->
					<div class="content-body">
						<!-- ../../../theme-assets/images/carousel/22.jpg -->

						<!-- Header footer section start -->
						<section id="header-footer">
							<div class="row match-height">
								<div class="col-lg-4 col-md-12">
									<h1
										style="color: white; margin-top: 50px; font-size: 17px; text-shadow: 3px 3px 5px black;"><%=request.getParameter("ID")%></h1>
								</div>
								<div class="col-lg-4 col-md-12">
									<div class="card">
										<div class="card-title mt-1 mb-1">
											<h4 class="card-title text-center"><%=rs.getString("FirstName") == null ? "" : rs.getString("FirstName")%>&nbsp;<%=rs.getString("LastName") == null ? "" : rs.getString("LastName")%></h4>
										</div>
										<img class="" src="theme-assets/images/carousel/23.jpg"
											alt="Card image cap">
									</div>
								</div>
								<div class="col-lg-4 col-md-12"></div>
							</div>
						</section>
						<!-- Header footer section End -->

						<!-- Content types section start -->
						<section id="content-types">
						
							<div class="row match-height">
							<div class="col-xl-2 col-lg-2 col-md-2"></div>
								<div class="col-xl-8 col-lg-8 col-md-8">
									<div class="card">
										<div class="card-content">
											<div class="card-body">
												<h4 class="card-title">My Details</h4>
												<h6 class="card-subtitle text-muted">Edit Info.</h6>

												<div id="ErrorMessageBox" style="display: none;">
													<span id="ErrorMessageText">Please Provide UserName
														and Password</span> <i class="ti ti-close"
														style="float: right; margin-right: -29px; cursor: pointer;"
														id="CloseErr"></i>
												</div>
											</div>
											<div class="card-body">
												<input type="hidden" value="" id="UserID" name="UserID" />

												<form class="form" name="form1" id="form1" runat="server"
													method="post" onsubmit="return ValidatePopup()">
													<div class="form-body">
														<div class="form-group">
															User Name<input type="text" id="txtUserName"
																class="form-control" placeholder="User Name"
																value="<%=rs.getString("UserName") == null ? "" : rs.getString("UserName")%>"
																name="UserName" readonly>
														</div>
														<div class="form-group">
															First Name<input type="text" id="txtFirstName"
																class="form-control" placeholder="First Name"
																value="<%=rs.getString("FirstName") == null ? "" : rs.getString("FirstName")%>"
																name="FirstName">
														</div>
														<div class="form-group">
															Last Name<input type="text" id="txtLastName"
																class="form-control" placeholder="Last Name"
																value="<%=rs.getString("LastName") == null ? "" : rs.getString("LastName")%>"
																name="LastName">
														</div>

														<div class="form-group">
															Email ID<input type="email" id="txtEmail"
																class="form-control" placeholder="Email ID"
																value="<%=rs.getString("Email") == null ? "" : rs.getString("Email")%>"
																name="EmailID">
														</div>
														<div class="form-group">
															Phone Number<input type="text" id="txtPhone"
																class="form-control" placeholder="Phone Number"
																value="<%=rs.getString("Phone") == null ? "" : rs.getString("Phone")%>"
																name="PhoneNumber">
														</div>

													</div>
													<div class="form-actions center">
														<!-- <button type="submit" class="btn btn-outline-primary" onclick="">Delete</button> -->
														<input value="Save Changes" type="button"
															class="btn btn-outline-primary" id="btnSaveChanges"
															onclick="myFunction('<%=request.getParameter("ID")%>')" />
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xl-2 col-lg-2 col-md-2"></div>
							</div>
							<div class="row match-height">
								<div class="col-xl-4 col-lg-4 col-md-4">
									<div class="card text-center">
										<div class="card-header">Featured</div>
										<div class="card-body">
											<h5 class="card-title">Are you a doctor?</h5>
											<p class="card-text">Feel free to join us !!</p>
											<a href="docApplication.jsp" class="btn btn-primary">Apply !</a>
										</div>
										<!-- <div class="card-footer text-muted">2 days ago</div> -->
									</div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-4">
									<div class="card text-center">
										<div class="card-header">Featured</div>
										<div class="card-body">
											<h5 class="card-title">Do you have a pharmacy ?</h5>
											<p class="card-text">Connect with us !!</p>
											<a href="#" class="btn btn-primary">Connect !</a>
										</div>
										<!-- <div class="card-footer text-muted">2 days ago</div> -->
									</div>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-4">
									<div class="card text-center">
										<div class="card-header">Featured</div>
										<div class="card-body">
											<h5 class="card-title">Do you have any diagnostic center?</h5>
											<p class="card-text">Give your business a new edge !</p>
											<a href="#" class="btn btn-primary">Join us !</a>
										</div>
										<!-- <div class="card-footer text-muted">2 days ago</div> -->
									</div>
								</div>
							</div>
						</section>
						<!-- Content types section end -->

						<!-- Text Alignment section end -->

						<!-- Card Headings section start -->
						<!-- // Card Headings section end -->
					</div>
				</div>
				<!--/ Statistics -->
			</div>
		</div>
	</div>
	<!-- ////////////////////////////////////////////////////////////////////////////-->

	<%
	}
	} catch (SQLException e) {
	e.printStackTrace();
	}
	%>

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