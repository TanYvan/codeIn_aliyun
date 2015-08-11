package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Duties;
import cn.com.zc.service.facade.DutiesService;

public class DutiesServiceSpringImpl extends EntityDaoHibernate implements
		DutiesService {

	public int getCounts(String condition, Object[] value) {
		// TODO Auto-generated method stub
		List<Duties> dutyList = new ArrayList<Duties>();
		StringBuffer sql = new StringBuffer();
		sql.append("from Duties where (1=1) ");
		sql.append(condition);
		dutyList = super.findByHql(sql.toString(), value);
		return dutyList.size();
	}

	public List<Duties> getDutyList(String condition, Object[] value,
			int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		List<Duties> dutyList = new ArrayList<Duties>();
		StringBuffer sql = new StringBuffer();
		sql.append("from Duties where (1=1) ");
		sql.append(condition);
		if (pageNo != 0 && pageSize != 0) {
			dutyList = super.findByHql(sql.toString(), value, pageNo, pageSize);
		} else {
			dutyList = super.findByHql(sql.toString(), value);
		}
		return dutyList;
	}

}
