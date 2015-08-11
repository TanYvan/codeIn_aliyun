package cn.com.zc.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.DataSet;
import cn.com.zc.inf.model.Param;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.inf.model.Value;
import cn.com.zc.jrdbModel.AdjudgebrikeIn;
import cn.com.zc.jrdbModel.AgentIn;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CaseMatterIn;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.CaseendbookIn;
import cn.com.zc.jrdbModel.CaseorgIn;
import cn.com.zc.jrdbModel.ChangeIn;
import cn.com.zc.jrdbModel.EducateIn;
import cn.com.zc.jrdbModel.EviteIn;
import cn.com.zc.jrdbModel.JurisdictionIn;
import cn.com.zc.jrdbModel.PartyIn;
import cn.com.zc.jrdbModel.PartyanswerIn;
import cn.com.zc.jrdbModel.SaveIn;
import cn.com.zc.jrdbModel.SittingIn;
import cn.com.zc.model.ArbitmanPublic;
import cn.com.zc.model.Dictionary;
import cn.com.zc.service.facade.ArbitmanPublicService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.SysArgService;

public class ArbitmanCaseInfoInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private List<CaseIn> caseInList;
	private List<PartyIn> partyInList;
	private List<AgentIn> agentInList;
	private List<CaseorgIn> caseorgInList;
	private List<CasearbitmanIn> casearbitmanInList;
	private List<SittingIn> sittingInList;
	private List<CaseendbookIn> caseendbookInList;
	private List<JurisdictionIn> jurisdictionInList;
	private List<PartyanswerIn> partyanswerInList;
	private List<SaveIn> saveInList;
	private List<EviteIn> eviteInList;
	private List<ChangeIn> changeInList;
	private List<AdjudgebrikeIn> adjudgebrikeInList;
	private List<CaseMatterIn> caseMatterInList;
	private HashMap<String,String> partyMap;
	private HashMap<String,String> changeArbMap;
	private ArbitmanPublicService arbitmanPublicService;
	
	private CaseIn caseIn;
	private String page_bar;
	private String error;
	private String page;
	private String perpage;
	private String recevice_code;
	private String returnUrl;
	
	public String getReturnUrl() {
		if (returnUrl==null || returnUrl.equals("")){
			this.returnUrl="/arbitmanCaseInfoIn/showArbitmanCaseInfoIn.do";
		}
		return returnUrl;
	}

	public void setReturnUrl(String returnUrl) {
		this.returnUrl = returnUrl;
	}
	
	public DictionaryService getDictionaryService() {
		return dictionaryService;
	}

	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}
	
	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}
	
	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}
	
	public String getPerpage() {
		return perpage;
	}

	public void setPerpage(String perpage) {
		this.perpage = perpage;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public String getPage_bar() {
		return page_bar;
	}

	public void setPage_bar(String page_bar) {
		this.page_bar = page_bar;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public CaseIn getCaseIn() {
		return caseIn;
	}

	public void setCaseIn(CaseIn caseIn) {
		this.caseIn = caseIn;
	}

	public List<CaseIn> getCaseInList() {
		return caseInList;
	}

	public void setCaseInList(List<CaseIn> caseInList) {
		this.caseInList = caseInList;
	}
	
	public List<PartyIn> getPartyInList() {
		return partyInList;
	}

	public void setPartyInList(List<PartyIn> partyInList) {
		this.partyInList = partyInList;
	}

	public List<AgentIn> getAgentInList() {
		return agentInList;
	}

	public void setAgentInList(List<AgentIn> agentInList) {
		this.agentInList = agentInList;
	}
	
	public List<CaseorgIn> getCaseorgInList() {
		return caseorgInList;
	}

	public void setCaseorgInList(List<CaseorgIn> caseorgInList) {
		this.caseorgInList = caseorgInList;
	}
	
	public List<CasearbitmanIn> getCasearbitmanInList() {
		return casearbitmanInList;
	}

	public void setCasearbitmanInList(List<CasearbitmanIn> casearbitmanInList) {
		this.casearbitmanInList = casearbitmanInList;
	}
	
	public List<SittingIn> getSittingInList() {
		return sittingInList;
	}

	public void setSittingInList(List<SittingIn> sittingInList) {
		this.sittingInList = sittingInList;
	}

	public List<CaseendbookIn> getCaseendbookInList() {
		return caseendbookInList;
	}

	public void setCaseendbookInList(List<CaseendbookIn> caseendbookInList) {
		this.caseendbookInList = caseendbookInList;
	}
	
	public List<JurisdictionIn> getJurisdictionInList() {
		return jurisdictionInList;
	}

	public void setJurisdictionInList(List<JurisdictionIn> jurisdictionInList) {
		this.jurisdictionInList = jurisdictionInList;
	}
	
	public List<PartyanswerIn> getPartyanswerInList() {
		return partyanswerInList;
	}

	public void setPartyanswerInList(List<PartyanswerIn> partyanswerInList) {
		this.partyanswerInList = partyanswerInList;
	}
	
	public List<SaveIn> getSaveInList() {
		return saveInList;
	}

	public void seSaveInList(List<SaveIn> saveInList) {
		this.saveInList = saveInList;
	}
	
	public List<EviteIn> getEviteInList() {
		return eviteInList;
	}

	public void seEviteInList(List<EviteIn> eviteInList) {
		this.eviteInList = eviteInList;
	}
	
	public List<ChangeIn> getChangeInList() {
		return changeInList;
	}

	public void seChangeInList(List<ChangeIn> changeInList) {
		this.changeInList = changeInList;
	}
	
	public List<AdjudgebrikeIn> getAdjudgebrikeInList() {
		return adjudgebrikeInList;
	}

	public void seAdjudgebrikeInList(List<AdjudgebrikeIn> adjudgebrikeInList) {
		this.adjudgebrikeInList = adjudgebrikeInList;
	}
	
	public List<CaseMatterIn> getCaseMatterInList() {
		return caseMatterInList;
	}

	public void seCaseMatterInList(List<CaseMatterIn> caseMatterInList) {
		this.caseMatterInList = caseMatterInList;
	}
	
	public HashMap<String,String> getPartyMap() {
		return partyMap;
	}

	public void sePartyMap(HashMap<String,String> partyMap) {
		this.partyMap = partyMap;
	}
	
	public HashMap<String,String> getChangeArbMap() {
		return changeArbMap;
	}

	public void seChangeArbMap(HashMap<String,String> changeArbMap) {
		this.changeArbMap = changeArbMap;
	}
	
	public ArbitmanPublicService getArbitmanPublicService() {
		return arbitmanPublicService;
	}

	public void setArbitmanPublicService(ArbitmanPublicService arbitmanPublicService) {
		this.arbitmanPublicService = arbitmanPublicService;
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

	
	
	public String showArbitmanCaseInfoIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman") && checkCaseArbitman(recevice_code)){
		}else{
			return "fail";
		}
		
		if (session.get("userType").toString().equals("arbitman") && recevice_code != null ){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_cases");
			req.setSelect("recevice_code, case_code, clerk, fun_case_clerk_name(recevice_code) as clerk_name, fun_case_clerk_2_name(recevice_code) as clerk_2_name, t_casetype_num, dispute_type, aribitprog_num, acceptt, aribittype, case_type1, trial_typ, casetype_num, casetype_num2, accepttime, agent, arbitprot, special, casereason, clerk_2, casereason ,limit_dat , finally_limit_dat, runstyle, runremark");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("tb_cases.recevice_code=? and tb_cases.used='Y' ");
			conditions.add(recevice_code);
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases");
			req2.setSelect("fun_agent(recevice_code) as agent_xml,fun_party(recevice_code) as party_xml,fun_caseorg(recevice_code) as caseorg_xml,fun_casearbitman(recevice_code) as casearbitman_xml,fun_sitting(recevice_code) as sitting_xml,fun_caseendbook(recevice_code) as caseendbook_xml,fun_jurisdiction(recevice_code) as jurisdiction_xml,fun_partyanswer(recevice_code) as partyanswer_xml,fun_save(recevice_code) as save_xml,fun_evite(recevice_code) as evite_xml,fun_change(recevice_code) as change_xml,fun_adjudgebrike(recevice_code) as adjudgebrike_xml,fun_case_matter(recevice_code) as case_matter_xml");
			conditions =  new ArrayList<String>();
			conditions.add("recevice_code=? and used='Y'");
			conditions.add(recevice_code);
			req2.setConditions(conditions);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr.find_all(req2);
			
			if (rp.getStatus().equals("1") && rp2.getStatus().equals("1")){
				
				CaseIn caseXml = new CaseIn();
				List<CaseIn> caseXmlList = caseXml.getObjects(rp2);
				caseXml = caseXmlList.get(0);
				XStream xs = new XStream(new DomDriver());
				xs.alias("xml", ArrayList.class);
				xs.alias("row", PartyIn.class);
				
				XStream xs2 = new XStream(new DomDriver());
				xs2.alias("xml", ArrayList.class);
				xs2.alias("row", AgentIn.class);
				
				XStream xs3 = new XStream(new DomDriver());
				xs3.alias("xml", ArrayList.class);
				xs3.alias("row", CaseorgIn.class);
				
				XStream xs4 = new XStream(new DomDriver());
				xs4.alias("xml", ArrayList.class);
				xs4.alias("row", CasearbitmanIn.class);
				
				XStream xs5 = new XStream(new DomDriver());
				xs5.alias("xml", ArrayList.class);
				xs5.alias("row", SittingIn.class);
				
				XStream xs6 = new XStream(new DomDriver());
				xs6.alias("xml", ArrayList.class);
				xs6.alias("row", CaseendbookIn.class);
				

				XStream xs7 = new XStream(new DomDriver());
				xs7.alias("xml", ArrayList.class);
				xs7.alias("row", JurisdictionIn.class);
				
				XStream xs8 = new XStream(new DomDriver());
				xs8.alias("xml", ArrayList.class);
				xs8.alias("row", PartyanswerIn.class);
				
				XStream xs9 = new XStream(new DomDriver());
				xs9.alias("xml", ArrayList.class);
				xs9.alias("row", SaveIn.class);
				
				XStream xs10 = new XStream(new DomDriver());
				xs10.alias("xml", ArrayList.class);
				xs10.alias("row", EviteIn.class);
				
				XStream xs11 = new XStream(new DomDriver());
				xs11.alias("xml", ArrayList.class);
				xs11.alias("row", ChangeIn.class);
				
				XStream xs12 = new XStream(new DomDriver());
				xs12.alias("xml", ArrayList.class);
				xs12.alias("row", AdjudgebrikeIn.class);
				
				XStream xs13 = new XStream(new DomDriver());
				xs13.alias("xml", ArrayList.class);
				xs13.alias("row", CaseMatterIn.class);
				
				partyInList = (ArrayList<PartyIn>) xs.fromXML(caseXml.getParty_xml(),new ArrayList<PartyIn>());
				agentInList = (ArrayList<AgentIn>) xs2.fromXML(caseXml.getAgent_xml(),new ArrayList<AgentIn>());
				caseorgInList = (ArrayList<CaseorgIn>) xs3.fromXML(caseXml.getCaseorg_xml(),new ArrayList<CaseorgIn>());
				casearbitmanInList = (ArrayList<CasearbitmanIn>) xs4.fromXML(caseXml.getCasearbitman_xml(),new ArrayList<CasearbitmanIn>());
				sittingInList = (ArrayList<SittingIn>) xs5.fromXML(caseXml.getSitting_xml(),new ArrayList<SittingIn>());
				caseendbookInList = (ArrayList<CaseendbookIn>) xs6.fromXML(caseXml.getCaseendbook_xml(),new ArrayList<CaseendbookIn>());
				jurisdictionInList = (ArrayList<JurisdictionIn>) xs7.fromXML(caseXml.getJurisdiction_xml(),new ArrayList<JurisdictionIn>());
				partyanswerInList = (ArrayList<PartyanswerIn>) xs8.fromXML(caseXml.getPartyanswer_xml(),new ArrayList<PartyanswerIn>());
				saveInList = (ArrayList<SaveIn>) xs9.fromXML(caseXml.getSave_xml(),new ArrayList<SaveIn>());
				eviteInList = (ArrayList<EviteIn>) xs10.fromXML(caseXml.getEvite_xml(),new ArrayList<EviteIn>());
				changeInList = (ArrayList<ChangeIn>) xs11.fromXML(caseXml.getChange_xml(),new ArrayList<ChangeIn>());
				adjudgebrikeInList = (ArrayList<AdjudgebrikeIn>) xs12.fromXML(caseXml.getAdjudgebrike_xml(),new ArrayList<AdjudgebrikeIn>());
				caseMatterInList = (ArrayList<CaseMatterIn>) xs13.fromXML(caseXml.getCase_matter_xml(),new ArrayList<CaseMatterIn>());
				
				caseIn = new CaseIn();
				caseInList =  caseIn.getObjects(rp);
				caseIn = caseInList.get(0);
				
				partyMap = new HashMap<String,String>();
				Iterator iter = partyInList.iterator();
				while(iter.hasNext()){
					PartyIn par = (PartyIn) iter.next();
					partyMap.put(par.getId(),par.getPartyname());
				}
				
				String arb_str = "'0'";
				Iterator iter2 = changeInList.iterator();
				while(iter2.hasNext()){
					ChangeIn c = (ChangeIn) iter2.next();
					arb_str = arb_str + ",'" + c.getArbitman_1() + "'";
					arb_str = arb_str + ",'" + c.getArbitman() + "'";
				}
				
				changeArbMap = new HashMap<String,String>();
				if (!arb_str.equals("'0'")){
					Object[] value = null;
					List<ArbitmanPublic> arbitmanPublicList = arbitmanPublicService.findList(" and code in (" + arb_str + ")", value, 0, 0);
					Iterator iter3 = arbitmanPublicList.iterator();
					while(iter3.hasNext()){
						ArbitmanPublic c = (ArbitmanPublic) iter3.next(); 
						if (c.getName_idcard()==null){
							c.setName_idcard(""); 
						}
						if (c.getName_idcard_en()==null){
							c.setName_idcard_en(""); 
						}
						changeArbMap.put(c.getCode(),c.getName_idcard() + "" + c.getName_idcard_en());
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
}
