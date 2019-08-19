package services;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hibernate.Session;

import beans.Product;
import beans.Vendor;

@WebServlet("/addProduct")
public class addProduct extends HttpServlet 
{
	
	Session session=null;
	
	public void service(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException 
	{  
		
		Vendor vendor=(Vendor)req.getSession().getAttribute("Vendor");
	    session=HibernateSessionProvider.getSession();
	
	   if(vendor!=null)
	   {
		   String p_name ="",p_desc="",p_category="",p_image="";
			
		   float p_price;
		   
		   if(ServletFileUpload.isMultipartContent(req))
			{ 
			    DiskFileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(factory);
				List<FileItem> listOfItems;
				try 
				{
				   			
					listOfItems = upload.parseRequest(req);
					String[] str =new String[listOfItems.size()];
					File file = null;
					String pics="";
					int i=0;
					
					for(FileItem item : listOfItems)
					{
						if(item.isFormField())
						{
							
							byte[] array = item.get();
							str[i] = new String(array);
							i++;
							p_name=str[0];
							
						}
						
						else
					{ // String[] arr=vendor.getUsername().split(" ");
//						  
//							String folderPath=getServletContext().getRealPath("/")+"my-files\\"+arr[0]+"\\"+p_name;
//						 	 System.out.print("File uploaded");
//						file = new File(folderPath);
//							file.mkdir();
//						
//							FileOutputStream fo = new FileOutputStream
//								(file.getPath()+"\\"+item.getName());
//							
//							fo.write(item.get());
							 pics=UploadObject.uploadFileToAWS(item);
							 
						     
						}
								        
					}
					p_category=str[1];
					
					p_desc=str[2];
					int qty=Integer.parseInt(str[3]);
					p_price=Float.parseFloat(str[4]);
					
					
					int m=1010;
					String p_id="PRD"+p_name.substring(0,2)+m;
				
					Product p1=new Product(p_id, p_name, p_price, p_desc, p_category, pics,qty);
					
					Set<Product> set=vendor.getSetOfProducts();
					set.add(p1);
					vendor.setSetOfProducts(set);
					
					session.update(vendor);
					session.beginTransaction().commit();
					session.close();
					res.sendRedirect("addProduct.jsp");
		
				}
				catch(Exception e)
				{ session.close();
					res.sendRedirect("addProduct.jsp");
				}
	   }
		
	}
	   else
	   {
		   session.close();
		   res.sendRedirect("login.jsp");
	   }
	}
}
