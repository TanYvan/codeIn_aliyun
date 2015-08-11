package cn.com.zc.web;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import cn.com.zc.common.Escape;
import cn.com.zc.model.Agent;
import cn.com.zc.model.Attachment;
import cn.com.zc.model.CaseApplyBase;
import cn.com.zc.model.Contractsign;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Party;
import cn.com.zc.model.PartyRequest;
import cn.com.zc.service.facade.AgentService;
import cn.com.zc.service.facade.ArbitmanAttService;
import cn.com.zc.service.facade.AttachmentService;
import cn.com.zc.service.facade.CaseApplyBaseService;
import cn.com.zc.service.facade.ContractsignService;
import cn.com.zc.service.facade.PartyRequestService;
import cn.com.zc.service.facade.PartyService;
import cn.com.zc.service.facade.SysArgService;

public class CaseApplyAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String page;// 当前第几页
	private int count;
	private int pageNo = 1;
	private int pageSize = 20;
	private int pageCount;
	private CaseApplyBase caseApplyBase;
	private List<CaseApplyBase> caseApplyList;
	private CaseApplyBaseService caseApplyBaseService;
	private SysArgService sysArgService;
	private String result;
	private String code;
	private String CaseApplyBaseCode;
	private List<Attachment> attachmentList;
	private AttachmentService attachmentService;
	private String error;
	private String anchor;
	
	private HashMap<String,String> status_hash;
	private HashMap<String,String> case_party1;
	private HashMap<String,String> case_party2;
	
	private List<Party> partyList;
	private List<Party> party2List;
	private PartyService partyService;
	private Map<Integer,String> partyMap;
	
	private List<Agent> agentList;
	private AgentService agentService;
	
	private List<PartyRequest> partyRequestList;
	private PartyRequestService partyRequestService;	
	private List<Contractsign> contractsignList;
	private ContractsignService contractsignService;
	
	
	public HashMap<String,String> getCase_party1() {
		return case_party1;
	}
	
	public void SetCase_party1(HashMap<String,String> case_party1){
		this.case_party1 = case_party1;
	}
	
	public HashMap<String,String> getCase_party2() {
		return case_party2;
	}
	
	public void SetCase_party2(HashMap<String,String> case_party2){
		this.case_party2 = case_party2;
	}
	
	public HashMap<String,String> getStatus_hash() {
		HashMap<String,String> tmp_c =  new HashMap<String,String>();
		tmp_c.put("0",this.getText("caseApply.list.status_0"));
		tmp_c.put("1",this.getText("caseApply.list.status_1"));
		tmp_c.put("2",this.getText("caseApply.list.status_2"));
		return tmp_c;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getAnchor() {
		return anchor;
	}

	public void setAnchor(String anchor) {
		this.anchor = anchor;
	}
	
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getCaseApplyBaseCode() {
		return CaseApplyBaseCode;
	}

	public void setCaseApplyBaseCode(String CaseApplyBaseCode) {
		this.CaseApplyBaseCode = CaseApplyBaseCode;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public SysArgService getSysArgService() {
		return sysArgService;
	}

	public void setSysArgService(SysArgService sysArgService) {
		this.sysArgService = sysArgService;
	}
	
	public CaseApplyBaseService getCaseApplyBaseService() {
		return caseApplyBaseService;
	}

	public void setCaseApplyBaseService(
			CaseApplyBaseService caseApplyBaseService) {
		this.caseApplyBaseService = caseApplyBaseService;
	}

	public CaseApplyBase getCaseApplyBase() {
		return caseApplyBase;
	}

	public void setCaseApplyBase(CaseApplyBase caseApplyBase) {
		this.caseApplyBase = caseApplyBase;
	}
	
	public List<Party> getPartyList() {
		return partyList;
	}

	public void setPartyList(List<Party> partyList) {
		this.partyList = partyList;
	}
	
	public List<Party> getParty2List() {
		return party2List;
	}

	public void setParty2List(List<Party> party2List) {
		this.party2List = party2List;
	}
	
	public Map<Integer, String> getPartyMap() {
		return partyMap;
	}

	public void setPartyMap(Map<Integer, String> partyMap) {
		this.partyMap = partyMap;
	}
	
	public PartyService getPartyService() {
		return partyService;
	}

	public void setPartyService(PartyService partyService) {
		this.partyService = partyService;
	}
	
	
	public List<Agent> getAgentList() {
		return agentList;
	}

	public void setAgentList(List<Agent> agentList) {
		this.agentList = agentList;
	}

	public AgentService getAgentService() {
		return agentService;
	}

	public void setAgentService(AgentService agentService) {
		this.agentService = agentService;
	}
	
	public List<PartyRequest> getPartyRequestList() {
		return partyRequestList;
	}

	public void setPartyRequestList(List<PartyRequest> partyRequestList) {
		this.partyRequestList = partyRequestList;
	}

	public PartyRequestService getPartyRequestService() {
		return partyRequestService;
	}

	public void setPartyRequestService(PartyRequestService partyRequestService) {
		this.partyRequestService = partyRequestService;
	}
	
	public List<Contractsign> getContractsignList() {
		return contractsignList;
	}

	public void setContractsignList(List<Contractsign> contractsignList) {
		this.contractsignList = contractsignList;
	}

	public ContractsignService getContractsignService() {
		return contractsignService;
	}

	public void setContractsignService(ContractsignService contractsignService) {
		this.contractsignService = contractsignService;
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
	
	public void setAttachmentService(AttachmentService attachmentService) {
		this.attachmentService = attachmentService;
	}
	
	public List<CaseApplyBase> getCaseApplyList() {
		return caseApplyList;
	}

	public void setCaseApplyList(List<CaseApplyBase> caseApplyList) {
		this.caseApplyList = caseApplyList;
	}

	public String findCaseApplyList() {
		Object[] value = { session.get("userType").toString(), session.get("userCode").toString()};
		caseApplyList = caseApplyBaseService.findCaseApplyBaseList(
				"and u_typ=? and u=?  order by apply_code desc", value, 0, 0);
		String ccc = "apply_code='0'";
		for (CaseApplyBase c:caseApplyList){
			ccc = ccc + " or apply_code='" + c.getApplyCode() + "'";
		}
		ccc =  "(" + ccc + ")";
		Object[] value2 = null;
		List<Party> pList = partyService.findPartyList(" and " + ccc + " and used='Y'", value2, 0, 0);
		
		case_party1 = new HashMap<String,String>();
		case_party2 = new HashMap<String,String>();
		
		String p1="";
		String p2="";
		for (CaseApplyBase c:caseApplyList){
			p1="";
			p2="";
			for (Party p:pList){
				if (p.getApplyCode().equals(c.getApplyCode())){
					if (p.getPartyType()==1){
						p1 = p1 + "," + p.getPartyName();
					}
					if (p.getPartyType()==2){
						p2 = p2 + ","  + p.getPartyName();
					}
				}
			}
			if (p1.equals("")){
				case_party1.put(c.getApplyCode(),"");
			}
			else{
				case_party1.put(c.getApplyCode(), p1.substring(1));
			}	
			if (p2.equals("")){
				case_party2.put(c.getApplyCode(), "");
			}
			else{
				case_party2.put(c.getApplyCode(), p2.substring(1));
			}
		}
		
		return SUCCESS;
	}
	
	public String toInsertCaseApply() {
		return SUCCESS;
	}
	
	public String insertCaseApply() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (session.get("userType").toString().equals("party") || session.get("userType").toString().equals("assistant")){
			caseApplyBase.setU(session.get("userCode").toString());
			caseApplyBase.setUTyp(session.get("userType").toString());
			caseApplyBase.setUT(dateFormat1.format(new Date()));
			caseApplyBase.setCreateT(caseApplyBase.getUT());
			caseApplyBase.setStatus(1);
			caseApplyBase.setApplyCode(sysArgService.take_0150());
			caseApplyBaseService.insertCaseApplyBase(caseApplyBase);
			session.put("applyCode",caseApplyBase.getApplyCode());
			error = this.getText("caseApply.list.mes_1");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}	
	
	public String toUpdateCaseApply() {
		if ( id != 0 ){
			Object[] value = { id };//getSession().getAttribute("applyCode") };
			caseApplyList = caseApplyBaseService.findCaseApplyBaseList("and id=?", value, 0, 0);
			caseApplyBase = caseApplyList.get(0);
		}
		else{
			if (session.get("applyCode") != null){
				Object[] value = { session.get("applyCode").toString() };//getSession().getAttribute("applyCode") };
				caseApplyList = caseApplyBaseService.findCaseApplyBaseList(" and apply_code=?", value, 0, 0);
				if (caseApplyList.size()>0){
					caseApplyBase = caseApplyList.get(0);
				}else{
					return "fail";
				}
			}
			else{
				return "fail";
			}
		}
		
		if (caseApplyBase.getStatus()==1 && caseApplyBase.getU().equals(session.get("userCode").toString()) && caseApplyBase.getUTyp().equals(session.get("userType").toString())){
			session.put("applyCode",caseApplyBase.getApplyCode());
			
			Object[] value2 = {session.get("applyCode").toString()};
			partyList = partyService.findPartyList(" and apply_code=? and used='Y' and partytype=1", value2, 0, 0);
			party2List = partyService.findPartyList(" and apply_code=? and used='Y' and partytype=2", value2, 0, 0);
			
			Iterator diter = partyList.iterator();
			Map<Integer,String> tmp =  new HashMap<Integer,String>();
			while(diter.hasNext()){
				Party d = (Party) diter.next();
				tmp.put(d.getId(),d.getPartyName());
			}
			this.partyMap = tmp;
				
			Object[] value3 = {session.get("applyCode").toString()};
			agentList = agentService.findAgentList(" and apply_code=? and used='Y'",value3, 0, 0);
			
			Object[] value4 = {session.get("applyCode").toString()};
			partyRequestList = partyRequestService.findPartyRequestList(" and apply_code=? and used='Y'",value4, 0, 0);
			
			Object[] value5 = {session.get("applyCode").toString()};
			contractsignList = contractsignService.findContractsignList(" and apply_code=? and used='Y'",value5, 0, 0);
			
			
			Object[] value6 = {session.get("applyCode").toString()};
			String condition = " att.id=arb.attId and arb.used='Y' and arb.applyCode=? ";
			String sql = "select new Attachment(att.id,att.category,att.upTime,att.fileName,att.contentType,att.remark,att.extFilePath,att.extFileUrl,att.filePath,att.fileUrl) from Attachment as att, CaseAtt as arb where ";
			attachmentList = attachmentService.findAttachmentListFor(sql + condition, value6);
			return SUCCESS;
			
		}
		else{
			return "fail";
		}
			
	}

	public String updateCaseApply() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = {caseApplyBase.getId()};
		caseApplyList = caseApplyBaseService.findCaseApplyBaseList("and id=?", value, 0, 0);
		if (caseApplyList.size()>0){
			CaseApplyBase caseApplyBase_up = caseApplyList.get(0);
			if (caseApplyBase_up.getStatus()==1 && session.get("applyCode")!=null && caseApplyBase_up.getApplyCode().equals((session.get("applyCode").toString())) && caseApplyBase_up.getUTyp().equals((session.get("userType").toString())) && caseApplyBase_up.getU().equals((session.get("userCode").toString()))){
				caseApplyBase.setApplyCode(null);
				caseApplyBase_up.coverSelf(caseApplyBase);
				caseApplyBase_up.setU(session.get("userCode").toString());
				caseApplyBase_up.setUTyp(session.get("userType").toString());
				caseApplyBase_up.setStatus(1);
				caseApplyBase_up.setUT(dateFormat1.format(new Date()));
				caseApplyBaseService.updateCaseApplyBase(caseApplyBase_up);
				error = this.getText("caseApply.list.mes_2");
				return SUCCESS;
			}else{
				return "fail";
			}
		}else{
			return "fail";
		}
	}	
	
	public String deleteCaseApply() {
		Object[] value = {id};
		caseApplyList = caseApplyBaseService.findCaseApplyBaseList("and id=?", value, 0, 0);
		if (caseApplyList.size()>0){
			CaseApplyBase caseApplyBase_up = caseApplyList.get(0);
			if (caseApplyBase_up.getStatus()==1  && caseApplyBase_up.getUTyp().equals((session.get("userType").toString())) && caseApplyBase_up.getU().equals((session.get("userCode").toString()))){
				caseApplyBase_up.setStatus(0);
				caseApplyBaseService.updateCaseApplyBase(caseApplyBase_up);
				return SUCCESS;
			}else{
				return "fail";
			}
		}else{
			return "fail";
		}
	}
	
	public String showCaseApply() {
		if ( id != 0 ){
			Object[] value = { id };//getSession().getAttribute("applyCode") };
			caseApplyList = caseApplyBaseService.findCaseApplyBaseList("and id=?", value, 0, 0);
			caseApplyBase = caseApplyList.get(0);
		}
		else{
			return "fail";
		}
		
		if (caseApplyBase.getU().equals(session.get("userCode").toString()) && caseApplyBase.getUTyp().equals(session.get("userType").toString())){
			session.put("applyCode",caseApplyBase.getApplyCode());
			String applyCode = caseApplyBase.getApplyCode();
			Object[] value2 = {applyCode};
			partyList = partyService.findPartyList(" and apply_code=? and used='Y' and partytype=1", value2, 0, 0);
			party2List = partyService.findPartyList(" and apply_code=? and used='Y' and partytype=2", value2, 0, 0);
			Iterator diter = partyList.iterator();
			Map<Integer,String> tmp =  new HashMap<Integer,String>();
			while(diter.hasNext()){
				Party d = (Party) diter.next();
				tmp.put(d.getId(),d.getPartyName());
			}
			this.partyMap = tmp;
				
			Object[] value3 = {applyCode};
			agentList = agentService.findAgentList(" and apply_code=? and used='Y'",value3, 0, 0);
			
			Object[] value4 = {applyCode};
			partyRequestList = partyRequestService.findPartyRequestList(" and apply_code=? and used='Y'",value4, 0, 0);
			
			Object[] value5 = {applyCode};
			contractsignList = contractsignService.findContractsignList(" and apply_code=? and used='Y'",value5, 0, 0);
			
			
			Object[] value6 = {applyCode};
			String condition = " att.id=arb.attId and arb.used='Y' and arb.applyCode=? ";
			String sql = "select new Attachment(att.id,att.category,att.upTime,att.fileName,att.contentType,att.remark,att.extFilePath,att.extFileUrl,att.filePath,att.fileUrl) from Attachment as att, CaseAtt as arb where ";
			attachmentList = attachmentService.findAttachmentListFor(sql + condition, value6);
			return SUCCESS;
			
		}
		else{
			return "fail";
		}
			
	}
	
	
}
