package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Industry;

public interface IndustryService {
	public List<Industry> findIndustryList(String condition,Object[] value);

	public void insertIndustry(Industry industry);

	public void updateIndustry(Industry industry);

	public void deleteIndustry(int id);

}
