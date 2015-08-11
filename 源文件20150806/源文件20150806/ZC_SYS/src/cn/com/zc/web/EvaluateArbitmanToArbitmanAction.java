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
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.EducateIn;
import cn.com.zc.jrdbModel.PartyIn;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Educate;
import cn.com.zc.model.Evaluate;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.EducateService;
import cn.com.zc.service.facade.EvaluateService;

public class EvaluateArbitmanToArbitmanAction  extends BaseAction{
	private static final long serialVersionUID = 1L;
	private int id;
	private Evaluate evaluate;
	private List<Evaluate> evaluateList;
	private List<CasearbitmanIn> caseArbitmanInList;
	private EvaluateService evaluateService;
	private String recevice_code;
	private String error;
	private List<CaseIn> caseInList;
	private HashMap<String,List<Evaluate>> evaluateHash;
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
	
	public HashMap<String,List<Evaluate>> getEvaluateHash() {
		return evaluateHash;
	}

	public void setEvaluateHash(HashMap<String,List<Evaluate>> evaluateHash) {
		this.evaluateHash = evaluateHash;
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
	
	public String findEvaluateArbitmanToArbitmanList() throws Exception{
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
		
		if (session.get("userType").toString().equals("arbitman") && session.get("receviceCode") != null){
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
			conditions.add("recevice_code=? and used='Y' and arbitman<>?");
			conditions.add(session.get("receviceCode").toString());
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder("arbitmantype asc, arbitman asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			
			if (rp.getStatus().equals("1")){
				caseArbitmanInList = new CasearbitmanIn().getObjects(rp);
				evaluateHash = new HashMap<String,List<Evaluate>>();
				for(int i=0; i< caseArbitmanInList.size(); i++){
					Object[] value = { session.get("userCode").toString(),caseArbitmanInList.get(i).getArbitman(),session.get("receviceCode").toString() };
					evaluateHash.put(caseArbitmanInList.get(i).getArbitman(), evaluateService.findEvaluateList(" and u=? and user_code=? and recevice_code=? and category='arbitman_to_arbitman' and used='Y' order by id asc", value, 0, 0));
					arbit = caseArbitmanInList.get(i).getArbitman();
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
	
	public String toInsertEvaluateArbitmanToArbitman() throws Exception {
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
		if (session.get("userType").toString().equals("arbitman") && session.get("receviceCode") != null){	
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases");
			req2.setSelect("fun_casearbitman(recevice_code) as casearbitman_xml");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y'");
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
			conditions.add("recevice_code=? and used='Y' and arbitman<>?");
			conditions.add(session.get("receviceCode").toString());
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder("arbitmantype asc, arbitman asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			
			if (rp.getStatus().equals("1")){
				caseArbitmanInList = new CasearbitmanIn().getObjects(rp);
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

	public String insertEvaluateArbitmanToArbitman() throws Exception {
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		baseDicList = getBaseDicList();
		if (recevice_code == null){
			recevice_code = session.get("receviceCode").toString();
		}
		
		if (session.get("userType").toString().equals("arbitman") && checkCaseArbitman(recevice_code)){
			session.put("receviceCode", recevice_code);
		}else{
			return "fail";
		}
		
		if (session.get("userType").toString().equals("arbitman") && session.get("receviceCode") != null){
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases");
			req2.setSelect("fun_casearbitman(recevice_code) as casearbitman_xml");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y'");
			conditions2.add(session.get("receviceCode").toString());
			req2.setConditions(conditions2);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			caseInList = new CaseIn().getObjects(rp2);
			
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_casearbitmen");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("recevice_code=? and used='Y' and arbitman<>?");
			conditions.add(session.get("receviceCode").toString());
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder("arbitmantype asc, arbitman asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			if (rp.getStatus().equals("1") && rp2.getStatus().equals("1")){
				
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
				
				caseArbitmanInList = new CasearbitmanIn().getObjects(rp);
				Iterator caseArb = caseArbitmanInList.iterator();
				
				while (caseArb.hasNext())
				  {
					CasearbitmanIn ca = (CasearbitmanIn)caseArb.next();
					Iterator blInter = baseDicList.get("8161").iterator();
					while (blInter.hasNext())
					  {
						Dictionary dic = (Dictionary)blInter.next();
						Evaluate eval = new Evaluate();
						eval.setRecevice_code(recevice_code);
						eval.setCategory("arbitman_to_arbitman");
						eval.setUser_type(ca.getArbitmantype());
						eval.setUser_code(ca.getArbitman());
						eval.setUser_name(arbitmanHash.get(ca.getArbitman()));
						eval.setParent_val(dic.getDataParent());
						eval.setData_val(dic.getDataVal());
						eval.setData_text(dic.getDataText());
						if (dic.getDataVal().length()>4){
							eval.setScore(Integer.parseInt(request.getParameter("score_name_" + dic.getDataVal() + "_" + ca.getArbitman())));
						}else{
							eval.setScore(0);
						}
						eval.setRemark(request.getParameter("remark_name_" + dic.getDataVal() + "_" + ca.getArbitman()));
						eval.setU(session.get("userCode").toString());
						eval.setU_t(dateFormat1.format(new Date()));	
						eval.setUsed("Y");
						evaluateService.insertEvaluate(eval);
					  }
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
	
	
	
	public String toUpdateEvaluateArbitmanToArbitman() throws Exception {
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
		
		if (session.get("userType").toString().equals("arbitman") && session.get("receviceCode") != null){
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases");
			req2.setSelect("fun_casearbitman(recevice_code) as casearbitman_xml");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y'");
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
			conditions.add("recevice_code=? and used='Y' and arbitman<>?");
			conditions.add(session.get("receviceCode").toString());
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder("arbitmantype asc, arbitman asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			
			if (rp.getStatus().equals("1")){
				caseArbitmanInList = new CasearbitmanIn().getObjects(rp);
				evaluateHash = new HashMap<String,List<Evaluate>>();
				for(int i=0; i< caseArbitmanInList.size(); i++){
					Object[] value = { session.get("userCode").toString(),caseArbitmanInList.get(i).getArbitman(),session.get("receviceCode").toString() };
					evaluateHash.put(caseArbitmanInList.get(i).getArbitman(), evaluateService.findEvaluateList(" and u=? and user_code=? and recevice_code=? and category='arbitman_to_arbitman' and used='Y' order by id asc", value, 0, 0));
					arbit = caseArbitmanInList.get(i).getArbitman();
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
	
	public String updateEvaluateArbitmanToArbitman() throws Exception {
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		baseDicList = getBaseDicList();
		if (recevice_code == null){
			recevice_code = session.get("receviceCode").toString();
		}
		
		if (session.get("userType").toString().equals("arbitman") && checkCaseArbitman(recevice_code)){
			session.put("receviceCode", recevice_code);
		}else{
			return "fail";
		}
		
		if (session.get("userType").toString().equals("arbitman") && session.get("receviceCode") != null){
			Object[] value = { session.get("userCode").toString(),session.get("receviceCode").toString() };
			List<Evaluate> evaList = evaluateService.findEvaluateList(" and u=? and recevice_code=? and category='arbitman_to_arbitman' and used='Y' order by id asc", value, 0, 0);
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
