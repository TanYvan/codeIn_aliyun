package cn.com.zc.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.apache.struts2.ServletActionContext;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.model.CaseAtt;
import cn.com.zc.model.Attachment;
import cn.com.zc.model.Dictionary;
import cn.com.zc.service.facade.CaseAttService;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.AttachmentService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.util.FileUpload;

public class CaseAttAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private Attachment attachment;
	private List<Attachment> attachmentList;
	private CaseAttService caseAttService;
	private AttachmentService attachmentService;
	private String error;
	
	private File upload;
	private String uploadFileName;
	private String uploadContentType;
	private InputStream downLoadFile;
	private String fileName;
	private AttachmentConfigService  attachmentConfigService;
	
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public Attachment getAttachment() {
		return attachment;
	}

	public void setAttachment(Attachment attachment) {
		this.attachment = attachment;
	}

	public List<Attachment> getAttachmentList() {
		return attachmentList;
	}

	public void setAttachmentList(List<Attachment> attachmentList) {
		this.attachmentList = attachmentList;
	}

	public AttachmentService getAttachmentService() {
		return attachmentService;
	}

	public void setCaseAttService(CaseAttService caseAttService) {
		this.caseAttService = caseAttService;
	}

	public CaseAttService getcaseAttService() {
		return caseAttService;
	}

	public void setAttachmentService(AttachmentService attachmentService) {
		this.attachmentService = attachmentService;
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
	
	
	public String toInsertCaseAtt() {
		if (session.get("applyCode").toString() != null)
			return SUCCESS;
		else{
			return "fail";
		}
	}
	
	public String insertCaseAtt() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (session.get("applyCode") != null){
			FileUpload fileUpload = new FileUpload();
			baseDicMap=this.getBaseDicMap();
			if (baseDicMap.get("9104").get(attachment.getCategory())==null)
			{
				return "fail";	
			}
			attachmentConfigService.initAttachmentConfig();
			String lPath = fileUpload.logicPath(App.attachmentConfig.get(attachment.getCategory())); //创建并获取逻辑路径
			String realPath = App.attachmentConfig.get(attachment.getCategory()) + lPath; //真实路径
			
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
			attachment.setGuid(t);
			attachment.setFileName(uploadFileName);
			attachment.setContentType(uploadContentType);
			attachment.setUpTime(dateFormat1.format(new Date()));
			attachment.setExtFilePath(lPath + "/" + fileName);
			attachment.setExtFileUrl(lPath + "/" + fileName);
			attachment.setDescription("[申请方 " +session.get("userName") + " 上传]" );
			attachmentService.insertAttachment(attachment);
			
			Object[] value = {attachment.getGuid()};
			attachment = attachmentService.findAttachmentList(" and guid=?", value).get(0);
			CaseAtt att = new CaseAtt();
			att.setAttId(attachment.getId());
			att.setStatus(0);
			att.setUsed("Y");
			att.setApplyCode(session.get("applyCode").toString());
			att.setU_typ(session.get("userType").toString());
			att.setU(session.get("userCode").toString());
			att.setUT(dateFormat1.format(new Date()));
			caseAttService.insertCaseAtt(att);
			
			error = "案件附件新建成功";
			error = this.getText("case_att.new.mes_1");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}

	public String downFile() {
		if (session.get("applyCode") != null){
			Object[] value= {id};
			List<Attachment> attachments = attachmentService.findAttachmentList(" and id=?", value);
			if (attachments.size()>0){
				attachment = attachments.get(0);
				Object[] value_2= {attachment.getId(),session.get("applyCode").toString()};
				if (caseAttService.findCaseAttList(" and att_id=? and apply_code=?", value_2, 0, 0).size()>0)
					uploadContentType = attachment.getContentType();
					uploadFileName = attachment.getFileName();
					try {
						uploadFileName = new String(uploadFileName.getBytes(),"ISO-8859-1");
					} catch (UnsupportedEncodingException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					try {
						attachmentConfigService.initAttachmentConfig();
						downLoadFile =  new FileInputStream(App.attachmentConfig.get(attachment.getCategory()) + attachment.getExtFilePath());
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
		else{
			return "fail";
		}
	}
}
