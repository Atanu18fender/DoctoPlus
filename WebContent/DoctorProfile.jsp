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
<title>Doctor Profile !!</title>
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
<script src="https://kit.fontawesome.com/80570ed867.js" crossorigin="anonymous"></script>
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"
	integrity="sha512-37T7leoNS06R80c8Ulq7cdCDU5MNQBwlYoy1TX/WUsLFC2eYNqtKlV0QjH7r8JpG/S0GUMZwebnVFLPd6SU5yg=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src='assets/js/DoctorProfile.js'></script>

<script language="javascript">
	/* 	function myFunction() { */
	/* var doIt = confirm('Do you want to save changes?');
	var res = ValidatePopup(); */

	/* if (doIt && res) {
		var f = document.form1;
		f.method = "post";
		f.action = 'SaveChanges?updateID=' + id;
		f.submit();
	} else {
		console.log("Could not save !! ");
	} */
	/* 		if (res==true) {
	 var f = document.form2;
	 f.method = "post";
	 f.action = '.';
	 f.submit();
	 console.log("Valid Function");
	 } else{
	 return res;
	 }
	 }
	 */
	function myFunction(id) {
		var doIt = confirm('Do you want to save changes?');
		var res = ValidatePopup();
		//var weekday = days();
		if (doIt && res) {
			var f = document.form2;
			f.method = "post";
			f.action = 'UpdateDoc?updateID=' + id;
			f.submit();
		} else {
			console.log("Could not save !! ");
		}
	}
</script>

<style type="text/css">
#fees {
	color: #00b359;
	font-weight: bold;
	font-size: 1.5rem;
}

.weekDays-selector input {
	display: none !important;
}

.weekDays-selector input[type=checkbox]+label {
	display: inline-block;
	border-radius: 6px;
	background: #dddddd;
	height: 40px;
	width: 30px;
	margin-right: 3px;
	line-height: 40px;
	text-align: center;
	cursor: pointer;
}

.weekDays-selector input[type=checkbox]:checked+label {
	background: #2AD705;
	color: #ffffff;
}
</style>
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

	<%
	try {
		String UserId = request.getParameter("ID");
		System.out.println(UserId);
		Connection con = null;
		con = DBConnection1.createConnection();
		String SPsql = "EXEC SP_PM_GetDoctorByID ?"; // for stored proc taking 1 parameters
		PreparedStatement ps = con.prepareStatement(SPsql);
		ps.setEscapeProcessing(true);
		ps.setQueryTimeout(2000);
		ps.setString(1, UserId);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
	%>


	<!-- fixed-top-->
	<%@ include file="upnav_doctor.jsp"%>
	<!-- ////////////////////////////////////////////////////////////////////////////-->
	<%@ include file="sidenav_doctor.jsp"%>

	<div class="app-content content">
		<div class="content-wrapper">
			<div class="content-header row"></div>
			<div class="content-body">
				<!-- Chart -->
				<div class="row match-height">
					<div class="col-12"></div>
				</div>

				<!-- Statistics -->
				<div class="content-wrapper">
					<div class="content-wrapper-before"></div>
					<div class="content-header row">
						<div class="content-header-left col-md-4 col-12 mb-2">
							<h6 class="content-header-title"><%=request.getParameter("ID")%></h6>
						</div>
					</div>
					<div class="content-body">
						<!-- ../../../theme-assets/images/carousel/22.jpg -->

						<!-- Header footer section start -->
						<section id="header-footer">
							<div class="row match-height">
								<div class="col-lg-2 col-md-12"></div>
								<div class="col-lg-8 col-md-12">
									<%-- <div class="card">
										<div class="card-body">

											<h4 class="card-title text-center">
												Dr.&nbsp;<%=rs.getString("FirstName") + " " + rs.getString("LastName")%></h4>
										</div>
										<img class="" src="theme-assets/images/carousel/23.jpg"
											alt="Card image cap">
									</div> --%>

									<div class="card mb-3">
										<div class="row no-gutters">
											<div class="col-lg-5 col-md-5">
												<img class="img-fluid rounded float-left"
													src="theme-assets/images/carousel/photo1.jpg"
													alt="Upload Image"
													style="height: 21.80rem; width: 21.5rem;">
											</div>
											<div class="col-lg-7 col-md-7">
												<div class="card-body">
													<h3>
														Dr.&nbsp;<%=rs.getString("FirstName") + " " + rs.getString("LastName")%><%="  "%><span style="color:green;"><i class="fas fa-check-circle"></i></span>
													</h3>
													<h3 class="card-title">
														(<%=rs.getString("speciality")%>&nbsp;| Reg. no:<%=rs.getString("RegNo")%>)
													</h3>

													<p class="card-text"><%=rs.getString("Description")%></p>
													<p style="font-weight: bold; font-size: 110%;">
														<span style="color: black;">Days available :</span>&nbsp;<%=rs.getString("Day")%></p>
													<p class="card-text">
													<p class="card-text">
														<span style="color: black;">Timing :</span><strong><%=rs.getString("Timing")%></strong>
													</p>
													<p class="card-text">
														<span style="color: black;"><strong>Chamber
																Location :</strong></span><%=rs.getString("Address")%></p>
													</p>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div class="col-lg-2 col-md-12"></div>
							</div>
						</section>










						<!-- Header footer section End -->

						<!-- Content types section start -->
						<section id="content-types">
							<div class="row match-height">

								<div class="col-xl-12 col-md-6">
									<div class="card">
										<div class="card-content">
											<div class="card-body">
												<h4 class="card-title" style="text-align: center">Primary
													Information</h4>
												<h6 class="card-subtitle text-muted"
													style="text-align: center"></h6>
											</div>
											<div class="card-body">
												<input type="hidden" value="<%=ID%>" id="UserID"
													name="UserID" />

												<form class="form" name="form1" id="form1" runat="server"
													method="post">
													<div class="form-body">
														<div class="form-group">
															User Name<input type="text" id="donationinput1"
																class="form-control" placeholder="User Name"
																value="<%=rs.getString("UserName")%>" name="User Name"
																readonly="readonly">
														</div>
														<div class="form-group">
															First Name<input type="text" id="donationinput2"
																class="form-control" placeholder="First Name"
																value="<%=rs.getString("FirstName")%>" name="First Name"
																readonly="readonly">
														</div>
														<div class="form-group">
															Last Name<input type="email" id="donationinput3"
																class="form-control" placeholder="Last Name"
																value="<%=rs.getString("LastName")%>" name="Last Name"
																readonly="readonly">
														</div>

														<div class="form-group">
															Email ID<input type="text" id="donationinput4"
																class="form-control" placeholder="Email ID"
																value="<%=rs.getString("Email")%>" name="Email ID"
																readonly="readonly">
														</div>
														<div class="form-group">
															Phone Number<input type="text" id="donationinput5"
																class="form-control" placeholder="Phone Number"
																value="<%=rs.getString("Phone")%>" name="Phone Number"
																readonly="readonly">
														</div>

													</div>
													<%-- <div class="form-actions center">
														<!-- <button type="submit" class="btn btn-outline-primary" onclick="">Delete</button> -->
														<input value="Delete"
																	type="button" class="btn btn-outline-primary"
																	id="btndelete"
																	onclick="myFunction('<%=request.getParameter("Userid")%>')"/>
													</div> --%>
												</form>
											</div>
										</div>
									</div>
								</div>

								<!--         Doctor Specialization Details form             -->


								<div class="col-xl-12 col-md-6">
									<div class="card">
										<div class="card-content">
											<div class="card-body">
												<h4 class="card-title" style="text-align: center">
													<span style="color: red;">*Must fill this form to
														start your practice</span>
												</h4>
												<!-- <h6 class="card-subtitle text-muted"
													style="text-align: center"></h6> -->
												<div id="ErrorMessageBox" style="display: none;">
													<span id="ErrorMessageText">Please Provide UserName
														and Password</span> <i class="ti ti-close"
														style="float: right; margin-right: -29px; cursor: pointer;"
														id="CloseErr"></i>
												</div>
												<input id="focus" type="text" style="display: none;" />
											</div>
											<div class="card-body">
												<input type="hidden" value="<%=ID%>" id="UserID"
													name="UserID" />
												<form class="form2 cmxform" name="form2" id="form2"
													runat="server" method="post"
													onsubmit="return ValidatePopup()">
													<fieldset>

														<div class="form-group">
															<span style="color: red;">*</span>Speciality <select
																name="docSpeciality" class="form-control"
																id="docSpeciality" required="required">
																<option value="" disabled selected>Select
																	Speciality</option>
																<option value="General">General</option>
																<option value="Cardiologist">Cardiologist</option>
																<option value="Audiologist">Audiologist</option>
																<option value="Pediatrician">Pediatrician</option>
																<option value="Dentist">Dentist</option>
																<option value="ENT">ENT</option>
																<option value="Gynaecologist">Gynaecologist</option>
																<option value="Orthopaedic Surgeon">Orthopaedic
																	Surgeon</option>
																<option value="Psychiatrist">Psychiatrist</option>
																<option value="Radiologist">Radiologist</option>
																<option value="Pulmonologist">Pulmonologist</option>
																<option value="Endocrinologist">Endocrinologist</option>
																<option value="Oncologist">Oncologist</option>
																<option value="Neurologist">Neurologist</option>
																<option value="Sexologist">Sexologist</option>
																<option value="Cardiothoriac Surgeon">Cardiothoriac
																	Surgeon</option>
																<option value="Veterinarian">Veterinarian</option>
																<option value="Gastrologiat">Gastrologiat</option>
																<option value="Veterinarian">Veterinarian</option>
																<option value="Neurosurgery">Neurosurgery</option>
																<option value="Plastic Surgery">Plastic Surgery</option>
																<option value="Urology">Urology</option>
															</select>
														</div>
														<p>
														<div class="form-group">
															<span style="color: red;">*</span> <label for="Address">Address</label><input
																type="text" id="Address" class="form-control"
																placeholder="Address" name="Address">
															<!-- pattern="[A-Za-z0-9'\.\-\s\,]" -->
														</div>
														</p>
														<div class="form-group">
															<span style="color: red;">*</span> Pincode[pincode must
															be of length]<input type="text" id="Pincode"
																class="form-control" placeholder="Pincode"
																value="<%=rs.getString("Pincode") == null ? "" : rs.getString("Pincode")%>"
																name="Pincode">
														</div>

														<div class="form-group">
															<span style="color: red;">*</span> Day
															<div class="weekDays-selector checkbox-group required"
																id="days">
																<input type="checkbox" id="weekday-mon" class="weekday"
																	value="Monday" name="weekdays" required /> <label
																	for="weekday-mon">M</label> <input type="checkbox"
																	id="weekday-tue" class="weekday" value="Tuesday"
																	name="weekdays" required /> <label for="weekday-tue">T</label>
																<input type="checkbox" id="weekday-wed" class="weekday"
																	value="Wednesday" name="weekdays" required /> <label
																	for="weekday-wed">W</label> <input type="checkbox"
																	id="weekday-thu" class="weekday" value="Thursday"
																	name="weekdays" required /> <label for="weekday-thu">T</label>
																<input type="checkbox" id="weekday-fri" class="weekday"
																	value="Friday" name="weekdays" required /> <label
																	for="weekday-fri">F</label> <input type="checkbox"
																	id="weekday-sat" class="weekday" value="Saturday"
																	name="weekdays" required /> <label for="weekday-sat">Sa</label>
																<input type="checkbox" id="weekday-sun" class="weekday"
																	value="Sunday" name="weekdays" required /> <label
																	for="weekday-sun">Su</label>
															</div>
														</div>
														<div class="form-group">
															<span style="color: red;">*</span>Opening Timing<input
																type="time" id="StartTiming" class="form-control"
																placeholder="Start Timing"
																value="<%=rs.getString("Timing") == null ? "" : rs.getString("Timing")%>"
																name="StartTiming" required>
														</div>
														<div class="form-group">
															<span style="color: red;">*</span>Closing Timing<input
																type="time" id="CloseTiming" class="form-control"
																placeholder="Close Timing"
																value="<%=rs.getString("Timing") == null ? "" : rs.getString("Timing")%>"
																name="CloseTiming" required>
														</div>
														<div class="form-group">
															<span style="color: red;">*</span>Fees<input type="range"
																min="100" value=100 max="2000" id="Fees"
																class="form-control" placeholder="Fees"
																oninput="x.value = this.value"
																value="<%=rs.getString("Fees") == null ? "" : rs.getString("Fees")%>"
																name="Fees">
															<p id="fees">
																Rs.
																<output id="x">100</output>
																/-
															</p>
														</div>
														<div class="form-group">
															<span style="color: red;">*</span> Description
															<textarea rows="5" cols="10" id="Description"
																class="form-control" placeholder="Description"
																value="<%=rs.getString("Description") == null ? "" : rs.getString("Description")%>"
																name="Description" required></textarea>
														</div>
														<div class="form-actions center">
															<!-- <button type="submit" class="btn btn-outline-primary" onclick="myFunction()">Delete</button> -->
															<input value="Update Changes" type="button"
																class="btn btn-outline-primary" id="btnUpdateChanges"
																onclick="myFunction('<%=request.getParameter("ID")%>')" />
														</div>
													</fieldset>
												</form>
											</div>
										</div>
									</div>
								</div>

							</div>
						</section>
						<!-- Content types section end -->

						<!-- Text Alignment section end -->

						<!-- Card Headings section start -->
						<section id="card-headings">
							<div class="row">
								<div class="col-12 mt-3 mb-1">
									<h4 class="text-uppercase">Card Headings</h4>
								</div>
							</div>

							<div class="row">
								<div class="col-md-6 col-sm-12">
									<div class="card text-center">
										<div class="card-header">Featured</div>
										<div class="card-body">
											<h5 class="card-title">Special title treatment</h5>
											<p class="card-text">With supporting text below as a
												natural lead-in to additional content.</p>
											<a href="#" class="btn btn-primary">Go somewhere</a>
										</div>
										<div class="card-footer text-muted">2 days ago</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-12">
									<div class="card">
										<div class="card-header">
											<h4 class="card-title" id="heading-multiple-thumbnails">Multiple
												Thumbnail</h4>
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
													cookie oat cake soufflé.Tootsie roll bonbon liquorice
													tiramisu pie powder.Donut sweet roll marzipan pastry cookie
													cake tootsie roll oat cake cookie.</p>
												<p class="card-text">Sweet roll marzipan pastry halvah.
													Cake bear claw sweet. Tootsie roll pie marshmallow lollipop
													chupa chups donut fruitcake cake.Jelly beans sugar plum
													cheesecake cookie oat cake soufflé. Tart lollipop carrot
													cake sugar plum. Marshmallow wafer tiramisu jelly beans.</p>
											</div>
										</div>
									</div>
								</div>
							</div>

						</section>
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

	<%@ include file="footer.jsp"%>
	<script>
		$('#form2').validate();
	</script>
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