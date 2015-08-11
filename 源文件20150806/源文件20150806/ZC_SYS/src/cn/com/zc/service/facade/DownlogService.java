package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Downlog;

public interface DownlogService {
	public List<Downlog> findDownlogList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertDownlog(Downlog Downlog);

	public void updateDownlog(Downlog Downlog);

	public void deleteDownlog(int id);
	
	public int getCounts(String condition,Object[] value);
}
