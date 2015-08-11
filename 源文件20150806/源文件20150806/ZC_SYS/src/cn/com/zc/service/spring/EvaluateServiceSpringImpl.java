package cn.com.zc.service.spring;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Evaluate;
import cn.com.zc.service.facade.EvaluateService;

public class EvaluateServiceSpringImpl extends EntityDaoHibernate implements
		EvaluateService {

	public void deleteEvaluate(int id) {
		// TODO Auto-generated method stub
		Evaluate evaluate = new Evaluate();
		evaluate.setId(id);
		super.delete(evaluate);
	}

	public List<Evaluate> findEvaluateList(String condition, Object[] value,
			int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		List<Evaluate> EvaluateList = new ArrayList<Evaluate>();
		String sql = "from Evaluate where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			EvaluateList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			EvaluateList = super.findByHql(sql, value);
		}
		return EvaluateList;
	}

	public int getCounts(String condition, Object[] value) {
		List<Evaluate> EvaluateList = new ArrayList<Evaluate>();
		String sql = "from Evaluate where (1=1) " + condition;
		EvaluateList = super.findByHql(sql, value);
		return EvaluateList.size();
	}

	public void insertEvaluate(Evaluate Evaluate) {
		// TODO Auto-generated method stub
		super.save(Evaluate);
	}

	public void updateEvaluate(Evaluate Evaluate) {
		// TODO Auto-generated method stub
		super.update(Evaluate);
	}
}
