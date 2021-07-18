package com.mvc.controller1;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.mvc.bean1.SignUpBean1;
import com.mvc.dao1.SignUpDao1;

 
public class SignUpServlet1 extends HttpServlet{
 
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public SignUpServlet1() {	
     }
 
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables
         String UserName = request.getParameter("txtNewUserName").trim();
         String Password = request.getParameter("txtNewPassword").trim();
         
         SignUpBean1 signUpBean = new SignUpBean1();
        //Using Java Beans - An easiest way to play with group of related data
         signUpBean.setUserName(UserName);
         signUpBean.setPassword(Password);
         
         SignUpDao1 signUpDao = new SignUpDao1();
         
        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
         String userAdded = signUpDao.addUser(signUpBean);
         
         if(userAdded.equals("SUCCESS"))   //On success, you can display a message to user on Home page
         { 
        	PrintWriter out = response.getWriter();
        	//out.print("<script language='JavaScript'>alert('Hello');</script>");
        	 out.println("<script type=\"text/javascript\">");
             out.println("alert('User or password incorrect');");
             out.println("location='login.jsp';");
             out.println("</script>");
//            request.getRequestDispatcher("/Stream.jsp").forward(request, response);
             response.sendRedirect("login.jsp");
         }
         else   //On Failure, display a meaningful message to the User.
         {
            request.setAttribute("errMessage", userAdded);
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
         }
     }
}