package cn.com.zc.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.struts2.ServletActionContext;

import cn.com.zc.common.App;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanAttIn;
import cn.com.zc.jrdbModel.AttachmentIn;
import cn.com.zc.model.ArbitmanAtt;
import cn.com.zc.model.Attachment;
import cn.com.zc.model.Dictionary;
import cn.com.zc.service.facade.ArbitmanAttService;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.AttachmentService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.util.FileUpload;

public class ArbitmanAttInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private AttachmentIn attachmentIn;
	private List<AttachmentIn> attachmentInList;
	
	private File upload;
	private String uploadFileName;
	private String uploadContentType;
	private InputStream downLoadFile;
	private String fileName;
	private AttachmentConfigService  attachmentConfigService;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}	
	
	public AttachmentIn getAttachmentIn() {
		return attachmentIn;
	}

	public void setAttachmentIn(AttachmentIn attachmentIn) {
		this.attachmentIn = attachmentIn;
	}
	
	public List<AttachmentIn> getAttachmentInList() {
		return attachmentInList;
	}

	public void setAttachmentInList(List<AttachmentIn> attachmentInList) {
		this.attachmentInList = attachmentInList;
	}
	
	public AttachmentConfigService getAttachmentConfigService() {
		return attachmentConfigService;
	}

	public void setAttachmentConfigService(AttachmentConfigService attachmentConfigService) {
		this.attachmentConfigService = attachmentConfigService;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}


	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}
	
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}	

	public void SetDownLoadFile( InputStream downLoadFile) {
		this.downLoadFile = downLoadFile;
	}
	public InputStream getDownLoadFile() {
		return downLoadFile;
	}

	public String findArbitmanAttInList() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req = new ReqPacket();
			req.setFrom("arbitman_att");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbitman=? and used='Y'");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder(" id  desc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			List<ArbitmanAttIn> arbitmanAttInList = new ArbitmanAttIn().getObjects(rp);
			
			String con = "1=2";
			for(int i = 0; i < arbitmanAttInList.size(); i++)  
	        {  
	        	con = con + " or id=? ";  
	        }  
			
			req= new ReqPacket();
			req.setFrom("attachment");
			conditions =  new ArrayList<String>();
			conditions.add(con);
	        for(int i = 0; i < arbitmanAttInList.size(); i++)  
	        {  
	        	conditions.add(arbitmanAttInList.get(i).getAtt_id().toString());
	        }  
	        req.setConditions(conditions);
			req.setOrder(" id  desc");
			rp = jr.find_all(req);
			attachmentInList = new AttachmentIn().getObjects(rp);
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String toInsertArbitmanAttIn() {
		baseDicList = getBaseDicList();
		return SUCCESS;
	}
	
	public String insertArbitmanAttIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			FileUpload fileUpload = new FileUpload();
			baseDicMap=this.getBaseDicMap();
			if (baseDicMap.get("9101").get(attachmentIn.getCategory())==null)
			{
				return "fail";	
			}
			attachmentConfigService.initAttachmentConfig();
			String lPath = fileUpload.logicPath(App.attachmentConfig.get(attachmentIn.getCategory())); //创建并获取逻辑路径
			String realPath = App.attachmentConfig.get(attachmentIn.getCategory()) + lPath; //真实路径
			
			String t = UUID.randomUUID().toString();
			String fileName = t;
			if (!fileUpload.getExtName(uploadFileName).equals(""))
			{
				fileName = t + "." + fileUpload.getExtName(uploadFileName);
			}
			try {
				fileUpload.uploadFile(upload, realPath, fileName);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "fail";
			}
			attachmentIn.setGuid(t);
			attachmentIn.setFile_name(uploadFileName);
			attachmentIn.setContent_type(uploadContentType);
			attachmentIn.setUp_time(dateFormat1.format(new Date()));
			attachmentIn.setExt_file_url(lPath + "/" + fileName);
			attachmentIn.setExt_file_path(lPath + "/" + fileName);
			ReqPacket req = attachmentIn.toReqPacketForCreate();
			req.setFrom("attachment");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.create(req);
			if (rp.getStatus().equals("1")){
				req = new ReqPacket();
				req.setFrom("attachment");
				List<String> conditions =  new ArrayList<String>();
				conditions.add("guid=?");
				conditions.add(attachmentIn.getGuid());
				req.setConditions(conditions);
				jr = new JrDbHelp();
				rp = jr.find_all(req);
				if (rp.getStatus().equals("1")){
					List<AttachmentIn> attList = new AttachmentIn().getObjects(rp);
					if (attList.size() == 0){
						return "fail";
					}
					else{
						ArbitmanAttIn arbAtt = new ArbitmanAttIn();
						arbAtt.setArbitman(session.get("userCode").toString());
						arbAtt.setAtt_id(attList.get(0).getId());
						arbAtt.setUsed("Y");
						arbAtt.setU_t(dateFormat1.format(new Date()));
						req = arbAtt.toReqPacketForCreate();
						req.setFrom("arbitman_att");
						jr = new JrDbHelp();
						rp = jr.create(req);
						if (rp.getStatus().equals("1")){
							return SUCCESS;	
						}else{
							return "fail";
						}
					}
				}
				else{
					return "fail";
				}
				
			}
			else{
				return "fail";
			}
		}
		else{
			return "fail";
		}
	}

	public String downFile() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req = new ReqPacket();
			req.setFrom("attachment");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket rp=jr.find_all(req);
			if (rp.getStatus().equals("1")){
				List<AttachmentIn> attList =  new AttachmentIn().getObjects(rp);
				if (attList.size() == 0){
					return "fail";
				}
				else{
					req = new ReqPacket();
					req.setFrom("arbitman_att");
					conditions =  new ArrayList<String>();
					conditions.add("att_id=? and used='Y'");
					conditions.add(attList.get(0).getId());
					req.setConditions(conditions);
					jr = new JrDbHelp();
					rp=jr.find_all(req);
					List<ArbitmanAttIn> arbitAtt = new ArbitmanAttIn().getObjects(rp);
					if (arbitAtt.size() == 0){
						return "fail";
					}
					else{
						if (arbitAtt.get(0).getArbitman().equals(session.get("userCode").toString()))
						{
							AttachmentIn attachmentIn = attList.get(0);
							uploadContentType = attachmentIn.getContent_type();
							uploadFileName = attachmentIn.getFile_name();
							try {
								uploadFileName = new String(uploadFileName.getBytes(),"ISO-8859-1");
							} catch (UnsupportedEncodingException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
							try {
								attachmentConfigService.initAttachmentConfig();
								downLoadFile =  new FileInputStream(App.attachmentConfig.get(attachmentIn.getCategory()) + attachmentIn.getExt_file_path());
							} catch (FileNotFoundException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							return SUCCESS;
						}
						else{
							return "fail";
						}
					}
				}
			}
			else{
				return "fail";
			}
			
		}
		else{
			return "fail";
		}
	}
}
