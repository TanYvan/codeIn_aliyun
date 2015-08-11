package cn.com.zc.service.spring;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Educate;
import cn.com.zc.service.facade.EducateService;

public class EducateServiceSpringImpl extends EntityDaoHibernate implements
		EducateService {

	public void deleteEducate(int id) {
		// TODO Auto-generated method stub
		Educate educate = new Educate();
		educate.setId(id);
		super.delete(educate);
	}

	public List<Educate> findEducateList(String condition, Object[] value,
			int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		List<Educate> EducateList = new ArrayList<Educate>();
		String sql = "from Educate where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			EducateList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			EducateList = super.findByHql(sql, value);
		}
		return EducateList;
	}

	public int getCounts(String condition, Object[] value) {
		List<Educate> EducateList = new ArrayList<Educate>();
		String sql = "from Educate where (1=1) " + condition;
		EducateList = super.findByHql(sql, value);
		return EducateList.size();
	}

	public void insertEducate(Educate Educate) {
		// TODO Auto-generated method stub
		super.save(Educate);
	}

	public void updateEducate(Educate Educate) {
		// TODO Auto-generated method stub
		super.update(Educate);
	}
}
