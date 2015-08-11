package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.PartyRequest;

public interface PartyRequestService {
	public List<PartyRequest> findPartyRequestList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertPartyRequest(PartyRequest partyRequest);

	public void updatePartyRequest(PartyRequest partyRequest);

	public void deletePartyRequest(int id);
	
	public int getCounts(String condition,Object[] value);
}
