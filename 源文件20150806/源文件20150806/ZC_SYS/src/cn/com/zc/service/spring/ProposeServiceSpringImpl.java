package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Propose;
import cn.com.zc.model.ProposeReply;
import cn.com.zc.service.facade.ProposeService;

public class ProposeServiceSpringImpl extends EntityDaoHibernate implements
		ProposeService {

	public void deletePropose(int id) {
		// TODO Auto-generated method stub
		Propose notify = new Propose();
		notify.setId(id);
		super.delete(notify);
	}

	public List<Propose> findProposeList(String condition, Object[] value,
			int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		List<Propose> ProposeList = new ArrayList<Propose>();
		String sql = "from Propose where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			ProposeList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			ProposeList = super.findByHql(sql, value);
		}
		return ProposeList;
	}
	
	public List<ProposeReply> findProposeReplayList(String condition,Object[] value){
		List<ProposeReply> ProposeReplyList = new ArrayList<ProposeReply>();
		String sql = "from ProposeReply where (1=1) " + condition;	
		ProposeReplyList = super.findByHql(sql, value);
		return ProposeReplyList;
	}

	public int getCounts(String condition, Object[] value) {
		List<Propose> ProposeList = new ArrayList<Propose>();
		String sql = "from Propose where (1=1) " + condition;
		ProposeList = super.findByHql(sql, value);
		return ProposeList.size();
	}

	public void insertPropose(Propose Propose) {
		// TODO Auto-generated method stub
		super.save(Propose);
	}

	public void updatePropose(Propose Propose) {
		// TODO Auto-generated method stub
		super.update(Propose);
	}
	
	public void updateProposeReply(ProposeReply proposeReplay){
		super.save(proposeReplay);
	}

}
