package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.PartyRequest;
import cn.com.zc.service.facade.PartyRequestService;

public class PartyRequestServiceSpringImpl extends EntityDaoHibernate implements
		PartyRequestService {

	public void deletePartyRequest(int id) {
		// TODO Auto-generated method stub
		PartyRequest partyRequest = new PartyRequest();
		partyRequest.setId(id);
		super.delete(partyRequest);
	}

	public List<PartyRequest> findPartyRequestList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<PartyRequest> PartyRequestList = new ArrayList<PartyRequest>();
		String sql = "from PartyRequest where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			PartyRequestList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			PartyRequestList = super.findByHql(sql, value);
		}
		return PartyRequestList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<PartyRequest> PartyRequestList = new ArrayList<PartyRequest>();
		String sql = "from PartyRequest where (1=1) " + condition;
		PartyRequestList = super.findByHql(sql, value);
		return PartyRequestList.size();
	}

	public void insertPartyRequest(PartyRequest PartyRequest) {
		// TODO Auto-generated method stub
        super.save(PartyRequest);
	}

	public void updatePartyRequest(PartyRequest PartyRequest) {
		// TODO Auto-generated method stub
		super.update(PartyRequest);
	}

}
