package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.ArbitmanPublic;
import cn.com.zc.model.ArbitmanPublicView;
import cn.com.zc.service.facade.ArbitmanPublicService;

public class ArbitmanPublicServiceSpringImpl extends EntityDaoHibernate implements 
ArbitmanPublicService {

	public void delete(int id) {
		// TODO Auto-generated method stub
		ArbitmanPublic arbitmanPublic = new ArbitmanPublic();
		arbitmanPublic.setId(id);
		super.delete(arbitmanPublic);
	}

	public List<ArbitmanPublic> findList(String condition, Object[] value, int pageNo, int pageSize) {
			// TODO Auto-generated method stub
			List<ArbitmanPublic> ArbitmanPublicList = new ArrayList<ArbitmanPublic>();
			String sql = "from ArbitmanPublic where (1=1) " + condition;
			if (pageNo != 0 && pageSize != 0) {
				ArbitmanPublicList = super.findByHql(sql, value, pageNo, pageSize);
			} else {
				ArbitmanPublicList = super.findByHql(sql, value);
			}
			return ArbitmanPublicList;
	}

	public int getCounts(String condition, Object[] value) {
		List<ArbitmanPublic> ArbitmanPublicList = new ArrayList<ArbitmanPublic>();
		String sql = "from ArbitmanPublic where (1=1) " + condition;
		ArbitmanPublicList = super.findByHql(sql, value);
		return ArbitmanPublicList.size();
	}

	public void insert(ArbitmanPublic ArbitmanPublic) {
		// TODO Auto-generated method stub
		super.save(ArbitmanPublic);
		
	}

	public void update(ArbitmanPublic ArbitmanPublic) {
		// TODO Auto-generated method stub
		super.update(ArbitmanPublic);
		
	}

	public List<ArbitmanPublicView> findNowList(String condition,
			Object[] value, int pageNo, int pageSize) {
		List<ArbitmanPublicView> ArbitmanPublicViewList = new ArrayList<ArbitmanPublicView>();
		String sql = "select  new cn.com.zc.model.ArbitmanPublicView(a.id,a.code,a.spell,a.name,a.name_idcard,a.name_idcard_en,a.city,a.city_en,a.country,a.country_en,a.special,a.special_en,a.identity,a.role_code,a.used) from ArbitmanPublic a , ArbitmanPublicNow n where a.used='Y' and n.used='Y' and a.code=n.arbitman_num  " + condition;
		if (pageNo != 0 && pageSize != 0) {
			ArbitmanPublicViewList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			ArbitmanPublicViewList = super.findByHql(sql, value);
		}
		return ArbitmanPublicViewList;
	}

	public int getNowCounts(String condition, Object[] value) {
		List<ArbitmanPublicView> ArbitmanPublicViewList = new ArrayList<ArbitmanPublicView>();
		String sql = "select new cn.com.zc.model.ArbitmanPublicView(a.id) from ArbitmanPublic a , ArbitmanPublicNow n where a.used='Y' and n.used='Y' and a.code=n.arbitman_num  " + condition;
		ArbitmanPublicViewList = super.findByHql(sql, value);
		return ArbitmanPublicViewList.size();
	}

}
