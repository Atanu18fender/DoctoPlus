<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mvc.util1.DBConnection1"%>
<%@page import="java.sql.PreparedStatement"%>
<link
	href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css"
	rel="stylesheet">
<%
if(request.getParameter("DocID")!=null){
	DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
	String mysqlUrl1 = "jdbc:sqlserver://127.0.0.1;databaseName=DoctorManagementDB";
	try {
		Connection con = DriverManager.getConnection(mysqlUrl1, "sa", "Sysadm123");
		System.out.println("Connection established2......");
	    System.out.println("inside Modal");
		//Retrieving data
		String DocID = request.getParameter("DocID");
		String SPsql = "EXEC SP_PM_GetDoctorByID ?"; // for stored proc taking 1 parameters
		PreparedStatement ps = con.prepareStatement(SPsql);
		ps.setEscapeProcessing(true);
		ps.setQueryTimeout(2000);
		ps.setString(1, DocID);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
	%>
	<div class="card mb-3">
						<div class="row no-gutters">
							<div class="col-lg-5 col-md-5">
								<img class="rounded-circle float-left""
									src="theme-assets/images/gallery/profile.jpg" alt="Upload Image"
							style="height: 14.0rem; width: 14.0rem; border-radius: 50%; margin-left:25%;margin-top:15%;">
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
									<h3  style="color:green;font-weigth:bold;">Fees: <i class="la la-rupee"></i><%=rs.getInt("Fees")%>/-</h3>
									<a href="#">view more</a>
								</div>
							</div>
						</div>
					</div>
	
	<%
	}
	} catch (SQLException e) {
	e.printStackTrace();
	}
}
%>