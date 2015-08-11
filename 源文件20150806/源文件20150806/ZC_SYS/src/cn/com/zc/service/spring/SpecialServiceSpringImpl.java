package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;
import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Special;
import cn.com.zc.service.facade.SpecialService;

public class SpecialServiceSpringImpl extends EntityDaoHibernate implements
		SpecialService {

	public void deleteSpecial(int id) {
		// TODO Auto-generated method stub
		Special special = new Special();
		special.setId(id);
		super.delete(special);
	}

	public List<Special> findSpecialList(String condition, Object[] value,
			int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		List<Special> specialsList = new ArrayList<Special>();
		String sql = "from Special where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			specialsList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			specialsList = super.findByHql(sql, value);
		}
		return specialsList;
	}

	public int getCounts(String condition, Object[] value) {
		List<Special> specialList = new ArrayList<Special>();
		String sql = "from Special where (1=1) " + condition;
		specialList = super.findByHql(sql, value);
		return specialList.size();
	}

	public void insertSpecial(Special special) {
		// TODO Auto-generated method stub
		super.save(special);
	}

	public void updateSpecial(Special special) {
		// TODO Auto-generated method stub
		super.update(special);
	}
}
