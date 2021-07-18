package com.mvc.controller1;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.mvc.bean1.DocRequestBean1;
import com.mvc.dao1.DocRequestDao1;
 
public class DocRequestServlet1 extends HttpServlet{
 
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public DocRequestServlet1() {	
     }
 
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
         String ID = request.getParameter("ID").trim();
         String UserName = request.getParameter("UserName").trim();
         String FirstName = request.getParameter("first_name").trim();
         String LastName = request.getParameter("last_name").trim();
         String RegNo = request.getParameter("Reg_number").trim();
         String dateReg = request.getParameter("date").trim();
         String uprn = request.getParameter("uprn").trim();
         String stateCouncil = request.getParameter("stateCouncil").trim();
         
         DocRequestBean1 docRequestBean = new DocRequestBean1();
        //Using Java Beans - An easiest way to play with group of related data
         docRequestBean.setID(ID);
         docRequestBean.setUserName(UserName);
         docRequestBean.setFirstName(FirstName);
         docRequestBean.setLastName(LastName);
         docRequestBean.setRegistration(RegNo);
         docRequestBean.setRegDate(dateReg);
         docRequestBean.setUPRN(uprn);
         docRequestBean.setStateCouncil(stateCouncil);

         
         DocRequestDao1 docRequestDao = new DocRequestDao1();
         
        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
         String userAdded = docRequestDao.grantRequest(docRequestBean);
         
         if(userAdded.equals("SUCCESS"))   //On success, you can display a message to user on Home page
         { 
        	PrintWriter out = response.getWriter();
        	//out.print("<script language='JavaScript'>alert('Hello');</script>");
        	 out.println("<script type=\"text/javascript\">");
             out.println("alert('User or password incorrect');");
             out.println("location='dashborad_user.jsp';");
             out.println("</script>");
            request.getRequestDispatcher("/dashboard_user.jsp").forward(request, response);
				/* response.sendRedirect("dashboard_user.jsp"); */
         }
         else   //On Failure, display a meaningful message to the User.
         {
            request.setAttribute("errMessage", userAdded);
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
         }
     }
}