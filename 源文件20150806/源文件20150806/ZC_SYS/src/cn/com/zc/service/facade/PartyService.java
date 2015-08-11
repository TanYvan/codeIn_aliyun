package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Party;

public interface PartyService {
	public List<Party> findPartyList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertParty(Party party);

	public void updateParty(Party party);

	public void deleteParty(int id);
	
	public int getCounts(String condition,Object[] value);
	
	public List<Party> findMyPartyList(String condition,Object[] value,int pageNo,int pageSize);
	
	public int getMyCounts(String condition,Object[] value);
}
