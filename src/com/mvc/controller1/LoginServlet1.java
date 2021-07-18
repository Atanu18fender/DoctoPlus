package com.mvc.controller1;
import java.io.IOException;

import jakarta.servlet.http.HttpSession;
import java.net.URLEncoder;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.mvc.bean1.LoginBean1;
import com.mvc.dao1.LoginDao1;


public class LoginServlet1 extends HttpServlet {
private static final long serialVersionUID = 102831973239L;
 
public LoginServlet1() {
}
 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
{
    String UserName = request.getParameter("txtUserName");
    String Password = request.getParameter("txtPassWord");
//    String Role = request.getParameter("ddlUserType");
 
    LoginBean1 loginBean = new LoginBean1();
 
    loginBean.setUserName(UserName);
    loginBean.setPassword(Password);
//    loginBean.setRole(Role);
 
    LoginDao1 loginDao = new LoginDao1();
 
    try
    {
    	HttpSession session = request.getSession();
        String userValidate = loginDao.authenticateUser(loginBean);
        String[] arr=userValidate.split("\\s+");
        
        UserName=URLEncoder.encode(UserName,"UTF-8");
        String userdetails=UserName+"_"+arr[0];
        Cookie unameCookie =new Cookie("userdetails",userdetails);
        unameCookie.setMaxAge(60*60*24);
        response.addCookie(unameCookie);
        
        if(arr[1].equals("admin"))
        {
            System.out.println("Admin's Home");
 
             //Creating a session
            session.setAttribute("adminName", UserName); //setting session attribute
            request.setAttribute("userName", UserName);
            request.setAttribute("ID", arr[0]);
          
 
            request.getRequestDispatcher("dashboard.jsp").forward(request,response);
        }else if(arr[1].equals("user")) {
        	System.out.println("User's home");
        	
            //Creating a session
            session.setAttribute("userName", UserName); //setting session attribute
            request.setAttribute("userName", UserName);
            request.setAttribute("ID", arr[0]);
            
         
 
            request.getRequestDispatcher("dashboard_user.jsp").forward(request,response);
        }
        else
        {
            System.out.println("Error message = "+userValidate);
            request.setAttribute("errMessage", userValidate);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
    catch (IOException e1)
    {
        e1.printStackTrace();
    }
    catch (Exception e2)
    {
        e2.printStackTrace();
    }
} //End of doPost()
}