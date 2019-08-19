package services;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import beans.Cart;
import beans.Product;

@WebServlet("/removeProduct")
public class RemoveCart extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException 
	{
		long cart_id=Long.parseLong(req.getParameter("id"));
		Session session=HibernateSessionProvider.getSession();
		session.remove(session.get(Cart.class,cart_id));
		session.beginTransaction().commit();
		session.close();
		res.sendRedirect("cart.jsp");
		
		
	}
	

}
