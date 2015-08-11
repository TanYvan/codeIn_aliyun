package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Wuser;

public interface WuserService {
	public List<Wuser> findWuserList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertWuser(Wuser wuser);

	public void updateWuser(Wuser wuser);

	public void deleteWuser(int id);
	
	public int getCounts(String condition,Object[] value);
	
	public String takeCode();
	
	public String check_3(String code);
}
