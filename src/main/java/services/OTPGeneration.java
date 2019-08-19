package services;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/otpgenerate")
public class OTPGeneration extends HttpServlet
{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException 
	{	
		String mobile=req.getParameter("mobile");
		
		Random r=new Random();
	    int otp = 0;
		try 
		{				
			// Construct data
		    otp=100000+(int)(r.nextFloat()*899900);
						
				
			String apiKey = "apikey=" + "d00SFR9iW5Y-bJ5G6LBUuZcCA45mjauoMHTrwkfOvg";
			String message = "&message=" + "Your OTP is "+otp+".This OTP will be active for 5 minutes.Do not Share it With anyone.";
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + mobile;
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			req.getSession().setAttribute("otp",otp);
			System.out.println("OTP generated");
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			
		}
	}
	
		
}


