package cn.com.zc.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import cn.com.zc.common.App;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.CaseAttIn;
import cn.com.zc.jrdbModel.AttachmentIn;
import cn.com.zc.jrdbModel.CaseAttTimeManager;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CaseWUser;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.Remind;
import cn.com.zc.jrdbModel.RemindIn;
import cn.com.zc.model.Downlog;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.DownlogService;
import cn.com.zc.util.FileUpload;

public class PartyCaseAttInAction extends BaseAction {
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
	private HashMap<String,String> attTyp; 
	
	public HashMap<String,String> getAttTyp() {
		return attTyp;
	}

	public void setAttTyp(HashMap<String,String> attTyp) {
		this.attTyp = attTyp;
	}
	
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

	private Boolean checkCaseParty (String code) throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_cases,case_w_user");
		req.setSelect("case_w_user.user_type as user_type,tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.clerk as clerk");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("tb_cases.recevice_code=? and case_w_user.user_code=? and tb_cases.recevice_code=case_w_user.recevice_code and tb_cases.used='Y' and case_w_user.used='Y' and tb_cases.state>=4");
		conditions.add(code);
		conditions.add(session.get("userCode").toString());
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		List<CaseWUser> caseList = new CaseWUser().getObjects(rp);
		if (caseList.size()>0){
			session.put("partyCategory",caseList.get(0).getUser_type());
			session.put("receivceCode",caseList.get(0).getRecevice_code());
			session.put("caseCode",caseList.get(0).getCase_code());
			session.put("caseClerk",caseList.get(0).getClerk());
			return true;
		}else{
			return false;
		}
	}
	
	public String list() throws Exception {
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		if (recevice_code == null){
			recevice_code = session.get("receviceCode").toString();
		}
		
		if (session.get("userType").toString().equals("party") && checkCaseParty(recevice_code)){
			session.put("receviceCode", recevice_code);
		}else{
			return "fail";
		}
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null ){
			
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
			conditions.add("recevice_code=? and category='party' and used='Y'");
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
	
	public String toInsert() throws Exception {
		baseDicList = getBaseDicList();
		attTyp = putAttTyp(session.get("receviceCode").toString());
		return SUCCESS;
	}
	
	public String insert() throws Exception {
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null && checkCaseParty(session.get("receviceCode").toString())){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			FileUpload fileUpload = new FileUpload();
			baseDicMap=this.getBaseDicMap();
			attTyp = putAttTyp(session.get("receviceCode").toString());
			if (attTyp.get(attachmentIn.getCategory())==null)
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
			if (session.get("partyCategory").equals("1")){
				attachmentIn.setDescription("[申请方 " +session.get("userName") + " 上传]" );
			}else{
				attachmentIn.setDescription("[被申请方 " +session.get("userName") + " 上传]" );
			}
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
						arbAtt.setCategory("party");
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
				            rem.setReason_id("extranet_party_case_att_" + arbAtt.getAtt_id() );
				            rem.setContents(session.get("caseCode").toString() + "号案件当事方提交案件附件，请检查。");
				            rem.setDt1(dateFormat1.format(new Date()));
				            rem.setUu(session.get("caseClerk").toString());
				            rem.setState("1");
				            rem.setTyp("0001");
				            rem.setU("system");
				            java.text.DateFormat dateFormat2 = new java.text.SimpleDateFormat("yyyy-MM-dd");
				            rem.setU_t(dateFormat1.format(new Date()));
							ReqPacket req_1= new ReqPacket();
							req_1 =rem.toReqPacketForCreate();
							req_1.setFrom("reminds");
							JrDbHelp jr_1 = new JrDbHelp();
							jr_1.create(req_1);
							
							ReqPacket req2 = new ReqPacket();
							req2.setFrom("case_w_user");
							req2.setSelect("user_code");
							List<String> conditions_2 =  new ArrayList<String>();
							conditions_2.add("recevice_code=? and user_code<>? and used='Y'");
							conditions_2.add(session.get("receviceCode").toString());
							conditions_2.add(session.get("userCode").toString());
							req2.setConditions(conditions_2);
							JrDbHelp jr2 = new JrDbHelp();
							ResPacket  rp2=jr2.find_all(req2);
							if (rp2.getStatus().equals("1")){
								List<CaseWUser> wUserList = new CaseWUser().getObjects(rp2);
								JrDbHelp jr3 = new JrDbHelp();
								for (int i=0;i<wUserList.size();i++){
									RemindIn remIn= new RemindIn();
									remIn.setRemind_time(dateFormat1.format(new Date()));
									remIn.setRemind_type("02");
									remIn.setAccept_user_type("party");
									remIn.setAccept_user(wUserList.get(i).getUser_code()); 
									remIn.setStatus("0");
									remIn.setContent(session.get("caseCode").toString() + "号案件当事方提交案件附件。");
									ReqPacket req3 = remIn.toReqPacketForCreate();
									req3.setFrom("remind_in");
									jr3.create(req3);
								}
							}
							
							ReqPacket req5 = new ReqPacket();
							req5.setFrom("tb_casearbitmen");
							req5.setSelect("arbitman");
							List<String> conditions_5 =  new ArrayList<String>();
							conditions_5.add("recevice_code=? and used='Y'");
							conditions_5.add(session.get("receviceCode").toString());
							req5.setConditions(conditions_5);
							JrDbHelp jr5 = new JrDbHelp();
							ResPacket  rp5=jr5.find_all(req5);
							if (rp5.getStatus().equals("1")){
								List<CasearbitmanIn> arbitmanList = new CasearbitmanIn().getObjects(rp5);
								JrDbHelp jr6 = new JrDbHelp();
								for (int i=0;i<arbitmanList.size();i++){
									RemindIn remIn= new RemindIn();
									remIn.setRemind_time(dateFormat1.format(new Date()));
									remIn.setRemind_type("02");
									remIn.setAccept_user_type("arbitman");
									remIn.setAccept_user(arbitmanList.get(i).getArbitman()); 
									remIn.setStatus("0");
									remIn.setContent(session.get("caseCode").toString() + "号案件当事方提交案件附件。");
									ReqPacket req6 = remIn.toReqPacketForCreate();
									req6.setFrom("remind_in");
									jr6.create(req6);
								}
							}
							
							
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
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null && checkCaseParty(session.get("receviceCode").toString())){
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
						if ( session.get("receviceCode") != null  && caseAtt.get(0).getRecevice_code().equals(session.get("receviceCode").toString()) && caseAtt.get(0).getCategory().equals("party") )
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
	
	private HashMap<String,String> putAttTyp(String recevice_code) throws Exception{
		baseDicMap=this.getBaseDicMap();
		HashMap<String,String> aTyp= new HashMap<String,String>();
		ReqPacket req = new ReqPacket();
		req.setFrom("case_att_time_manager");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("recevice_code=? and (up_date is null or up_date>=curdate()) and used='Y' ");
		conditions.add(recevice_code);
		req.setConditions(conditions);
		req.setOrder(" id asc ");
		JrDbHelp jr = new JrDbHelp();
		ResPacket rp=jr.find_all(req);
		if (rp.getStatus().equals("1")){
			List<CaseAttTimeManager> aList =  new CaseAttTimeManager().getObjects(rp);
			for (int i=0;i<aList.size();i++){
				aTyp.put(aList.get(i).getTyp_code(), baseDicMap.get("9105").get(aList.get(i).getTyp_code()));
			}
		}
		return aTyp;
	}
}

