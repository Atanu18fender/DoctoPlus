package com.mvc.controller1;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogoutServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LogoutServlet1() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
			  request.setAttribute("errMessage", "You have logged out successfully");
			  Cookie cookie = new Cookie("userdetails", "");
			  cookie.setMaxAge(0);
			   response.addCookie(cookie);
			   
			  RequestDispatcher requestDispatcher =request.getRequestDispatcher("login.jsp"); 
			  requestDispatcher.forward(request,
			  response); System.out.println("Logged out");
			 
		}

	}
}