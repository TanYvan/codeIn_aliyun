package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Party;
import cn.com.zc.service.facade.PartyService;

public class PartyServiceSpringImpl extends EntityDaoHibernate implements
		PartyService {

	public void deleteParty(int id) {
		// TODO Auto-generated method stub
		Party party = new Party();
		party.setId(id);
		super.delete(party);
	}

	public List<Party> findPartyList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Party> PartyList = new ArrayList<Party>();
		String sql = "from Party where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			PartyList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			PartyList = super.findByHql(sql, value);
		}
		return PartyList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<Party> PartyList = new ArrayList<Party>();
		String sql = "from Party where (1=1) " + condition;
		PartyList = super.findByHql(sql, value);
		return PartyList.size();
	}

	public void insertParty(Party Party) {
		// TODO Auto-generated method stub
        super.save(Party);
	}

	public void updateParty(Party Party) {
		// TODO Auto-generated method stub
		super.update(Party);
	}

	public List<Party> findMyPartyList(String condition, Object[] value,
			int pageNo, int pageSize) {
		List<Party> PartyList = new ArrayList<Party>();
		String sql = "select p from Party p,CaseApplyBase ca where ca.applyCode=p.applyCode and ca.status<>0 and p.used='Y' " + condition;
		if (pageNo != 0 && pageSize != 0) {
			PartyList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			PartyList = super.findByHql(sql, value);
		}
		return PartyList;
	}

	public int getMyCounts(String condition, Object[] value) {
		// TODO Auto-generated method stub
		List<Party> PartyList = new ArrayList<Party>();
		String sql = "select p from Party p,CaseApplyBase ca where ca.applyCode=p.applyCode and ca.status<>0 and p.used='Y' " + condition;
		PartyList = super.findByHql(sql, value);
		return PartyList.size();
	}

}
