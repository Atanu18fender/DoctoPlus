package demoAppServlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class sqServlet extends HttpServlet{
	  public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
		  
//		  int k=Integer.parseInt(req.getParameter("k"));
		  
		  // Fetching data from Session
		  HttpSession session=req.getSession();
		  int k=(int)session.getAttribute("k");
		  k=k*k;
//		  int k=(int)req.getAttribute("k");
//		  
		  PrintWriter out = res.getWriter();
		  out.println("Result is :"+k);
//		  System.out.println("sq called");
	  }
}
