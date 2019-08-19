package services;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

public class test
{
	public static void main(String[] args) {
		
		Random r=new Random();
	    int otp = 0;
		try 
		{				
			// Construct data
		    otp=100000+(int)(r.nextFloat()*899900);
						
			String apiKey = "apikey=" + "d00SFR9iW5Y-6LNKXUwy3TJlaSlY8EWgmDGBertlhT";
			String message = "&message=" + "Your OTP is "+otp;
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" +"8130673988";
			
			// Send data-
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
			
			System.out.println("OTP Generated");
			
		} catch (Exception e) {
			System.out.println("Error SMS "+e);
			
		}
		
		
	}

}
