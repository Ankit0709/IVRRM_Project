package services;
import java.io.File;

import org.apache.commons.fileupload.FileItem;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class UploadObject 
{
	private static AmazonS3 s3 = new AmazonS3Client();
	private static Region usWest2 = Region.getRegion(Regions.AP_SOUTH_1);


	private static String bucketName = "ivrrm2";
	private static String key = "MyObjectKey2";
	

  
    public static String uploadFileToAWS(FileItem item) {
    	 File file= new File(item.getName());	
    	 System.out.println("Uploading a new object to S3 from a file\n");
         s3.putObject(new PutObjectRequest(bucketName,item.getName(),file).withCannedAcl(CannedAccessControlList.PublicRead));
         
       // s3.putObject(new PutObjectRequest(bucketName, item.getName(), new File("somePath/someKey.jpg")).withCannedAcl(CannedAccessControlList.PublicRead))
         return s3.getUrl(bucketName, item.getName()).toString();
         
    	
    	
    }
}

