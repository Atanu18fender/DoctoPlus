<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mvc.util1.DBConnection1"%>
<%@page import="java.sql.PreparedStatement"%>

<%
if(request.getParameter("BookID")!=null){
	DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
	String mysqlUrl1 = "jdbc:sqlserver://127.0.0.1;databaseName=DoctorManagementDB";
	try {
		Connection con = DriverManager.getConnection(mysqlUrl1, "sa", "Sysadm123");
		System.out.println("Connection established2......");
	    System.out.println("inside Modal");
		//Retrieving data
		String BookID = request.getParameter("BookID");
		String SPsql = "EXEC [SP_DM_ViewBookingDetails] ?"; // for stored proc taking 1 parameters
		PreparedStatement ps = con.prepareStatement(SPsql);
		ps.setEscapeProcessing(true);
		ps.setQueryTimeout(2000);
		ps.setString(1, BookID);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
	%>
	<%-- <tr>
		<td><%=rs1.getString("Full Name")%></td>
		<td><%=rs1.getString("Gender")%></td>
		<td><%=rs1.getString("AppointmentDate")%></td>
		<td><%=rs1.getString("PhoneNo")%></td>
		<td>Paid</td>
		<td><a type="button" class="btn btn-primary" data-toggle="modal"
			id="<%=rs1.getString("BookingID")%>" data-target="#exampleModal">View</a></td>
	</tr> --%>
	<table class="table table-striped">
	<tr>
	
	<th>Patient Name</th>
	
	<td><%=rs.getString("Full Name")%></td>
	
	</tr>
	<tr>
	
	<th>Appointment Date</th> 
	<td><%=rs.getString("AppointmentDate")%></td>
	
	</tr>
	
	<tr>
	
	<th>Booked By</th>
	
	<td><%=rs.getString("UserName")%></td>
	
	</tr>
	
	<tr>
	
	<th>Description</th>
	
	<td><%=rs.getString("Description")%></td>
	
	</tr>
	
	</table>
	
	<%
	}
	} catch (SQLException e) {
	e.printStackTrace();
	}
}
%>