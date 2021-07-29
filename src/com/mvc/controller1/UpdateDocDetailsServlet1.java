package com.mvc.controller1;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.mvc.bean1.UpdateDocDetailsBean1;
import com.mvc.dao1.UpdateDocDetailsDao1;
 
public class UpdateDocDetailsServlet1 extends HttpServlet{
 
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public UpdateDocDetailsServlet1() {	
     }
 
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
         String DocID = request.getParameter("updateID").trim();
         String Speciality = request.getParameter("docSpeciality").trim();
         String Address = request.getParameter("Address").trim();
         String Pincode = request.getParameter("Pincode").trim();
         String Description = request.getParameter("Description").trim();
         int Fees = Integer.parseInt((request.getParameter("Fees").trim()));
         String Timing = request.getParameter("StartTiming")+"-"+request.getParameter("CloseTiming");
         String[] days = request.getParameterValues("weekdays");
         

         String day="";  /// put try catch for Unavailable doctor
         System.out.println(request);
         for(String a:days){
        	 day=day+a+" ";
         }
         day.trim();
         if(day==""){
        	 day="Unavailable";
         }
         
// 		List list = Arrays.asList(days);
// 		request.setAttribute("names", list);
// 		RequestDispatcher rd = request.getRequestDispatcher("employee.jsp");
// 		rd.forward(request, response);
 
         
         UpdateDocDetailsBean1 saveChangesBean = new UpdateDocDetailsBean1();
        //Using Java Beans - An easiest way to play with group of related data
         saveChangesBean.setSpeciality(Speciality);
         saveChangesBean.setAddress(Address);
         saveChangesBean.setPincode(Pincode);
         saveChangesBean.setDescription(Description);
         saveChangesBean.setDocID(DocID);
         saveChangesBean.setFees(Fees);
         saveChangesBean.setTiming(Timing);
         saveChangesBean.setDays(day);
         
         
         
         
         UpdateDocDetailsDao1 saveChangesDao = new UpdateDocDetailsDao1();
         
        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
         String userUpdated = saveChangesDao.updateDoctorInfo(saveChangesBean);
         
         if(userUpdated.equals("SUCCESS"))   //On success, you can display a message to user on Home page
         { 
        	PrintWriter out = response.getWriter();
        	//out.print("<script language='JavaScript'>alert('Hello');</script>");
        	 out.println("<script type=\"text/javascript\">");
             out.println("alert('User or password incorrect');");
             out.println("location='login.jsp';");
             out.println("</script>");
//            request.getRequestDispatcher("/Stream.jsp").forward(request, response);
             
             request.setAttribute("ID",DocID);
             request.getRequestDispatcher("dashboard_doctor.jsp").forward(request,response);
         }
         else   //On Failure, display a meaningful message to the User.
         {
            request.setAttribute("errMessage", userUpdated);
            request.getRequestDispatcher("/userProfile.jsp").forward(request, response);
         }
     }
}