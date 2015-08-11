package cn.com.zc.web;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;

import cn.com.zc.common.App;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.jrdbModel.AttachmentIn;
import cn.com.zc.util.MD5;
import cn.com.zc.util.ReadProperties;

public class FileDownAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String fileName;
	private String contentType;
	private InputStream downLoadFile;
	private String id;
	private String type;
	private String stamp;
	private String sign_msg;
	
	public void setStamp(String stamp) {
		this.stamp = stamp;
	}

	public String getStamp() {
		return stamp;
	}
	
	public void setSign_msg(String sign_msg) {
		this.sign_msg = sign_msg;
	}

	public String getSign_msg() {
		return sign_msg;
	}
	
	public void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
	}
	
	public void setType(String type) {
		this.type = type;
	}

	public String getType() {
		return type;
	}
	
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileName() {
		return fileName;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public String getContentType() {
		return contentType;
	}	

	public void SetDownLoadFile( InputStream downLoadFile) {
		this.downLoadFile = downLoadFile;
	}
	public InputStream getDownLoadFile() {
		return downLoadFile;
	}
	private Boolean stamp_do() throws ParseException {
		MD5 getMD5 = new MD5();
		DateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date stamp_d = df.parse(stamp);
		Date now = new Date();
		long l=now.getTime()- stamp_d.getTime();
//		long day=l/(24*60*60*1000);
//		long hour=(l/(60*60*1000)-day*24);
//		long min=((l/(60*1000))-day*24*60-hour*60);
//		long s=(l/1000-day*24*60*60-hour*60*60-min*60);
//		System.out.println(""+day+"天"+hour+"小时"+min+"分"+s+"秒");
		long sjc = l/1000;
		if (sjc<-180 || sjc>180){
			return false;
		}
		String sign_msg_2 = getMD5.GetMD5Code(String.valueOf(id) +"abc123" + stamp + ReadProperties.getString("key"));
		if (sign_msg.equals(sign_msg_2)){
			return true;
			
		}else{
			return false;
		}
	}
	
	public String swfDown() throws ParseException {
		if (stamp_do()){
			MD5 getMD5 = new MD5();
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String stamp = df.format(new Date());
			String sign_msg = getMD5.GetMD5Code(stamp + ReadProperties.getString("key"));
			
			HttpClient client = new HttpClient();
	        String url = ReadProperties.getString("defaultUrl") + "file_down/docformat_swf_down/" + id.toString();//+"?stamp=" + stamp + "&sign_msg=" + sign_msg;
			//GetMethod get = new GetMethod(url);
	        PostMethod postMethod = new PostMethod(url);
	        NameValuePair[] data = { new NameValuePair("stamp", stamp),new NameValuePair("sign_msg", sign_msg)};
	        postMethod.setRequestBody(data);
	        try {
		        client.executeMethod(postMethod);
		        if (type==null || type.equals("")){
		        	contentType = "application/octet-stream";
		        }
		        if (type!=null && type.equals("doc")){
		        	contentType = "application/msword";
		        }
		        if (type!=null && type.equals("pdf")){
		        	contentType = "application/pdf";
		        } 
		        fileName = "aaa.swf";
				try {
					downLoadFile =  postMethod.getResponseBodyAsStream();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	        } catch (HttpException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	        } catch (IOException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	        }
		}
		return SUCCESS;
	}
	
	public String caseBookDown() throws ParseException {
		try {
			if (stamp_do()){
				MD5 getMD5 = new MD5();
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String stamp = df.format(new Date());
				String sign_msg = getMD5.GetMD5Code(stamp + ReadProperties.getString("key"));
				
				HttpClient client = new HttpClient();
		        String url = ReadProperties.getString("defaultUrl") + "file_down/casedoc_down/" + id.toString();//+"?stamp=" + stamp + "&sign_msg=" + sign_msg;
				//GetMethod get = new GetMethod(url);
		        PostMethod postMethod = new PostMethod(url);
		        NameValuePair[] data = { new NameValuePair("stamp", stamp),new NameValuePair("sign_msg", sign_msg)};
		        postMethod.setRequestBody(data);
		        try {
			        client.executeMethod(postMethod);
			        if (postMethod.getStatusCode()!=200){
			        	return "file_down_fail";
			        }
			        contentType = "application/octet-stream;charset=ISO8859-1";
			        //contentType = "text/plain;charset=ISO8859-1";
			        //contentType = "application/octet-stream;charset=ISO8859-1";
			        if (fileName == null){
			        	fileName = "casedoc";
			        }
			        fileName = new String(fileName.getBytes(),"ISO8859-1"); 
					try {
						downLoadFile =  postMethod.getResponseBodyAsStream();
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		        } catch (HttpException e) {
		        // TODO Auto-generated catch block
		        e.printStackTrace();
		        } catch (IOException e) {
		        // TODO Auto-generated catch block
		        e.printStackTrace();
		        }
			}
			return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "file_down_fail";
		}
	}

}
