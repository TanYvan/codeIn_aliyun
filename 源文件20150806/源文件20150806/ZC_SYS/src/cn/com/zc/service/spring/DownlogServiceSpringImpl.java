package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Downlog;
import cn.com.zc.service.facade.DownlogService;

public class DownlogServiceSpringImpl extends EntityDaoHibernate implements
		DownlogService {

	public void deleteDownlog(int id) {
		// TODO Auto-generated method stub
		Downlog Downlog = new Downlog();
		Downlog.setId(id);
		super.delete(Downlog);
	}

	public List<Downlog> findDownlogList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Downlog> DownlogList = new ArrayList<Downlog>();
		String sql = "from Downlog where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			DownlogList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			DownlogList = super.findByHql(sql, value);
		}
		return DownlogList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<Downlog> DownlogList = new ArrayList<Downlog>();
		String sql = "from Downlog where (1=1) " + condition;
		DownlogList = super.findByHql(sql, value);
		return DownlogList.size();
	}

	public void insertDownlog(Downlog Downlog) {
		// TODO Auto-generated method stub
        super.save(Downlog);
	}

	public void updateDownlog(Downlog Downlog) {
		// TODO Auto-generated method stub
		super.update(Downlog);
	}

}
