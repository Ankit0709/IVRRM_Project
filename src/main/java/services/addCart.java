package services;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;

import beans.Cart;
import beans.Product;
import beans.User;

@WebServlet("/addCart")
public class addCart extends HttpServlet 
{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) 
	throws ServletException, IOException
	{
		
		if(req.getSession().getAttribute("User")==null)
			res.sendRedirect("login.jsp");
		else
		{
			Session session=HibernateSessionProvider.getSession();
			String p_id=req.getParameter("p_id");
							 
			 User user=(User) req.getSession().getAttribute("User");
			Cart cart=new Cart(p_id,user.getUser_id());
			session.save(cart);
			session.beginTransaction().commit();
			session.close();
			session.getSessionFactory().close();
			res.sendRedirect("cart.jsp");
			
		}
		
		
		
	}
	
}
