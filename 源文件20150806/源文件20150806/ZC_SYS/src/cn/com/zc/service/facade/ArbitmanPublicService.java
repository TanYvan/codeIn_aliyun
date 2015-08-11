package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.ArbitmanPublic;
import cn.com.zc.model.ArbitmanPublicView;

public interface ArbitmanPublicService {
	public List<ArbitmanPublic> findList(String condition, Object[] value, int pageNo, int pageSize);

	public void insert(ArbitmanPublic arbitmanPublic);

	public void update(ArbitmanPublic arbitmanPublic);

	public void delete(int id);

	public int getCounts(String condition,Object[] value);
	
	public List<ArbitmanPublicView> findNowList(String condition, Object[] value, int pageNo, int pageSize);
	
	public int getNowCounts(String condition,Object[] value);
}
