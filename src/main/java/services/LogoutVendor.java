package services;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/logoutVendor")
public class LogoutVendor extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException 
	{   HttpSession session=req.getSession();
		
		if(session.getAttribute("Vendor")!=null)
		{
			session.removeAttribute("Vendor");	
			res.sendRedirect("index.jsp");
		}
			
	   
		
	}

}

