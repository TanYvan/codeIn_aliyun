package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Pages;

public interface PageService {
	public List<Pages> findPageList(String condition, Object[] value,
			int pageNo, int pageSize);

	public void insertPage(Pages page);

	public void updatePage(Pages page);

	public void deletePage(int id);

	public int getCounts(String condition, Object[] value);
}
