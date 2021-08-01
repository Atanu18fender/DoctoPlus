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
		String speciality = request.getParameter("speciality");
		System.out.println(speciality);
		Connection con = null;
		con = DBConnection1.createConnection();
		String SPsql = "EXEC SP_PM_GetDoctorBySpeciality ?"; // for stored proc taking 1 parameters
		PreparedStatement ps = con.prepareStatement(SPsql);
		ps.setEscapeProcessing(true);
		ps.setQueryTimeout(2000);
		ps.setString(1, speciality);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
	%>
	
	<div class="container-fluid">
		<div class="row match-height">
			<div class="col-lg-4 col-md-12">
				<div class="card mb-3">
					<div class="row no-gutters">
						<div class="col-lg-5 col-md-5">
							<img class="img-fluid rounded float-left"
								src="theme-assets/images/carousel/photo1.jpg" alt="Upload Image"
								style="height: 21.80rem; width: 21.5rem;">
						</div>
						<div class="col-lg-7 col-md-7">
							<div class="card-body">
								<h3>
									Dr.&nbsp;<%=rs.getString("FirstName") + " " + rs.getString("LastName")%><%="  "%><span
										style="color: green;"><i class="fas fa-check-circle"></i></span>
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
		</div>
		<!-- category part -->
	</div>
	
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