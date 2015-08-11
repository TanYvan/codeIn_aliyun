package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Handbook;

public interface HandbookService {
	public List<Handbook> findList(String condition,Object[] value,int pageNo,int pageSize);

	public void insert(Handbook handbook);

	public void update(Handbook handbook);

	public void delete(int id);
	
	public int getCounts(String condition,Object[] value);
}
