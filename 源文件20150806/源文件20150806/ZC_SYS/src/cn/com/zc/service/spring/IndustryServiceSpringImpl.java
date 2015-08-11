package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Industry;
import cn.com.zc.service.facade.IndustryService;

public class IndustryServiceSpringImpl extends EntityDaoHibernate implements
		IndustryService {

	public void deleteIndustry(int id) {
		// TODO Auto-generated method stub
		Industry industry = new Industry();
		industry.setId(id);
		super.delete(industry);
	}

	public List<Industry> findIndustryList(String condition,Object[] value) {
		// TODO Auto-generated method stub
		List<Industry> IndustryList = new ArrayList<Industry>();
		String sql = "from Industry where (1=1) " + condition;
		IndustryList = super.findByHql(sql,value);
		return IndustryList;
	}

	public void insertIndustry(Industry Industry) {
		// TODO Auto-generated method stub
		super.save(Industry);
	}

	public void updateIndustry(Industry Industry) {
		// TODO Auto-generated method stub
		super.update(Industry);
	}
}
