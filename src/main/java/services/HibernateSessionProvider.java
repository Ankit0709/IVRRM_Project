package services;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class HibernateSessionProvider 
{
	public static Session getSession()
	{
		Configuration cfg=new Configuration();
		// Read RDS connection information from the environment
//		  String dbName = System.getProperty("RDS_DB_NAME");
//		  String userName = System.getProperty("RDS_USERNAME");
//		  String password = System.getProperty("RDS_PASSWORD");
//		  String hostname = System.getProperty("RDS_HOSTNAME");
//		  String port = System.getProperty("RDS_PORT");
//		  String jdbcUrl = "jdbc:mysql://" + hostname + ":" +
//		    port + "/" + dbName + "?user=" + userName + "&password=" + password;
		cfg.setProperty("hibernate.connection.url","jdbc:mysql://localhost:3306/ivrrm");
		cfg.setProperty("hibernate.connection.username","root");
		cfg.setProperty("hibernate.connection.password","ankit");
		return cfg.addResource("ivrrm.hbm.xml").buildSessionFactory().openSession();
	}

}
