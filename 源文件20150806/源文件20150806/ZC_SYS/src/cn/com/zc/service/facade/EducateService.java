package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Educate;

public interface EducateService {
	public List<Educate> findEducateList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertEducate(Educate educate);

	public void updateEducate(Educate educate);

	public void deleteEducate(int id);
	
	public int getCounts(String condition,Object[] value);
	
}
