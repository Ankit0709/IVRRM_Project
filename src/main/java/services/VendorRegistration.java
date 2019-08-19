package services;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hibernate.Session;

import beans.User;
import beans.Vendor;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import com.amazonaws.services.s3.transfer.Upload;

@WebServlet("/vendorRegister")
public class VendorRegistration extends HttpServlet
{  
	
	
	public void service(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException 
	{ 
	Session session=HibernateSessionProvider.getSession();
		String name ="",email="",mobile="",password="",
	shopname="",shopAddress="",city="",market="",bankaccount="",pincode="";
		
		 if(ServletFileUpload.isMultipartContent(req))
			{ 
				
				ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());
					
				List<FileItem> listOfItems;
				try 
				{
								
					listOfItems = upload.parseRequest(req);
					String[] str =new String[14];
					
					File file = null;
					String file_path="";
					int i=0;
					for(FileItem item : listOfItems)
					{
						if(item.isFormField())
						{
							// fetch the data associated with text-field
							byte[] array = item.get();
							// convert array of byte to string
							str[i] = new String(array);
							i++;
							name=str[0];
							name.replace(" ","");
						}
						
						else
						{  
//							String folderPath=getServletContext().getRealPath("/")+"my-files\\"+name;
//							file = new File(folderPath);
//							
//						
//							file.mkdir();
//											
//							
//							FileOutputStream fo = new FileOutputStream
//								(file.getPath()+"\\"+item.getName());
//							
//							fo.write(item.get());
//							 file_path=name+"/"+item.getName();
//						
//						     fo.close();
						
							 file_path=UploadObject.uploadFileToAWS(item);
						     
						}
						
					        
					}
					name=str[0]+" "+str[1]+" "+ str[2];
					int j=3;
					mobile=str[j++];
					email=str[j++];
				    password=str[j++];
					j=j+1;
					shopname=str[j++];
					shopAddress=str[j++];
					pincode = str[j++];
					city=str[j++];
					market=str[j++];
					
					bankaccount=str[j++];
					int m=1010;
					String cust_id="VEN"+name.substring(0,3)+(++m);
					
					Vendor vendor=new Vendor(cust_id,email, name, password, mobile, shopname, shopAddress,pincode, city, market, bankaccount,file_path);
					vendor.setVerified("No"); 
					session.save(vendor);
					 session.beginTransaction().commit();
					 req.getSession().setAttribute("mobile",mobile);
					 req.getSession().setAttribute("vendor",vendor);
				
					 res.sendRedirect("otp.jsp");
			   }
				catch (FileUploadException e)
				{
					session.close();
					res.sendRedirect("vendor_registration.jsp");
				}
			}
				
				else
				{
				 session.close();
				 res.sendRedirect("vendor_registration.jsp");
				}
		 
		 
		 
		
	
	}

}
