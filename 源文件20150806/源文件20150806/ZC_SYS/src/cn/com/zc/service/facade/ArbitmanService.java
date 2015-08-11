package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Arbitman;

public interface ArbitmanService {
	public List<Arbitman> findArbitmanList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertArbitman(Arbitman arbitman);

	public void updateArbitman(Arbitman arbitman);

	public void deleteArbitman(int id);
	
	public int getCounts(String condition,Object[] value);
	
	public String takeCode();
}
