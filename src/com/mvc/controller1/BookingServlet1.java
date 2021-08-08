package com.mvc.controller1;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.mvc.bean1.BookingBean1;
import com.mvc.dao1.BookingDao1;
 
public class BookingServlet1 extends HttpServlet{
 
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public BookingServlet1() {	
     }
 
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
    	 String DoctorID=request.getParameter("DocID").trim();
    	 String PatientID=request.getParameter("PatientID").trim();
         String FullName = request.getParameter("q4_fullName4").trim();
         String Sex = request.getParameter("q22_gender").trim();
         String Age = request.getParameter("q29_age").trim();
         String Email = request.getParameter("q24_emailAddress").trim();
         String Phone = request.getParameter("q43_phoneNumber[phone]").trim();
         String Description = request.getParameter("q21_description").trim();
         
         String Month = request.getParameter("q33_appointment[month]").trim();
         String Day = request.getParameter("q33_appointment[day]").trim();
         String Year = request.getParameter("q33_appointment[year]").trim();
         String Hour = request.getParameter("q42_time[hourSelect]").trim();
         String Minute = request.getParameter("q42_time[minuteSelect]").trim();
         String AM = request.getParameter("q42_time[ampm]").trim();
         String Date=Day+"/"+Month+"/"+Year;
         String Time=Hour+":"+Minute+" "+AM;
         
         BookingBean1 bookingBean = new BookingBean1();
        //Using Java Beans - An easiest way to play with group of related data
         bookingBean.setDoctorID(DoctorID);
         bookingBean.setPatientID(PatientID);
         bookingBean.setFullName(FullName);
         bookingBean.setSex(Sex);
         bookingBean.setAge(Age);
         bookingBean.setEmail(Email);
         bookingBean.setPhone(Phone);
         bookingBean.setDescription(Description);
         bookingBean.setDate(Date);
         bookingBean.setTime(Time);

         
         BookingDao1 bookingDao1 = new BookingDao1();
         
        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
         String booking = bookingDao1.bookDoc(bookingBean);
         
         if(booking.equals("SUCCESS"))   //On success, you can display a message to user on Home page
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
            request.setAttribute("errMessage", booking);
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
         }
     }
}