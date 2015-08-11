package cn.com.zc.web;

import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Agent;
import cn.com.zc.model.CaseApplyBase;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Party;
import cn.com.zc.service.facade.AgentService;
import cn.com.zc.service.facade.CaseApplyBaseService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.PartyService;

public class AgentAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private Agent agent;
	private List<Agent> agentList;
	private List<Party> partyList;
	private AgentService agentService;
	private PartyService partyService;
	private CaseApplyBaseService caseApplyBaseService;
	private String error;
	private String pro1;
	private String pro2;
	private String name;
	
	private int pageNo = 1;
	private int pageSize = 20;
	private int pageCount;
	private String page;// 当前第几页
	private int count;
	private String page_str;

	
	public String getPage_str() {
		return page_str;
	}

	public void setPage_str(String page_str) {
		this.page_str = page_str;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getPro1() {
		dictionaryService.initDictionary();
		String r= "" ;
		Iterator diter = App.dictionaryList.get("9019").iterator();
		if (session.get("language")==null){
			diter = App.dictionaryList.get("9019").iterator();
		}else if (session.get("language").toString().equals("zh_CN")){
			diter = App.dictionaryList.get("9019").iterator();
		}else if (session.get("language").toString().equals("zh_TW")){
			diter = App.dictionaryListTw.get("9019").iterator();
		}else if (session.get("language").toString().equals("en_US")){
			diter = App.dictionaryListEn.get("9019").iterator();
		}else{
			diter = App.dictionaryList.get("9019").iterator();
		}
		while(diter.hasNext()){
			Dictionary d = (Dictionary) diter.next();
			if (d.getDataVal().length()==4){
				r= r + "<option value='"+ d.getDataVal() + "'>" + d.getDataText()+ "</option>";
			}
		}
		return r;
	}
	
	public String getPro2() {
		dictionaryService.initDictionary();
		String r= "" ;
		Iterator diter;
		Iterator diter2;
		if (session.get("language")==null){
			diter = App.dictionaryList.get("9019").iterator();
		}else if (session.get("language").toString().equals("zh_CN")){
			diter = App.dictionaryList.get("9019").iterator();
		}else if (session.get("language").toString().equals("zh_TW")){
			diter = App.dictionaryListTw.get("9019").iterator();
		}else if (session.get("language").toString().equals("en_US")){
			diter = App.dictionaryListEn.get("9019").iterator();
		}else{
			diter = App.dictionaryList.get("9019").iterator();
		}
		while(diter.hasNext()){
			Dictionary d = (Dictionary) diter.next();
			if (d.getDataVal().length()==4){
				r = r + "if (code=='"+d.getDataVal()+"'){p=\"";
				
				if (session.get("language")==null){
					diter2 = App.dictionaryList.get("9019").iterator();
				}else if (session.get("language").toString().equals("zh_CN")){
					diter2 = App.dictionaryList.get("9019").iterator();
				}else if (session.get("language").toString().equals("zh_TW")){
					diter2 = App.dictionaryListTw.get("9019").iterator();
				}else if (session.get("language").toString().equals("en_US")){
					diter2 = App.dictionaryListEn.get("9019").iterator();
				}else{
					diter2 = App.dictionaryList.get("9019").iterator();
				}
				
				while(diter2.hasNext()){
					Dictionary d2 = (Dictionary) diter2.next();
					if (d2.getDataVal().length()==8 && d2.getDataVal().substring(0, 4).equals(d.getDataVal())){
						r = r + "<option value='"+ d2.getDataVal() + "'>" + d2.getDataText()+ "</option>";
						r = r + ";";
					}	
				}
				r = r +"\"};\n";
			}
		}
		return r;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public CaseApplyBaseService getCaseApplyBaseService() {
		return caseApplyBaseService;
	}

	public void setCaseApplyBaseService(
			CaseApplyBaseService caseApplyBaseService) {
		this.caseApplyBaseService = caseApplyBaseService;
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

	public List<Party> getPartyList() {
		return partyList;
	}

	public void setPartyList(List<Party> partyList) {
		this.partyList = partyList;
	}
	
	public PartyService getPartyService() {
		return partyService;
	}

	public void setPartyService(PartyService partyService) {
		this.partyService = partyService;
	}

	public Agent getAgent() {
		return agent;
	}

	public void setAgent(Agent agent) {
		this.agent = agent;
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


	public String toInsertAgent() {
		if (session.get("applyCode").toString() != null){
			Object[] value = { session.get("applyCode").toString() };
			partyList = partyService.findPartyList(" and applyCode=? and used='Y' and partytype=1", value, 0, 0);
			return SUCCESS;
		}else{
			return "fail";
		}
	}

	public String insertAgent() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (session.get("applyCode").toString() != null){
			agent.setApplyCode(session.get("applyCode").toString());
			agent.setUsed("Y");
			agent.setU(session.get("userCode").toString());
			agent.setUT(dateFormat1.format(new Date()));
			agentService.insertAgent(agent);
			error = "代理人信息新建成功";
			error = this.getText("agent.new.mes_1");
			return SUCCESS;
		}else{
			return "fail";
		}
	}
	
	public String toUpdateAgent() {
		Object[] value = { id };
		agentList = agentService.findAgentList("and id=?", value, 0, 0);
		agent = agentList.get(0);
		if (agent.getApplyCode().equals(session.get("applyCode").toString())){
			Object[] value2 = { session.get("applyCode").toString() };
			partyList = partyService.findPartyList(" and applyCode=? and used='Y' and partytype=1", value2, 0, 0);
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}

	public String updateAgent() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = {agent.getId()};
		agentList = agentService.findAgentList(" and id=? and used='Y'", value, 0, 0);
		Agent agent_up = agentList.get(0);
		if (agent_up.getApplyCode().equals(session.get("applyCode").toString())){
			agent_up.coverSelf(agent);
			agent_up.setApplyCode(session.get("applyCode").toString());
			agent_up.setUsed("Y");
			agent_up.setU(session.get("userCode").toString());
			agent_up.setUT(dateFormat1.format(new Date()));
			agentService.updateAgent(agent_up);
			error = "代理人信息修改成功";
			error = this.getText("agent.new.mes_2");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}	
	public String deleteAgent() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = {id};
		agentList = agentService.findAgentList(" and id=? and used='Y'", value, 0, 0);
		Agent agent_up = agentList.get(0);
		if (agent_up.getApplyCode().equals(session.get("applyCode").toString())){
			agent_up.setApplyCode(session.get("applyCode").toString());
			agent_up.setUsed("N");
			agent_up.setU(session.get("userCode").toString());
			agent_up.setUT(dateFormat1.format(new Date()));
			agentService.updateAgent(agent_up);
			error = "代理人信息删除成功";
			error = this.getText("agent.new.mes_3");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String select() {
		if (name==null || name.trim().equals("")){
			String s=" and u_typ=? and ca.u=? order by p.name asc";
			Object[] value = {session.get("userType"),session.get("userCode")};
			agentList = agentService.findMyAgentList(s, value, pageNo, pageSize);
			count = agentService.getMyCounts(s, value);
		}else{
			String s=" and u_typ=? and ca.u=? and p.name like ? order by p.name asc";
			Object[] value = {session.get("userType"), session.get("userCode"), "%" +  name.trim() + "%"};
			agentList = agentService.findMyAgentList(s, value, pageNo, pageSize);
			count = agentService.getMyCounts(s, value);
			page_str = "&name=" + name;
		}
		
		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		
		return SUCCESS;
	}
	
	
	public String selectInsertAgent() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		if (session.get("applyCode").toString() != null){
			Object[] value3 = {session.get("applyCode").toString()};
			partyList = partyService.findPartyList(" and apply_code=? and used='Y' and partytype=1 order by id asc", value3, 0, 0);
			Object[] value = {id};
			agentList = agentService.findAgentList(" and id=? and used='Y'", value, 0, 0);
			if (agentList.size()>0){
				Agent agent_1 = agentList.get(0);
				Object[] value2 = { agent_1.getApplyCode()};
				List<CaseApplyBase> caseApplyList = caseApplyBaseService.findCaseApplyBaseList(
						"and apply_code=? ", value2, 0, 0);
				if (caseApplyList.size()>0){
					if (caseApplyList.get(0).getUTyp().equals(session.get("userType")) && caseApplyList.get(0).getU().equals(session.get("userCode"))){ 
						agent = new Agent();
						agent.coverSelf(agent_1);
						agent.setApplyCode(session.get("applyCode").toString());
						agent.setUsed("Y");
						agent.setU(session.get("userCode").toString());
						agent.setUT(dateFormat1.format(new Date()));
						if (partyList.size()>0){
							agent.setPartyId(partyList.get(0).getId());
						}else{
							agent.setPartyId(0);
						}
						agentService.insertAgent(agent);
						error = "代理人信息新建成功";
						error = this.getText("agent.new.mes_1");
						return SUCCESS;
					}else{
						return "fail";
					}
				}else{
					return "fail";
				}
			}else{
				return "fail";
			}
		}else{
			return "fail";
		}
	}
	
}
