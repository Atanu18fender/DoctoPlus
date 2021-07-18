package demoAppServlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AddServlet extends HttpServlet {
//   public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
//	   int i=Integer.parseInt(req.getParameter("num1"));
//	   int j=Integer.parseInt(req.getParameter("num2"));
//	   
//	   int k=i+j;
//	   
//	   // Using Session
//	   HttpSession session=req.getSession();
//	   session.setAttribute("k",k);
//	   
//	   res.sendRedirect("sq");
//	   
//	   //Redirect
////	   res.sendRedirect("sq?k="+k);
//	   // Req Dispatcher or Redirect
//	   
////	   req.setAttribute("k", k);
////	   RequestDispatcher rd=req.getRequestDispatcher("sq");
////	   rd.forward(req,res);
//   }
//   
   public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
	   int i=Integer.parseInt(req.getParameter("num1"));
	   int j=Integer.parseInt(req.getParameter("num2"));
	   
	   int k=i+j;
	   PrintWriter out=res.getWriter();
	   out.println("result is "+k);
   }
}