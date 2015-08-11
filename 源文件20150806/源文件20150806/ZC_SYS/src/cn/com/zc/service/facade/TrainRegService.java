package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.MyTrainRegView;
import cn.com.zc.model.TrainReg;

public interface TrainRegService {
	public List<TrainReg> findList(String condition,Object[] value,int pageNo,int pageSize);

	public void insert(TrainReg trainReg);

	public void update(TrainReg trainReg);

	public void delete(int id);
	
	public int getCounts(String condition,Object[] value);
	
	public void updateAll(List<TrainReg> trainRegList);
	
	public List<MyTrainRegView> findTrainRegViewList(String condition,Object[] value, int pageNo, int pageSize);
}
