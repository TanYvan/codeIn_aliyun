package cn.com.zc.web;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.AttachmentIn;
import cn.com.zc.jrdbModel.CaseAttIn;
import cn.com.zc.model.Attachment;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.AttachmentService;
import cn.com.zc.util.MD5;
import cn.com.zc.util.ReadProperties;

public class FileProvideAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String fileName;
	private String contentType;
	private InputStream downLoadFile;
	private int id;
	private AttachmentService attachmentService;
	private AttachmentConfigService  attachmentConfigService;
	private String stamp;
	private String sign_msg;
	private String file_path;
	private String category;
	
	public void setCategory(String category) {
		this.category = category;
	}

	public String getCategory() {
		return category;
	}
	
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}

	public String getFile_path() {
		return file_path;
	}
	
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
	
	public void setId(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
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
	
	public AttachmentService getAttachmentService() {
		return attachmentService;
	}
	
	public void setAttachmentService(AttachmentService attachmentService) {
		this.attachmentService = attachmentService;
	}
	
	public AttachmentConfigService getAttachmentConfigService() {
		return attachmentConfigService;
	}

	public void setAttachmentConfigService(AttachmentConfigService attachmentConfigService) {
		this.attachmentConfigService = attachmentConfigService;
	}

	private Boolean stamp_do() throws ParseException {
		MD5 getMD5 = new MD5();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
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
		String sign_msg_2 = getMD5.GetMD5Code(file_path + stamp + ReadProperties.getString("key"));
		if (sign_msg.equals(sign_msg_2)){
			return true;
			
		}else{
			return false;
		}
	}
	
	public String fileDown() throws Exception {
		if (stamp_do()){
				contentType = "text/plain";
				fileName = "att";
				Object[] value= {category,file_path};
				List<Attachment> attachments = attachmentService.findAttachmentList(" and category=? and ext_file_path=?", value);
				if (attachments.size()>0){
					try {
						Attachment attachment = attachments.get(0);
						contentType = attachment.getContentType();
						fileName = attachment.getFileName();
						attachmentConfigService.initAttachmentConfig();
						downLoadFile =  new FileInputStream(App.attachmentConfig.get(category) + file_path);
					} catch (FileNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}else{
					ReqPacket req3 = new ReqPacket();
					req3.setFrom("attachment");
					List<String> conditions3 =  new ArrayList<String>();
					conditions3.add("category=? and ext_file_path=?");
					conditions3.add(category);
					conditions3.add(file_path);
					req3.setConditions(conditions3);
					JrDbHelp jr3 = new JrDbHelp();
					ResPacket  rp3=jr3.find_all(req3);
					if (rp3.getStatus().equals("1")){
						List<AttachmentIn> attList = new AttachmentIn().getObjects(rp3);
						try {
							contentType = attList.get(0).getContent_type();
							fileName = attList.get(0).getFile_name();
							attachmentConfigService.initAttachmentConfig();
							downLoadFile =  new FileInputStream(App.attachmentConfig.get(category) + file_path);
						} catch (FileNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
				
				
				return SUCCESS;
		}else{
			return "fail";
		}
	}
	
}
