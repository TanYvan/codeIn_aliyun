package cn.com.zc.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.CaseBookIn;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CaseWUser;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.model.Downlog;
import cn.com.zc.service.facade.DownlogService;
import cn.com.zc.util.MD5;
import cn.com.zc.util.ReadProperties;

public class CaseBookInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String file_mes;
	private String error;
	private String filePath;
	private List<CaseBookIn> caseBookInList;
	private CaseBookIn caseBookIn;
	private String recevice_code;
	private String id;
	private String fileName;
	private String stamp;
	private String sign_msg;
	private DownlogService downlogService;
	
	public DownlogService getDownlogService() {
		return downlogService;
	}

	public void setDownlogService(DownlogService DownlogService) {
		this.downlogService = DownlogService;
	}
	
	public void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
	}
	
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileName() {
		return fileName;
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
	
	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}
	
	public CaseBookIn getCaseBookIn() {
		return caseBookIn;
	}

	public void setCaseBookIn(CaseBookIn caseBookIn) {
		this.caseBookIn = caseBookIn;
	}
	
	public List<CaseBookIn> getCaseBookInList() {
		return caseBookInList;
	}

	public void setCaseBookInList(List<CaseBookIn> caseBookInList) {
		this.caseBookInList = caseBookInList;
	}
	
	public String getFile_mes() {
		return file_mes;
	}

	public void setFile_mes(String file_mes) {
		this.file_mes = file_mes;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	
	private Boolean checkCaseParty (String code) throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_cases,case_w_user");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("tb_cases.recevice_code=? and case_w_user.user_code=? and tb_cases.recevice_code=case_w_user.recevice_code and tb_cases.used='Y' and case_w_user.used='Y' and tb_cases.state>=4");
		conditions.add(code);
		conditions.add(session.get("userCode").toString());
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		List<CaseWUser> caseList = new CaseWUser().getObjects(rp);
		if (caseList.size()>0){
			return true;
		}else{
			return false;
		}
	}
	
	private Boolean checkCaseArbitman (String code) throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_cases,tb_casearbitmen");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("tb_casearbitmen.recevice_code=? and tb_casearbitmen.arbitman=? and tb_casearbitmen.used='Y' and tb_cases.recevice_code=tb_casearbitmen.recevice_code and tb_cases.used='Y' and tb_cases.state>=4");
		conditions.add(code);
		conditions.add(session.get("userCode").toString());
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		List<CasearbitmanIn> arbList = new CaseIn().getObjects(rp);
		if (arbList.size()>0){
			return true;
		}else{
			return false;
		}
	}
	
	public String list() throws Exception {
		String userType = session.get("userType").toString();
		String ttt ="";
		
		ReqPacket req= new ReqPacket();
		
		if (userType.equals("party")){
			ttt = "0002";
			if (checkCaseParty(session.get("receviceCode").toString())){
				
			}
			else{
				return "fail";
			}
			
		}else if (userType.equals("arbitman")){
			ttt = "0001";
			if (checkCaseArbitman(session.get("receviceCode").toString())){
				
			}
			else{
				return "fail";
			}
		}else{
			return "fail";
		}
		
		req.setFrom("case_books");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("recevice_code=? and used='Y'");
		conditions.add(session.get("receviceCode").toString());
		req.setOrder("id desc");
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		if (rp.getStatus().equals("1")){
			caseBookInList = new CaseBookIn().getObjects(rp);
			return SUCCESS;
		}
		else{
			return "fail";
		}
		
	}
	
	public String show() throws Exception {
		baseDicMap=getBaseDicMap();
		String userType = session.get("userType").toString();
		String ttt = "";
		if (userType.equals("party")){
			ttt = "0002";
			if (checkCaseParty(session.get("receviceCode").toString())){
				
			}
			else{
				return "fail";
			}
			
		}else if (userType.equals("arbitman")){
			ttt = "0001";
			if (checkCaseArbitman(session.get("receviceCode").toString())){
				
			}
			else{
				return "fail";
			}
		}else{
			return "fail";
		}
		
		ReqPacket req= new ReqPacket();
		req.setFrom("case_books");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("id=?");
		conditions.add(String.valueOf(id));
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		if (rp.getStatus().equals("1")){
			List<CaseBookIn> bookIns = new CaseBookIn().getObjects(rp);
			if (bookIns.size()>0){
				fileName = bookIns.get(0).getBook_name();
				if (fileName.split("\\.").length>1){
					baseDicMap=this.getBaseDicMap();
					//fileName =  baseDicMap.get("9906").get(bookIns.get(0).getTyp()) + "." + fileName.split("\\.")[fileName.split("\\.").length - 1];
					fileName =  bookIns.get(0).getTyp() + "." + fileName.split("\\.")[fileName.split("\\.").length - 1];
				}		
				MD5 getMD5 = new MD5();
				DateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
				Date now = new Date();
				stamp = df.format(now);
				sign_msg = getMD5.GetMD5Code(String.valueOf(id) +"abc123" + stamp + ReadProperties.getString("key"));
				
				Downlog downlog = new Downlog();
				downlog.setUserType(session.get("userType").toString());
				downlog.setUserCode(session.get("userCode").toString());
				downlog.setIp(this.getIpAddr());
				java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				downlog.setDownTime(dateFormat1.format(new Date()));
				downlog.setDownType(baseDicMap.get("9906").get(bookIns.get(0).getTyp()));
				downlog.setFileName(baseDicMap.get("9906").get(bookIns.get(0).getTyp()));
				downlog.setDescription(this.getText("caseBoolIn.case_code") + "："+bookIns.get(0).getCase_code() + "," + this.getText("caseBoolIn.recevice_code") + "："+bookIns.get(0).getRecevice_code() + ",文件类别：" + baseDicMap.get("9906").get(bookIns.get(0).getTyp()));
				downlog.setUrl(id);
				downlogService.insertDownlog(downlog);
				
				return SUCCESS;
			}else{
				return "file_down_fail";
			}
		}
		else{
			return "fail";
		}
		
		
		
	}
	
}
