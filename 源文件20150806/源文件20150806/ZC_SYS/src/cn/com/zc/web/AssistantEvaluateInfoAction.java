package cn.com.zc.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CaseWUser;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.EducateIn;
import cn.com.zc.jrdbModel.PartyIn;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Educate;
import cn.com.zc.model.Evaluate;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.EducateService;
import cn.com.zc.service.facade.EvaluateService;

public class AssistantEvaluateInfoAction  extends BaseAction{
	private static final long serialVersionUID = 1L;
	private int id;
	private Evaluate evaluate;
	private List<Evaluate> evaluateList;
	private List<CasearbitmanIn> caseArbitmanInList;
	private List<String> arbitmanNameList;
	private List<String> partyNameList;
	private EvaluateService evaluateService;
	private String recevice_code;
	private String error;
	private List<CaseIn> caseInList;
	private HashMap<String,List<Evaluate>> arbitmanEvaluateHash;
	private HashMap<String,List<Evaluate>> partyEvaluateHash;
	private HashMap<String,String> arbitmanHash;
	private String arbit;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}
	
	public List<CasearbitmanIn> getCaseArbitmanInList() {
		return caseArbitmanInList;
	}

	public void setCaseArbitmanInList(List<CasearbitmanIn> caseArbitmanInList) {
		this.caseArbitmanInList = caseArbitmanInList;
	}
	
	
	public List<String> getArbitmanNameList() {
		return arbitmanNameList;
	}

	public void setArbitmanNameList(List<String> arbitmanNameList) {
		this.arbitmanNameList = arbitmanNameList;
	}
	
	public List<String> getPartyNameList() {
		return partyNameList;
	}

	public void setPartyNameList(List<String> partyNameList) {
		this.partyNameList = partyNameList;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}

	public DictionaryService getDictionaryService() {
		return dictionaryService;
	}

	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}

	public Evaluate getEvaluate() {
		return evaluate;
	}

	public void setEvaluate(Evaluate evaluate) {
		this.evaluate = evaluate;
	}

	public List<Evaluate> getEvaluateList() {
		return evaluateList;
	}

	public void setEvaluateList(List<Evaluate> evaluateList) {
		this.evaluateList = evaluateList;
	}

	public EvaluateService getEvaluateService() {
		return evaluateService;
	}

	public void setEvaluateService(EvaluateService evaluateService) {
		this.evaluateService = evaluateService;
	}

	public List<CaseIn> getCaseInList() {
		return caseInList;
	}

	public void setCaseInList(List<CaseIn> caseInList) {
		this.caseInList = caseInList;
	}
	
	public HashMap<String,List<Evaluate>> getArbitmanEvaluateHash() {
		return arbitmanEvaluateHash;
	}

	public void setArbitmanEvaluateHash(HashMap<String,List<Evaluate>> arbitmanEvaluateHash) {
		this.arbitmanEvaluateHash = arbitmanEvaluateHash;
	}
	
	public HashMap<String,List<Evaluate>> getPartyEvaluateHash() {
		return partyEvaluateHash;
	}

	public void setPartyEvaluateHash(HashMap<String,List<Evaluate>> partyEvaluateHash) {
		this.partyEvaluateHash = partyEvaluateHash;
	}
	
	public HashMap<String,String> getArbitmanHash() {
			return arbitmanHash;
	}

	public void setArbitmanHash(HashMap<String,String> arbitmanHash) {
		this.arbitmanHash = arbitmanHash;
	}
	
	public String getArbit() {
		return arbit;
	}
	
	public void setArbit(String arbit) {
		this.arbit = arbit;
	}

	private Boolean checkCaseAssistant (String code) throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_cases");
		req.setSelect("tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.clerk as clerk");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("recevice_code=? and clerk=? and used='Y' and state>=4");
		conditions.add(code);
		conditions.add(session.get("userCode").toString());
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		List<CaseIn> arbList = new CaseIn().getObjects(rp);
		if (arbList.size()>0){
			session.put("receivceCode",arbList.get(0).getRecevice_code());
			session.put("caseCode",arbList.get(0).getCase_code());
			session.put("caseClerk",arbList.get(0).getClerk());
			return true;
		}else{
			return false;
		}
	}
	
	public String show() throws Exception{
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		if (recevice_code == null){
			recevice_code = session.get("receviceCode").toString();
		}
		
		if (session.get("userType").toString().equals("assistant") && checkCaseAssistant(recevice_code)){
			session.put("receviceCode", recevice_code);
		}else{
			return "fail";
		}
		
		if (session.get("userType").toString().equals("assistant") && session.get("receviceCode") != null){
			arbitmanNameList = new ArrayList<String>();
			partyNameList = new ArrayList<String>();
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases,users");
			req2.setSelect("tb_cases.caseendbook_id_first as caseendbook_id_first,tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.accepttime as accepttime,tb_cases.aribitprog_num as aribitprog_num,tb_cases.clerk as clerk,users.name as clerk_name,tb_cases.state as state,tb_cases.finally_limit_dat as finally_limit_dat,fun_partyinfo_1(tb_cases.recevice_code) as partyinfo_1,fun_partyinfo_2(tb_cases.recevice_code) as partyinfo_2,fun_casearbitman(recevice_code) as casearbitman_xml");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y' and tb_cases.clerk=users.code");
			conditions2.add(session.get("receviceCode").toString());
			req2.setConditions(conditions2);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			caseInList = new CaseIn().getObjects(rp2);
			CaseIn caseXml = new CaseIn();
			List<CaseIn> caseXmlList = caseXml.getObjects(rp2);
			caseXml = caseXmlList.get(0);
			XStream xs = new XStream(new DomDriver());
			xs.alias("xml", ArrayList.class);
			xs.alias("row", CasearbitmanIn.class);
			List<CasearbitmanIn> caseArbInList = (ArrayList<CasearbitmanIn>) xs.fromXML(caseXml.getCasearbitman_xml(),new ArrayList<CasearbitmanIn>());
			arbitmanHash = new HashMap<String,String>();
			for(int i=0; i<caseArbInList.size();i++){
				arbitmanHash.put(caseArbInList.get(i).getArbitman(), caseArbInList.get(i).getName());
			}
			
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_casearbitmen");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("recevice_code=? and used='Y'");
			conditions.add(session.get("receviceCode").toString());
			req.setConditions(conditions);
			req.setOrder("arbitmantype asc, arbitman asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			
			if (rp.getStatus().equals("1")){
				caseArbitmanInList = new CasearbitmanIn().getObjects(rp);
				arbitmanEvaluateHash = new HashMap<String,List<Evaluate>>();
				for(int i=0; i< caseArbitmanInList.size(); i++){
					Object[] value = { caseArbitmanInList.get(i).getArbitman(),session.get("userCode").toString(),session.get("receviceCode").toString() };
					List<Evaluate> evaluateList = evaluateService.findEvaluateList(" and u=? and user_code=? and recevice_code=? and category='arbitman_to_assistant' and used='Y' order by id asc", value, 0, 0);
					if (evaluateList.size()>0){
						arbitmanEvaluateHash.put(caseArbitmanInList.get(i).getArbitman(), evaluateList);
						arbitmanNameList.add(caseArbitmanInList.get(i).getArbitman());
					}
				}
				
			}
			else{
				return "fail";
			}
			
			ReqPacket req3= new ReqPacket();
			req3.setFrom("case_w_user");
			req3.setSelect("user_type,user_code");
			List<String> conditions3 =  new ArrayList<String>();
			conditions3.add("recevice_code=? and used='Y'");
			conditions3.add(session.get("receviceCode").toString());
			req3.setConditions(conditions3);
			req3.setOrder("id");
			JrDbHelp jr3 = new JrDbHelp();
			ResPacket  rp3=jr3.find_all(req3);
			
			if (rp.getStatus().equals("1")){
				List<CaseWUser> caseWUserList =  new CaseWUser().getObjects(rp3);
				partyEvaluateHash = new HashMap<String,List<Evaluate>>();
				for(int i=0; i< caseWUserList.size(); i++){
					Object[] value3 = {caseWUserList.get(i).getUser_code(), session.get("userCode").toString(), session.get("receviceCode").toString() };
					partyEvaluateHash.put(caseWUserList.get(i).getUser_code(), evaluateService.findEvaluateList(" and u=? and user_code=? and recevice_code=? and category like 'party_to_assistant%' and used='Y' order by id asc", value3, 0, 0));
					partyNameList.add(caseWUserList.get(i).getUser_code());
				}
			}
			else{
				return "fail";
			}

			return SUCCESS;
		}
		else{
			return "fail";
		}
		
	}
	
}
