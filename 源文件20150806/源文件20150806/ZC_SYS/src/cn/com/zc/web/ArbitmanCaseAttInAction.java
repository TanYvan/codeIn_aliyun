package cn.com.zc.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import cn.com.zc.common.App;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.CaseAttIn;
import cn.com.zc.jrdbModel.AttachmentIn;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.Remind;
import cn.com.zc.model.Downlog;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.DownlogService;
import cn.com.zc.util.FileUpload;

public class ArbitmanCaseAttInAction extends BaseAction {
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
	private String recevice_code;
	private List<CaseIn> caseInList;
	private DownlogService downlogService;
	
	public DownlogService getDownlogService() {
		return downlogService;
	}

	public void setDownlogService(DownlogService DownlogService) {
		this.downlogService = DownlogService;
	}
	
	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}
	
	public List<CaseIn> getCaseInList() {
		return caseInList;
	}

	public void setCaseInList(List<CaseIn> caseInList) {
		this.caseInList = caseInList;
	}
	
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

	private Boolean checkCaseArbitman (String code) throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_cases,tb_casearbitmen");
		req.setSelect("tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.clerk as clerk");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("tb_casearbitmen.recevice_code=? and tb_casearbitmen.arbitman=? and tb_casearbitmen.used='Y' and tb_cases.recevice_code=tb_casearbitmen.recevice_code and tb_cases.used='Y' and tb_cases.state>=4");
		conditions.add(code);
		conditions.add(session.get("userCode").toString());
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		List<CaseIn> caseInList = new CaseIn().getObjects(rp);
		if (caseInList.size()>0){
			session.put("receivceCode",caseInList.get(0).getRecevice_code());
			session.put("caseCode",caseInList.get(0).getCase_code());
			session.put("caseClerk",caseInList.get(0).getClerk());
			return true;
		}else{
			return false;
		}
	}
	
	public String findArbitmanCaseAttInList() throws Exception {
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		if (recevice_code == null){
			recevice_code = session.get("receviceCode").toString();
		}
		
		if (session.get("userType").toString().equals("arbitman") && checkCaseArbitman(recevice_code)){
			session.put("receviceCode", recevice_code);
		}else{
			return "fail";
		}
		
		if (session.get("userType").toString().equals("arbitman") && session.get("receviceCode") != null ){
			
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases,users");
			req2.setSelect("tb_cases.caseendbook_id_first as caseendbook_id_first,tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.accepttime as accepttime,tb_cases.case_code as case_code,tb_cases.aribitprog_num as aribitprog_num,tb_cases.clerk as clerk,users.name as clerk_name,tb_cases.state as state,tb_cases.finally_limit_dat as finally_limit_dat,fun_partyinfo_1(tb_cases.recevice_code) as partyinfo_1,fun_partyinfo_2(tb_cases.recevice_code) as partyinfo_2");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y' and tb_cases.clerk=users.code");
			conditions2.add(session.get("receviceCode").toString());
			req2.setConditions(conditions2);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			caseInList = new CaseIn().getObjects(rp2);
			
			ReqPacket req = new ReqPacket();
			req.setFrom("case_att");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("recevice_code=? and (category='arbitman' or category='party') and used='Y'");
			conditions.add(session.get("receviceCode").toString());
			req.setConditions(conditions);
			req.setOrder(" id  desc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			List<CaseAttIn> caseAttInList = new CaseAttIn().getObjects(rp);
			
			String con = "1=2";
			for(int i = 0; i < caseAttInList.size(); i++)  
	        {  
	        	con = con + " or id=? ";  
	        }  
			
			req= new ReqPacket();
			req.setFrom("attachment");
			conditions =  new ArrayList<String>();
			conditions.add(con);
	        for(int i = 0; i < caseAttInList.size(); i++)  
	        {  
	        	conditions.add(caseAttInList.get(i).getAtt_id().toString());
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
	
	public String toInsertArbitmanCaseAttIn() {
		baseDicList = getBaseDicList();
		return SUCCESS;
	}
	
	public String insertArbitmanCaseAttIn() throws Exception {
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		if (session.get("userType").toString().equals("arbitman") && session.get("receviceCode") != null &&checkCaseArbitman(session.get("receviceCode").toString())){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			FileUpload fileUpload = new FileUpload();
			baseDicMap=this.getBaseDicMap();
			if (baseDicMap.get("9103").get(attachmentIn.getCategory())==null)
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
			attachmentIn.setDescription("[仲裁员 " +session.get("userName") + " 上传]");
			
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
						CaseAttIn arbAtt = new CaseAttIn();
						arbAtt.setRecevice_code(session.get("receviceCode").toString());
						arbAtt.setCategory("arbitman");
						arbAtt.setU_typ(session.get("userType").toString());
						arbAtt.setU(session.get("userCode").toString());
						arbAtt.setAtt_id(attList.get(0).getId());
						arbAtt.setUsed("Y");
						arbAtt.setU_t(dateFormat1.format(new Date()));
						req = arbAtt.toReqPacketForCreate();
						req.setFrom("case_att");
						jr = new JrDbHelp();
						rp = jr.create(req);
						if (rp.getStatus().equals("1")){
							Remind rem= new Remind();
				            rem.setUsed("Y");
				            rem.setReason_id("extranet_arbitman_case_att_" + arbAtt.getAtt_id() );
				            rem.setContents(session.get("caseCode").toString() + "号案件仲裁员提交案件附件，请检查。");
				            rem.setDt1(dateFormat1.format(new Date()));
				            rem.setUu(session.get("caseClerk").toString());
				            rem.setState("1");
				            rem.setTyp("0001");
				            rem.setU("system");
				            java.text.DateFormat dateFormat2 = new java.text.SimpleDateFormat("yyyy-MM-dd");
				            rem.setU_t(dateFormat2.format(new Date()));
							ReqPacket req_1= new ReqPacket();
							req_1 =rem.toReqPacketForCreate();
							req_1.setFrom("reminds");
							JrDbHelp jr_1 = new JrDbHelp();
							ResPacket rp_1=jr_1.create(req_1);
							
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
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		if (session.get("userType").toString().equals("arbitman") && session.get("receviceCode") != null && checkCaseArbitman(session.get("receviceCode").toString())){
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
					req.setFrom("case_att");
					conditions =  new ArrayList<String>();
					conditions.add("att_id=? and used='Y'");
					conditions.add(attList.get(0).getId());
					req.setConditions(conditions);
					jr = new JrDbHelp();
					rp=jr.find_all(req);
					List<CaseAttIn> caseAtt = new CaseAttIn().getObjects(rp);
					if (caseAtt.size() == 0){
						return "fail";
					}
					else{
						if (session.get("receviceCode") != null )
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
							
							Downlog downlog = new Downlog();
							downlog.setUserType(session.get("userType").toString());
							downlog.setUserCode(session.get("userCode").toString());
							downlog.setIp(this.getIpAddr());
							java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
							downlog.setDownTime(dateFormat1.format(new Date()));
							baseDicMap=this.getBaseDicMap();
							if (baseDicMap.get("9103").get(attachmentIn.getCategory())==null){
								downlog.setDownType("案件附件 " + baseDicMap.get("9105").get(attachmentIn.getCategory()));
							}else{
								downlog.setDownType("案件附件 " + baseDicMap.get("9103").get(attachmentIn.getCategory()));
							}
							downlog.setFileName(attachmentIn.getFile_name());
							downlog.setDescription("该文件 " + attachmentIn.getUp_time() + "上传," + attachmentIn.getDescription());
							downlog.setUrl(String.valueOf(id));
							downlogService.insertDownlog(downlog);
							
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

