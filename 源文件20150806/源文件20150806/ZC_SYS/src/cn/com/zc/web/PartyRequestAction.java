package cn.com.zc.web;

import java.util.Date;
import java.util.List;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Party;
import cn.com.zc.model.PartyRequest;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.PartyRequestService;
import cn.com.zc.service.facade.PartyService;

public class PartyRequestAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private PartyService partyService;
	private List<Party> partyList;
	private PartyRequest partyRequest;
	private List<PartyRequest> partyRequestList;
	private PartyRequestService partyRequestService;
	private String error;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public PartyService getPartyService() {
		return partyService;
	}

	public void setPartyService(PartyService partyService) {
		this.partyService = partyService;
	}

	public List<Party> getPartyList() {
		return partyList;
	}

	public void setPartyList(List<Party> partyList) {
		this.partyList = partyList;
	}

	public DictionaryService getDictionaryService() {
		return dictionaryService;
	}

	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}

	public PartyRequest getPartyRequest() {
		return partyRequest;
	}

	public void setPartyRequest(PartyRequest partyRequest) {
		this.partyRequest = partyRequest;
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
	
	public String toInsertPartyRequest() {
		if (session.get("applyCode").toString() != null){
			Object[] value = { session.get("applyCode").toString() };
			partyList = partyService.findPartyList(" and applyCode=? and used='Y' and partytype=1", value, 0, 0);
			return SUCCESS;
		}else{
			return "fail";
		}
	}
	
	public String insertPartyRequest() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (session.get("applyCode").toString() != null){
			partyRequest.setApplyCode(session.get("applyCode").toString());
			partyRequest.setUsed("Y");
			partyRequest.setU(session.get("userCode").toString());
			partyRequest.setUT(dateFormat1.format(new Date()));
			partyRequestService.insertPartyRequest(partyRequest);
			error = "请求信息新建成功";
			error = this.getText("request.new.mes_1");
			return SUCCESS;
		}else{
			return "fail";
		}
	}

	public String toUpdatePartyRequest() {
		Object[] value = {id};
		partyRequestList = partyRequestService.findPartyRequestList(" and id=? and used='Y'", value, 0, 0);
		partyRequest = partyRequestList.get(0);
		if (session.get("applyCode")!=null && partyRequest.getApplyCode().equals(session.get("applyCode").toString())){
			Object[] value2 = { session.get("applyCode").toString() };
			partyList = partyService.findPartyList(" and applyCode=? and used='Y' and partytype=1", value2, 0, 0);
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String updatePartyRequest() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = {partyRequest.getId()};
		partyRequestList = partyRequestService.findPartyRequestList(" and id=? and used='Y'", value, 0, 0);
		PartyRequest partyRequest_up = partyRequestList.get(0);
		if (partyRequest_up.getApplyCode().equals(session.get("applyCode").toString())){
			partyRequest_up.coverSelf(partyRequest);
			partyRequest_up.setApplyCode(session.get("applyCode").toString());
			partyRequest_up.setUsed("Y");
			partyRequest_up.setU(session.get("userCode").toString());
			partyRequest_up.setUT(dateFormat1.format(new Date()));
			partyRequestService.updatePartyRequest(partyRequest_up);
			error = "请求信息修改成功";
			error = this.getText("request.new.mes_2");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	


	public String deletePartyRequest() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = {id};
		partyRequestList = partyRequestService.findPartyRequestList(" and id=? and used='Y'", value, 0, 0);
		PartyRequest partyRequest_up = partyRequestList.get(0);
		if (partyRequest_up.getApplyCode().equals(session.get("applyCode").toString())){
			partyRequest_up.setUsed("N");
			partyRequest_up.setApplyCode(session.get("applyCode").toString());
			partyRequest_up.setU(session.get("userCode").toString());
			partyRequest_up.setUT(dateFormat1.format(new Date()));
			partyRequestService.updatePartyRequest(partyRequest_up);
			error = "请求信息删除成功";
			error = this.getText("request.new.mes_3");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}

}
