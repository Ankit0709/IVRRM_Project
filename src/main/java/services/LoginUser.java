package services;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.engine.transaction.jta.platform.internal.SynchronizationRegistryBasedSynchronizationStrategy;
import org.hibernate.query.Query;

import beans.User;
import beans.Vendor;
@WebServlet("/login")
public class LoginUser extends HttpServlet
{
	  
		
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException
	{
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		Session session=HibernateSessionProvider.getSession();
		
		
		Query<User> query=session.createQuery("from User where Email_ID='"+email+"'");
		
		 if(query!=null)

		 {  List<User> user=query.list();
		  for(User u:user)
		    {
			  if(u!=null)
				{
							
				
					if(u.getPassword().equals(password))
					{   req.getSession().setAttribute("User",u);
					    session.close();
						res.sendRedirect("index.jsp");
					}
					else
					{ 
						res.sendRedirect("login.jsp");
						
					}
				}
				else
				{
					
					res.sendRedirect("registration.jsp");
				}
					
				
							  
		  }
	 }
			 
		
	}
}
