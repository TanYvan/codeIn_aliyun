package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.ArbitmanPublicNow;
import cn.com.zc.service.facade.ArbitmanPublicNowService;

public class ArbitmanPublicNowServiceSpringImpl extends EntityDaoHibernate implements 
ArbitmanPublicNowService {

	public void delete(int id) {
		// TODO Auto-generated method stub
		ArbitmanPublicNow arbitmanPublicNow = new ArbitmanPublicNow();
		arbitmanPublicNow.setId(id);
		super.delete(arbitmanPublicNow);
	}

	public List<ArbitmanPublicNow> findList(String condition, Object[] value, int pageNo, int pageSize) {
			// TODO Auto-generated method stub
			List<ArbitmanPublicNow> ArbitmanPublicNowList = new ArrayList<ArbitmanPublicNow>();
			String sql = "from ArbitmanPublicNow where (1=1) " + condition;
			if (pageNo != 0 && pageSize != 0) {
				ArbitmanPublicNowList = super.findByHql(sql, value, pageNo, pageSize);
			} else {
				ArbitmanPublicNowList = super.findByHql(sql, value);
			}
			return ArbitmanPublicNowList;
	}

	public int getCounts(String condition, Object[] value) {
		List<ArbitmanPublicNow> ArbitmanPublicNowList = new ArrayList<ArbitmanPublicNow>();
		String sql = "from ArbitmanPublicNow where (1=1) " + condition;
		ArbitmanPublicNowList = super.findByHql(sql, value);
		return ArbitmanPublicNowList.size();
	}

	public void insert(ArbitmanPublicNow arbitmanPublicNow) {
		// TODO Auto-generated method stub
		super.save(arbitmanPublicNow);
		
	}

	public void update(ArbitmanPublicNow arbitmanPublicNow) {
		// TODO Auto-generated method stub
		super.update(arbitmanPublicNow);
		
	}

}
