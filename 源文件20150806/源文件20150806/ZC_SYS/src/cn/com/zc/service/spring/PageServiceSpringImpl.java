package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Pages;
import cn.com.zc.service.facade.PageService;

public class PageServiceSpringImpl extends EntityDaoHibernate implements
		PageService {
	public List<Pages> findPageList(String condition, Object[] value,
			int pageNo, int pageSize) {
		List<Pages> pageList = new ArrayList<Pages>();
		StringBuffer sql = new StringBuffer();
		sql.append("from Pages where (1=1) ");
		sql.append(condition);
		if (pageNo != 0 && pageSize != 0) {
			pageList = super.findByHql(sql.toString(), value, pageNo, pageSize);
		} else {
			pageList = super.findByHql(sql.toString(), value);
		}
		return pageList;
	}

	public int getCounts(String condition, Object[] value) {
		List<Pages> pageList = new ArrayList<Pages>();
		StringBuffer sql = new StringBuffer();
		sql.append("from Pages where (1=1) ");
		sql.append(condition);
		pageList = super.findByHql(sql.toString(), value);
		return pageList.size();
	}

	public void insertPage(Pages page) {
		super.save(page);
		super.flush();
	}

	public void updatePage(Pages page) {
		super.update(page);
		super.flush();
	}

	public void deletePage(int id) {
		Pages page = new Pages();
		page.setId(id);
		super.delete(page);
		super.flush();
	}
}
