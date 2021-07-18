package com.mvc.controller1;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.mvc.util1.DBConnection1;

import java.sql.*;
@WebServlet("/DocDiscardServlet1")  
public class DocDiscardServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String ID = request.getParameter("reqID");
	
		Connection con=null;
		try {
			String SPsql = "EXEC SP_DM_CancelDoc ?";
			con = DBConnection1.createConnection();
			PreparedStatement ps = con.prepareStatement(SPsql);
			ps.setEscapeProcessing(true);
        	ps.setQueryTimeout(2000);
        	ps.setString(1,ID);
        	int i= ps.executeUpdate();     
        	if(i!=0) {
        		request.getRequestDispatcher("/DoctorDetails.jsp").forward(request, response);
        	}
		    //response.sendRedirect("Stream.jsp");
		} catch (Exception e) {
		}
	}
}