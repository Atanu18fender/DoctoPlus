<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mvc.util1.DBConnection1"%>
<%@page import="java.sql.PreparedStatement"%>

<%
if (request.getParameter("DocID") != null) {
	DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
	String mysqlUrl1 = "jdbc:sqlserver://127.0.0.1;databaseName=DoctorManagementDB";
	try {
		Connection con = DriverManager.getConnection(mysqlUrl1, "sa", "Sysadm123");
		System.out.println("Connection established1......");
		//Retrieving data
		String DocID = request.getParameter("DocID");
		String SPsql = "EXEC [SP_DM_AppointmentsOfDoc] ?"; // for stored proc taking 1 parameters
		PreparedStatement ps = con.prepareStatement(SPsql);
		ps.setEscapeProcessing(true);
		ps.setQueryTimeout(2000);
		ps.setString(1, DocID);
		ResultSet rs1 = ps.executeQuery();
		System.out.println("Inside GetPatientList");
		while (rs1.next()) {
%>

<a href="#" class="media border-0">
	<div class="media-left pr-1">
		<span class="avatar avatar-md avatar-online"> <img
			class="media-object rounded-circle"
			src="theme-assets/images/gallery/profile.jpg"
			alt="Generic placeholder image"> <i></i>
		</span>
	</div>
	<div class="media-body w-100">
		<span class="list-group-item-heading"><%=rs1.getString("Full Name")%></span>
<span style="float:right" class="badge badge-pill badge-success">Paid</span>
		<p class="list-group-item-text mb-0">
			<span class="blue-grey lighten-2 font-small-3"><%=rs1.getString("AppointmentDate")%></span>
		</p>
	</div>
</a>
<%
}
} catch (SQLException e) {
e.printStackTrace();
}
}
%>