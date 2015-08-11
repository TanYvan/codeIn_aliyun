package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Agent;
import cn.com.zc.model.Party;

public interface AgentService {
	public List<Agent> findAgentList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertAgent(Agent agent);

	public void updateAgent(Agent agent);

	public void deleteAgent(int id);
	
	public int getCounts(String condition,Object[] value);
	
	public List<Agent> findMyAgentList(String condition,Object[] value,int pageNo,int pageSize);
	
	public int getMyCounts(String condition,Object[] value);
	
}
