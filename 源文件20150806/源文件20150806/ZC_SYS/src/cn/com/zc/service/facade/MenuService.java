package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Menus;

public interface MenuService {
	public List<Menus> findMenuList(String condition,Object[] value,int pageNo,int pageSize);
	public void insertMenu(Menus menu);
	public void updateMenu(Menus menu);
	public void deleteMenu(int id);
	public int getCounts(String condition, Object[] value);
	public String menuTree(String roleCode);
	public String menuTreeNode(String outString,String parentCode,String roleCode);
	public void flushMenu();
	public void initMenu();
}
