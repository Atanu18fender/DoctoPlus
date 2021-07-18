<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mvc.util1.DBConnection1"%>


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


<script>
function verify(str) {
	var dummyContent =str;
	var dummy = $('<textarea>').val(dummyContent).appendTo('body').select();
	document.execCommand('copy');
	alert("Copied to clipborad: " + str);
	$(dummy).remove();
}


function approve(ID,num){
	if(num==1){
		var doIt = confirm('Do you want to Approve?');
		if (doIt) {
			var f = document.form1;
			f.method = "post";
			f.action = 'Acceptance?reqID=' +ID;
			f.submit();
		} else {
			console.log("Could not update !! ");
		}
	}
	else if(num==2){
		var doIt = confirm('Do you want to Discard?');
		if (doIt) {
			var f = document.form1;
			f.method = "post";
			f.action = 'Discard?reqID=' +ID;
			f.submit();
		} else {
			console.log("Could not update !! ");
		}
	}
}

</script>

<!-- <script>
function approve(ID){
	alert("Hello");
	/* var xhr = new XMLHttpRequest();
	xhr.open("GET", "/Acceptance?reqID="+ID);
	xhr.send(null); */
}
</script> -->

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
	<%@ include file="upnav.jsp"%>

	<!-- ////////////////////////////////////////////////////////////////////////////-->
	<%@ include file="sidenav.jsp"%>


	<div class="app-content content">
		<div class="content-wrapper">
			<!-- <div class="content-wrapper-before"></div> -->
			<div class="content-header row"></div>
			<div class="content-body">
				<!-- Chart -->
				<div class="row match-height">
					<div class="col-12">
						<!--/ eCommerce statistic -->

						<!-- Statistics -->
						<form name="form1">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h1 class="card-title">Request for Doctor</h1>
										<a class="heading-elements-toggle"><i
											class="la la-ellipsis-v font-medium-3"></i></a>
										<div class="heading-elements">
											<ul class="list-inline mb-0">
												<li><a data-action="collapse"><i class="ft-minus"></i></a></li>
												<li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
												<li><a data-action="expand"><i class="ft-maximize"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="card-content collapse show">
										<div class="card-body">
											<p></p>
										</div>
										<div class="table-responsive">
											<table class="table">
												<thead class="thead-dark">
													<tr>
														<th scope="col">User Name</th>
														<th scope="col">Reg. Year</th>
														<th scope="col">Reg. No</th>

														<th scope="col">Medical Council</th>
														<th scope="col"></th>
														<th scope="col"></th>
													</tr>
												</thead>
												<tbody>
													<%
													DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
													String mysqlUrl = "jdbc:sqlserver://127.0.0.1;databaseName=DoctorManagementDB";
													try {
														Connection con = DriverManager.getConnection(mysqlUrl, "sa", "Sysadm123");
														System.out.println("Connection established......");
														Statement stmt = con.createStatement();
														//Retrieving data
														ResultSet rs = stmt.executeQuery("EXECUTE [SP_DM_DOC_REQUEST]");
														while (rs.next()) {
													%>
													<tr>
														<td><%=rs.getString("UserName")%></td>
														<td><%=rs.getString("Date of reg.")%></td>
														<td><%=rs.getString("Registration No.")%></td>

														<td><%=rs.getString("State Council")%></td>
														<td><a
															href="https://www.nmc.org.in/information-desk/indian-medical-register"
															target="_blank" rel="noopener noreferrer"><input
																type="button" class="btn btn-icon btn-info mr-1"
																value="verify"
																onclick="verify(<%=rs.getString("Registration No.")%>)"></a></td>
														<td>
															<div class="btn-toolbar" role="toolbar"
																aria-label="Toolbar with button groups">
																<div class="btn-group" role="group"
																	aria-label="Third group">
																	<button type="button" class="btn btn-danger" onclick="approve('<%=rs.getString("ID")%>',2)"><i class="la la-close"></i></button>
																	<button type="button" class="btn btn-success" onclick="approve('<%=rs.getString("ID")%>',1)"><i class="la la-check"></i></button>
																</div>
															</div>
														</td>
													</tr>
													<%
													}
													} catch (SQLException e) {
													e.printStackTrace();
													}
													%>
												</tbody>
											</table>
										</div>
									</div>

								</div>
							</div>
						</div>
                      </form>
                      
                      <form name="form2">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h1 class="card-title">Available Users</h1>
										<a class="heading-elements-toggle"><i
											class="la la-ellipsis-v font-medium-3"></i></a>
										<div class="heading-elements">
											<ul class="list-inline mb-0">
												<li><a data-action="collapse"><i class="ft-minus"></i></a></li>
												<li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
												<li><a data-action="expand"><i class="ft-maximize"></i></a></li>
											</ul>
										</div>
									</div>
									<div class="card-content collapse show">
										<div class="card-body">
											<p></p>
										</div>
										<div class="table-responsive">
											<table class="table">
												<thead class="thead-dark">
													<tr>
														<th scope="col">User Name</th>
														<th scope="col">Full Name</th>
														<th scope="col">Email</th>
														<th scope="col">Phone Number</th>
														<!-- 												<th scope="col">Speciality</th>
												<th scope="col">Chamber Location</th> -->
														<th scope="col"></th>
													</tr>
												</thead>
												<tbody>
													<%
													DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
													String mysqlUrl1 = "jdbc:sqlserver://127.0.0.1;databaseName=DoctorManagementDB";
													try {
														Connection con = DriverManager.getConnection(mysqlUrl1, "sa", "Sysadm123");
														System.out.println("Connection established......");
														Statement stmt = con.createStatement();
														//Retrieving data
														ResultSet rs1 = stmt.executeQuery("EXECUTE [SP_DM_Get_User]");
														while (rs1.next()) {
													%>
													<tr>
														<td><%=rs1.getString("UserName")%></td>
														<td><%=rs1.getString("FullName")%></td>
														<td><%=rs1.getString("Email")%></td>
														<td><%=rs1.getString("Phone")%></td>
														<td><a
															href="ViewDoctor.jsp?Userid=<%=rs1.getString("ID")%>"><input
																type="button" class="btn btn-icon btn-info mr-1"
																value="View"></a></td>
													</tr>
													<%
													}
													} catch (SQLException e) {
													e.printStackTrace();
													}
													%>
												</tbody>

											</table>
										</div>
									</div>

								</div>
							</div>
						</div>
						</form>
						<!--/ Statistics -->
					</div>
				</div>
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
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script src="jquery.copy-to-clipboard.js"></script>
	<script src="theme-assets/js/scripts/pages/dashboard-lite.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL JS-->

</body>