package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Menus;
import cn.com.zc.model.QuickMenus;
import cn.com.zc.service.facade.QuickMenuService;

public class QuickMenuServiceSpringImpl extends EntityDaoHibernate implements
		QuickMenuService {

	public void deleteMenu(int id) {
		// TODO Auto-generated method stub
		QuickMenus menu = new QuickMenus();
		menu.setId(id);
		super.delete(menu);
	}

	public List<QuickMenus> findMenuList(String condition, Object[] value,
			int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		List<QuickMenus> menuList = new ArrayList<QuickMenus>();
		String sql = "from QuickMenus where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			menuList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			menuList = super.findByHql(sql, value);
		}
		return menuList;
	}

	public void insertMenu(QuickMenus menu) {
		// TODO Auto-generated method stub
		super.save(menu);
	}

	public void updateMenu(QuickMenus menu) {
		// TODO Auto-generated method stub
		super.update(menu);
	}

	public int getCounts(String condition, Object[] value) {
		List<Menus> menuList = new ArrayList<Menus>();
		StringBuffer sql = new StringBuffer();
		sql.append("from QuickMenus where (1=1) ");
		sql.append(condition);
		menuList = super.findByHql(sql.toString(), value);
		return menuList.size();
	}


}
