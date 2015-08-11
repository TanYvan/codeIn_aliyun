package cn.com.zc.web;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.model.CaseApplyBase;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Party;
import cn.com.zc.service.facade.CaseApplyBaseService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.PartyService;

public class Party2Action  extends BaseAction{
	private static final long serialVersionUID = 1L;
	private int id;
	private Party party;
	private List<Party> partyList;
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
		Iterator diter;
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
	
	public Party getParty() {
		return party;
	}

	public void setParty(Party party) {
		this.party = party;
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

	public String toInsertParty() {
		if (session.get("applyCode").toString() != null){
			return SUCCESS;
		}else{
			return "fail";
		}
	}

	public String insertParty() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (session.get("applyCode").toString() != null){
			party.setApplyCode(session.get("applyCode").toString());
			party.setUsed("Y");
			party.setPartyType(2);
			party.setU(session.get("userCode").toString());
			party.setUT(dateFormat1.format(new Date()));
			partyService.insertParty(party);
			error = "被申请人信息新建成功";
			error = this.getText("party2.new.mes_1");
			return SUCCESS;
		}else{
			return "fail";
		}
	}

	public String toUpdateParty() {
		Object[] value = {id};
		partyList = partyService.findPartyList(" and id=? and partytype=2 and used='Y'", value, 0, 0);
		party = partyList.get(0);
		if (party.getApplyCode().equals(session.get("applyCode").toString()) && party.getPartyType()==2){
			return SUCCESS;
		}else{
			return "fail";
		}
	}

	public String updateParty() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = {party.getId()};
		partyList = partyService.findPartyList(" and id=? and partytype=2 and used='Y'", value, 0, 0);
		Party party_up = partyList.get(0);
		if ( party_up.getApplyCode().equals(session.get("applyCode").toString()) && party_up.getPartyType()==2 ){
			party_up.coverSelf(party);
			party_up.setApplyCode(session.get("applyCode").toString());
			party_up.setPartyType(2);
			party_up.setUsed("Y");
			party_up.setU(session.get("userCode").toString());
			party_up.setUT(dateFormat1.format(new Date()));
			partyService.updateParty(party_up);
			error = "被申请人信息修改成功";
			error = this.getText("party2.new.mes_2");
			return SUCCESS;
		}
		else{
			return "fail";
		}			
	}
	
	public String deleteParty() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = {id};
		partyList = partyService.findPartyList(" and id=? and partytype=2 and used='Y'", value, 0, 0);
		Party party_up = partyList.get(0);
		if (party_up.getApplyCode().equals(session.get("applyCode").toString()) && party_up.getPartyType()==2){
			party_up.setUsed("N");
			party_up.setApplyCode(session.get("applyCode").toString());
			party_up.setPartyType(2);
			party_up.setU(session.get("userCode").toString());
			party_up.setUT(dateFormat1.format(new Date()));
			partyService.updateParty(party_up);
			error = "被申请人信息删除成功";
			error = this.getText("party2.new.mes_3");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	

	public String select() {
		if (name==null || name.trim().equals("")){
			String s=" and u_typ=? and ca.u=? order by p.partyName asc";
			Object[] value = {session.get("userType"),session.get("userCode")};
			partyList = partyService.findMyPartyList(s, value, pageNo, pageSize);
			count = partyService.getMyCounts(s, value);
		}else{
			String s=" and u_typ=? and ca.u=? and p.partyName like ? order by p.partyName asc";
			Object[] value = {session.get("userType"), session.get("userCode"), "%" +  name.trim() + "%"};
			partyList = partyService.findMyPartyList(s, value, pageNo, pageSize);
			count = partyService.getMyCounts(s, value);
			page_str = "&name=" + name;
		}
		
		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		
		return SUCCESS;
	}
	
	
	public String selectInsertParty() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (session.get("applyCode").toString() != null){
			Object[] value = {id};
			partyList = partyService.findPartyList(" and id=? and used='Y'", value, 0, 0);
			if (partyList.size()>0){
				Party party_1 = partyList.get(0);
				Object[] value2 = { party_1.getApplyCode()};
				List<CaseApplyBase> caseApplyList = caseApplyBaseService.findCaseApplyBaseList(
						"and apply_code=? ", value2, 0, 0);
				if (caseApplyList.size()>0){
					if (caseApplyList.get(0).getUTyp().equals(session.get("userType")) && caseApplyList.get(0).getU().equals(session.get("userCode"))){ 
						party = new Party();
						party.coverSelf(party_1);
						party.setApplyCode(session.get("applyCode").toString());
						party.setPartyType(2);
						party.setUsed("Y");
						party.setU(session.get("userCode").toString());
						party.setUT(dateFormat1.format(new Date()));
						partyService.insertParty(party);
						error = "被申请人信息复制成功";
						error = this.getText("party2.new.mes_1");
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
