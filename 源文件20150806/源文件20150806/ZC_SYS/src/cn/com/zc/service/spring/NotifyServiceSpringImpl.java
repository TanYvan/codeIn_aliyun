package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Notify;
import cn.com.zc.service.facade.NotifyService;

public class NotifyServiceSpringImpl extends EntityDaoHibernate implements
		NotifyService {

	public void deleteNotify(int id) {
		// TODO Auto-generated method stub
		Notify notify = new Notify();
		notify.setId(id);
		super.delete(notify);
	}

	public List<Notify> findNotifyList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Notify> NotifyList = new ArrayList<Notify>();
		String sql = "from Notify where (active=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			NotifyList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			NotifyList = super.findByHql(sql, value);
		}
		return NotifyList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<Notify> NotifyList = new ArrayList<Notify>();
		String sql = "from Notify where (1=1) " + condition;
		NotifyList = super.findByHql(sql, value);
		return NotifyList.size();
	}

	public void insertNotify(Notify Notify) {
		// TODO Auto-generated method stub
        super.save(Notify);
	}

	public void updateNotify(Notify Notify) {
		// TODO Auto-generated method stub
		super.update(Notify);
	}

}
