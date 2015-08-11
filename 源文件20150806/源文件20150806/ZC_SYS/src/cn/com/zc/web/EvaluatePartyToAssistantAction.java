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

public class EvaluatePartyToAssistantAction  extends BaseAction{
	private static final long serialVersionUID = 1L;
	private int id;
	private Evaluate evaluate;
	private List<Evaluate> evaluateList;
	private List<CasearbitmanIn> caseArbitmanInList;
	private EvaluateService evaluateService;
	private String recevice_code;
	private String error;
	private List<CaseIn> caseInList;
	private String clerk_code;
	private String clerk_name;
	private String my_code;
	
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
	
	public String getClerk_code() {
		return clerk_code;
	}
	
	public void setClerk_code(String clerk_code) {
		this.clerk_code = clerk_code;
	}
	
	public String getClerk_name() {
		return clerk_name;
	}
	
	public void setClerk_name(String clerk_name) {
		this.clerk_name = clerk_name;
	}
	
	public String getMy_code() {
		return my_code;
	}
	
	public void setMy_code(String my_code) {
		this.my_code = my_code;
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
	
	public String findEvaluatePartyToAssistantList() throws Exception{
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
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null){
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases,users");
			req2.setSelect("tb_cases.caseendbook_id_first as caseendbook_id_first,tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.accepttime as accepttime,tb_cases.aribitprog_num as aribitprog_num,tb_cases.clerk as clerk,users.name as clerk_name,tb_cases.state as state,tb_cases.finally_limit_dat as finally_limit_dat,fun_partyinfo_1(tb_cases.recevice_code) as partyinfo_1,fun_partyinfo_2(tb_cases.recevice_code) as partyinfo_2");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y' and tb_cases.clerk=users.code");
			conditions2.add(session.get("receviceCode").toString());
			req2.setConditions(conditions2);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			caseInList = new CaseIn().getObjects(rp2);
			clerk_code = caseInList.get(0).getClerk();
			clerk_name = caseInList.get(0).getClerk_name();
			my_code = session.get("userCode").toString();
			Object[] value = { session.get("userCode").toString(),clerk_code,session.get("receviceCode").toString() };
			
			if (session.get("partyCategory")==null){
				
			}else if (session.get("partyCategory").toString().equals("1")){
				evaluateList = evaluateService.findEvaluateList(" and u=? and user_code=? and recevice_code=? and category='party_to_assistant_1' and used='Y' order by id asc", value, 0, 0);
			}else if (session.get("partyCategory").toString().equals("2")){
				evaluateList = evaluateService.findEvaluateList(" and u=? and user_code=? and recevice_code=? and category='party_to_assistant_2' and used='Y' order by id asc", value, 0, 0);
			}else{
			
			}
			
			return SUCCESS;
		}
		else{
			return "fail";
		}
		
	}
	
	public String toInsertEvaluatePartyToAssistant() throws Exception {
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
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null){	
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases,users");
			req2.setSelect("tb_cases.clerk as clerk,users.name as clerk_name");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y' and tb_cases.clerk=users.code");
			conditions2.add(session.get("receviceCode").toString());
			req2.setConditions(conditions2);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			caseInList = new CaseIn().getObjects(rp2);
			clerk_code = caseInList.get(0).getClerk();
			clerk_name = caseInList.get(0).getClerk_name();
			my_code = session.get("userCode").toString();
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}

	public String insertEvaluatePartyToAssistant() throws Exception {
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		baseDicList = getBaseDicList();
		if (recevice_code == null){
			recevice_code = session.get("receviceCode").toString();
		}
		
		if (session.get("userType").toString().equals("party") && checkCaseParty(recevice_code)){
			session.put("receviceCode", recevice_code);
		}else{
			return "fail";
		}
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null){
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases,users");
			req2.setSelect("tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.accepttime as accepttime,tb_cases.case_code as case_code,tb_cases.aribitprog_num as aribitprog_num,tb_cases.clerk as clerk,users.name as clerk_name,tb_cases.state as state,tb_cases.finally_limit_dat as finally_limit_dat,fun_partyinfo_1(tb_cases.recevice_code) as partyinfo_1,fun_partyinfo_2(tb_cases.recevice_code) as partyinfo_2");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y' and tb_cases.clerk=users.code");
			conditions2.add(session.get("receviceCode").toString());
			req2.setConditions(conditions2);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			if (rp2.getStatus().equals("1")){
				caseInList = new CaseIn().getObjects(rp2);
				clerk_code = caseInList.get(0).getClerk();
				clerk_name = caseInList.get(0).getClerk_name();
				my_code = session.get("userCode").toString();
				
				Iterator blInter = baseDicList.get("8164").iterator();
				while (blInter.hasNext())
				  {
					Dictionary dic = (Dictionary)blInter.next();
					Evaluate eval = new Evaluate();
					eval.setRecevice_code(recevice_code);
					
					
					if (session.get("partyCategory")==null){
						
					}else if (session.get("partyCategory").toString().equals("1")){
						eval.setCategory("party_to_assistant_1");
					}else if (session.get("partyCategory").toString().equals("2")){
						eval.setCategory("party_to_assistant_2");
					}else{
					
					}
					
					eval.setUser_type("1");
					eval.setUser_code(clerk_code);
					eval.setUser_name(clerk_name);
					eval.setParent_val(dic.getDataParent());
					eval.setData_val(dic.getDataVal());
					eval.setData_text(dic.getDataText());
					if (dic.getDataVal().length()>4){
						eval.setScore(Integer.parseInt(request.getParameter("score_name_" + dic.getDataVal() + "_" + clerk_code)));
					}else{
						eval.setScore(0);
					}
					eval.setRemark(request.getParameter("remark_name_" + dic.getDataVal() + "_" + clerk_code));
					eval.setU(session.get("userCode").toString());
					eval.setU_t(dateFormat1.format(new Date()));	
					eval.setUsed("Y");
					evaluateService.insertEvaluate(eval);
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
	
	
	
	public String toUpdateEvaluatePartyToAssistant() throws Exception {
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
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null){
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases,users");
			req2.setSelect("tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.accepttime as accepttime,tb_cases.case_code as case_code,tb_cases.aribitprog_num as aribitprog_num,tb_cases.clerk as clerk,users.name as clerk_name,tb_cases.state as state,tb_cases.finally_limit_dat as finally_limit_dat,fun_partyinfo_1(tb_cases.recevice_code) as partyinfo_1,fun_partyinfo_2(tb_cases.recevice_code) as partyinfo_2");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y' and tb_cases.clerk=users.code");
			conditions2.add(session.get("receviceCode").toString());
			req2.setConditions(conditions2);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			caseInList = new CaseIn().getObjects(rp2);
			clerk_code = caseInList.get(0).getClerk();
			clerk_name = caseInList.get(0).getClerk_name();
			my_code = session.get("userCode").toString();
			Object[] value = { session.get("userCode").toString(),clerk_code,session.get("receviceCode").toString() };
			
			if (session.get("partyCategory")==null){
				
			}else if (session.get("partyCategory").toString().equals("1")){
				evaluateList = evaluateService.findEvaluateList(" and u=? and user_code=? and recevice_code=? and category='party_to_assistant_1' and used='Y' order by id asc", value, 0, 0);
			}else if (session.get("partyCategory").toString().equals("2")){
				evaluateList = evaluateService.findEvaluateList(" and u=? and user_code=? and recevice_code=? and category='party_to_assistant_2' and used='Y' order by id asc", value, 0, 0);
			}else{
			
			}
			
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String updateEvaluatePartyToAssistant() throws Exception {
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		baseDicList = getBaseDicList();
		if (recevice_code == null){
			recevice_code = session.get("receviceCode").toString();
		}
		
		if (session.get("userType").toString().equals("party") && checkCaseParty(recevice_code)){
			session.put("receviceCode", recevice_code);
		}else{
			return "fail";
		}
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null){
			Object[] value = { session.get("userCode").toString(),session.get("receviceCode").toString() };
			List<Evaluate> evaList = new ArrayList<Evaluate>();
			
			if (session.get("partyCategory")==null){
				
			}else if (session.get("partyCategory").toString().equals("1")){
				evaList = evaluateService.findEvaluateList(" and u=? and recevice_code=? and category='party_to_assistant_1' and used='Y' order by id asc", value, 0, 0);
			}else if (session.get("partyCategory").toString().equals("2")){
				evaList = evaluateService.findEvaluateList(" and u=? and recevice_code=? and category='party_to_assistant_2' and used='Y' order by id asc", value, 0, 0);
			}else{
			
			}
			
			Iterator evaIter = evaList.iterator();
			while (evaIter.hasNext())
			{
				Evaluate e = (Evaluate)evaIter.next();
				if (e.getData_val().length()>4){
					e.setScore(Integer.parseInt(request.getParameter("score_name_" + e.getData_val()+ "_" + e.getUser_code())));
				}else{
					e.setScore(0);
				}
				
				e.setRemark(request.getParameter("remark_name_" + e.getData_val()+ "_" + e.getUser_code()));
				e.setU_t(dateFormat1.format(new Date()));	
				evaluateService.updateEvaluate(e);
			}
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
}
