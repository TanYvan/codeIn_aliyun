package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Propose;
import cn.com.zc.model.ProposeReply;

public interface ProposeService {
	public List<Propose> findProposeList(String condition,Object[] value,int pageNo,int pageSize);
	
	public List<ProposeReply> findProposeReplayList(String condition,Object[] value);

	public void insertPropose(Propose propose);

	public void updatePropose(Propose propose);
	
	public void updateProposeReply(ProposeReply proposeReplay);

	public void deletePropose(int id);
	
	public int getCounts(String condition,Object[] value);
}
