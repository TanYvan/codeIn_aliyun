package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.QuickMenus;

public interface QuickMenuService {
	public List<QuickMenus> findMenuList(String condition,Object[] value,int pageNo,int pageSize);
	public void insertMenu(QuickMenus menu);
	public void updateMenu(QuickMenus menu);
	public void deleteMenu(int id);
	public int getCounts(String condition, Object[] value);
}
