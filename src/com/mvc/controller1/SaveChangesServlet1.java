package com.mvc.controller1;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.mvc.bean1.SaveChangesBean1;
import com.mvc.dao1.SaveChangesDao1;;

 
public class SaveChangesServlet1 extends HttpServlet{
 
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public SaveChangesServlet1() {	
     }
 
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
         String FirstName = request.getParameter("FirstName").trim();
         String LastName = request.getParameter("LastName").trim();
         String EmailID = request.getParameter("EmailID").trim();
         String Phone = request.getParameter("PhoneNumber").trim();
         String ID = request.getParameter("updateID");
         
         SaveChangesBean1 saveChangesBean = new SaveChangesBean1();
        //Using Java Beans - An easiest way to play with group of related data
         saveChangesBean.setFirstName(FirstName);
         saveChangesBean.setLastName(LastName);
         saveChangesBean.setEmail(EmailID);
         saveChangesBean.setPhone(Phone);
         saveChangesBean.setID(ID);
         
         
         SaveChangesDao1 saveChangesDao = new SaveChangesDao1();
         
        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
         String userUpdated = saveChangesDao.updateUserInfo(saveChangesBean);
         
         if(userUpdated.equals("SUCCESS"))   //On success, you can display a message to user on Home page
         { 
        	PrintWriter out = response.getWriter();
        	//out.print("<script language='JavaScript'>alert('Hello');</script>");
        	 out.println("<script type=\"text/javascript\">");
             out.println("alert('User or password incorrect');");
             out.println("location='login.jsp';");
             out.println("</script>");
//            request.getRequestDispatcher("/Stream.jsp").forward(request, response);
             
             request.setAttribute("ID",ID);
             request.getRequestDispatcher("dashboard_user.jsp").forward(request,response);
         }
         else   //On Failure, display a meaningful message to the User.
         {
            request.setAttribute("errMessage", userUpdated);
            request.getRequestDispatcher("/userProfile.jsp").forward(request, response);
         }
     }
}