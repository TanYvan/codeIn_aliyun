package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.MyTrainRegView;
import cn.com.zc.model.Train;
import cn.com.zc.model.TrainReg;
import cn.com.zc.service.facade.TrainRegService;
import cn.com.zc.service.facade.TrainService;

public class TrainRegServiceSpringImpl extends EntityDaoHibernate implements
 TrainRegService {
	
	public List<TrainReg> findList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<TrainReg> trainRegList = new ArrayList<TrainReg>();
		String sql = "from TrainReg where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			trainRegList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			trainRegList = super.findByHql(sql, value);
		}
		return trainRegList;
	}

	public void insert(TrainReg trainReg) {
		// TODO Auto-generated method stub
        super.save(trainReg);
	}

	public void update(TrainReg trainReg) {
		// TODO Auto-generated method stub
		super.update(trainReg);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		TrainReg train = new TrainReg();
		train.setId(id);
		super.delete(train);
	}
	
	public int getCounts(String condition,Object[] value){
		List<TrainReg> trainRegList = new ArrayList<TrainReg>();
		String sql = "from TrainReg where (1=1) " + condition;
		trainRegList = super.findByHql(sql, value);
		return trainRegList.size();
	}

	public void updateAll(List<TrainReg> trainRegList) {
		// TODO Auto-generated method stub
		super.saveAll(trainRegList);
	}
	
	public List<MyTrainRegView> findTrainRegViewList(String condition,
			Object[] value, int pageNo, int pageSize) {
		List<MyTrainRegView> myTrainRegViewList = new ArrayList<MyTrainRegView>();
		String sql = "select new cn.com.zc.model.MyTrainRegView(b.title, b.doDate, a.reg_t, a.score) from TrainReg a,Train b where a.used='Y' and a.train_id=b.id  " + condition;
		if (pageNo != 0 && pageSize != 0) {
			myTrainRegViewList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			myTrainRegViewList = super.findByHql(sql, value);
		}
		return myTrainRegViewList;
		
		
	}

}
