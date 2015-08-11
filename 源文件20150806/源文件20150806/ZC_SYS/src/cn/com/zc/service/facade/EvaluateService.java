package cn.com.zc.service.facade;

import java.util.List;
import cn.com.zc.model.Evaluate;

public interface EvaluateService {
	public List<Evaluate> findEvaluateList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertEvaluate(Evaluate educate);

	public void updateEvaluate(Evaluate educate);

	public void deleteEvaluate(int id);
	
	public int getCounts(String condition,Object[] value);
	
}
