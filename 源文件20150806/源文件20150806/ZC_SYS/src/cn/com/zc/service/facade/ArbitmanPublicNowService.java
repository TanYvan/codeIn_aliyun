package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.ArbitmanPublicNow;

public interface ArbitmanPublicNowService {
	public List<ArbitmanPublicNow> findList(String condition, Object[] value, int pageNo, int pageSize);

	public void insert(ArbitmanPublicNow arbitmanPublicNow);

	public void update(ArbitmanPublicNow arbitmanPublicNow);

	public void delete(int id);
	
	public int getCounts(String condition,Object[] value);

}
