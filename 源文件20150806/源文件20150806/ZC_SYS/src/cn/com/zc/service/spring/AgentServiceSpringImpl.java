package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Agent;
import cn.com.zc.model.Party;
import cn.com.zc.service.facade.AgentService;

public class AgentServiceSpringImpl extends EntityDaoHibernate implements
		AgentService {

	public void deleteAgent(int id) {
		// TODO Auto-generated method stub
		Agent agent = new Agent();
		agent.setId(id);
		super.delete(agent);
	}

	public List<Agent> findAgentList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Agent> AgentList = new ArrayList<Agent>();
		String sql = "from Agent where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			AgentList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			AgentList = super.findByHql(sql, value);
		}
		return AgentList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<Agent> AgentList = new ArrayList<Agent>();
		String sql = "from Agent where (1=1) " + condition;
		AgentList = super.findByHql(sql, value);
		return AgentList.size();
	}

	public void insertAgent(Agent Agent) {
		// TODO Auto-generated method stub
        super.save(Agent);
	}

	public void updateAgent(Agent Agent) {
		// TODO Auto-generated method stub
		super.update(Agent);
	}

	public List<Agent> findMyAgentList(String condition, Object[] value,
			int pageNo, int pageSize) {
		List<Agent> agentList = new ArrayList<Agent>();
		String sql = "select p from Agent p,CaseApplyBase ca where ca.applyCode=p.applyCode and ca.status<>0 and p.used='Y' " + condition;
		if (pageNo != 0 && pageSize != 0) {
			agentList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			agentList = super.findByHql(sql, value);
		}
		return agentList;
	}

	public int getMyCounts(String condition, Object[] value) {
		// TODO Auto-generated method stub
		List<Agent> agentList = new ArrayList<Agent>();
		String sql = "select p from Agent p,CaseApplyBase ca where ca.applyCode=p.applyCode and ca.status<>0 and p.used='Y' " + condition;
		agentList = super.findByHql(sql, value);
		return agentList.size();
	}
	
}
