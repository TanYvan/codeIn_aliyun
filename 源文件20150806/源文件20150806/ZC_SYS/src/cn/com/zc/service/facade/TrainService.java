package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Train;

public interface TrainService {
	public List<Train> findList(String condition,Object[] value,int pageNo,int pageSize);

	public void insert(Train train);

	public void update(Train train);

	public void delete(int id);
	
	public int getCounts(String condition,Object[] value);
}
