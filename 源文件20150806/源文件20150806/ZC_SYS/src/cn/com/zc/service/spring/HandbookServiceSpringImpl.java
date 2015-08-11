package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Handbook;
import cn.com.zc.model.Handbook;
import cn.com.zc.service.facade.HandbookService;

public class HandbookServiceSpringImpl extends EntityDaoHibernate implements
 HandbookService {
	
	public List<Handbook> findList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Handbook> HandbookList = new ArrayList<Handbook>();
		String sql = "from Handbook where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			HandbookList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			HandbookList = super.findByHql(sql, value);
		}
		return HandbookList;
	}

	public void insert(Handbook Handbook) {
		// TODO Auto-generated method stub
        super.save(Handbook);
	}

	public void update(Handbook Handbook) {
		// TODO Auto-generated method stub
		super.update(Handbook);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		Handbook handbook = new Handbook();
		handbook.setId(id);
		super.delete(handbook);
	}
	
	public int getCounts(String condition,Object[] value){
		List<Handbook> HandbookList = new ArrayList<Handbook>();
		String sql = "from Handbook where (1=1) " + condition;
		HandbookList = super.findByHql(sql, value);
		return HandbookList.size();
	}

}
