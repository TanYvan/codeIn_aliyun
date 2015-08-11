package cn.com.zc.web;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.Param;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.CaseDocIn;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CaseWUser;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.PartyIn;
import cn.com.zc.service.facade.DocFormatService;
import cn.com.zc.util.MD5;
import cn.com.zc.util.ReadProperties;

public class CaseDocInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String file_mes;
	private String error;
	private String filePath;
	private DocFormatService docFormatService;
	private HashMap<String,String> docFormatMap;
	private List<CaseDocIn> caseDocInList;
	private CaseDocIn caseDocIn;
	private String recevice_code;
	private String id;
	private String stamp;
	private String sign_msg;
	
	public DocFormatService getDocFormatService() {
		return docFormatService;
	}

	public void setDocFormatService(DocFormatService docFormatService) {
		this.docFormatService = docFormatService;
	}
	
	public HashMap<String,String> getDocFormatMap() {
		docFormatService.initDocFormat();
		return App.docFormatMap;
	}
	
	public void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
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
	
	public CaseDocIn getCaseDocIn() {
		return caseDocIn;
	}

	public void setCaseDocIn(CaseDocIn caseDocIn) {
		this.caseDocIn = caseDocIn;
	}
	
	public List<CaseDocIn> getCaseDocInList() {
		return caseDocInList;
	}

	public void setCaseDocInList(List<CaseDocIn> caseDocInList) {
		this.caseDocInList = caseDocInList;
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
		
		req.setFrom("tb_docs");
		req.setSelect("tb_docs.id as id,tb_docs.typ_code as typ_code,tb_docs.public_state as public_state,tb_docs.recevice_code as recevice_code,tb_docs.send_code as send_code,tb_docs.file_code as file_code,tb_docs.file_name as file_name,tb_docs.public_to as public_to,tb_docs.used as used,tb_docs.ss_t as ss_t");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("tb_docs.recevice_code=? and tb_docs.public_to like ? and tb_docs.used='Y' and public_state=5 ");
		conditions.add(session.get("receviceCode").toString());
		conditions.add("%"+ ttt + "%");
		req.setOrder("id desc");
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		if (rp.getStatus().equals("1")){
			caseDocInList = new CaseDocIn().getObjects(rp);
			return SUCCESS;
		}
		else{
			return "fail";
		}
		
	}
	
	public String show() throws Exception {
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
		req.setFrom("tb_docs");
		req.setSelect("public_to");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("id=?");
		conditions.add(String.valueOf(id));
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		if (rp.getStatus().equals("1")){
			List<CaseDocIn> docIns = new CaseDocIn().getObjects(rp);
			if (docIns.size()>0){
				if (docIns.get(0).getPublic_to().indexOf(ttt)==-1){
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
		
		
		MD5 getMD5 = new MD5();
		DateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date now = new Date();
		stamp = df.format(now);
		sign_msg = getMD5.GetMD5Code(String.valueOf(id) +"abc123" + stamp + ReadProperties.getString("key"));
		return SUCCESS;
	}
}
