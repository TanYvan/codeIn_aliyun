package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Train;
import cn.com.zc.service.facade.TrainService;

public class TrainServiceSpringImpl extends EntityDaoHibernate implements
 TrainService {
	
	public List<Train> findList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Train> TrainList = new ArrayList<Train>();
		String sql = "from Train where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			TrainList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			TrainList = super.findByHql(sql, value);
		}
		return TrainList;
	}

	public void insert(Train Train) {
		// TODO Auto-generated method stub
        super.save(Train);
	}

	public void update(Train Train) {
		// TODO Auto-generated method stub
		super.update(Train);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		Train train = new Train();
		train.setId(id);
		super.delete(train);
	}
	
	public int getCounts(String condition,Object[] value){
		List<Train> TrainList = new ArrayList<Train>();
		String sql = "from Train where (1=1) " + condition;
		TrainList = super.findByHql(sql, value);
		return TrainList.size();
	}

}
