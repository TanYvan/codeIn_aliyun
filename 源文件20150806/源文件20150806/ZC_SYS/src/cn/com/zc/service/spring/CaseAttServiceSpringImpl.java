package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.CaseAtt;
import cn.com.zc.service.facade.CaseAttService;

public class CaseAttServiceSpringImpl extends EntityDaoHibernate implements
		CaseAttService {

	public void deleteCaseAtt(int id) {
		// TODO Auto-generated method stub
		CaseAtt caseAtt = new CaseAtt();
		caseAtt.setId(id);
		super.delete(caseAtt);
	}

	public List<CaseAtt> findCaseAttList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<CaseAtt> CaseAttList = new ArrayList<CaseAtt>();
		String sql = "from CaseAtt where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			CaseAttList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			CaseAttList = super.findByHql(sql, value);
		}
		return CaseAttList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<CaseAtt> CaseAttList = new ArrayList<CaseAtt>();
		String sql = "from CaseAtt where (1=1) " + condition;
		CaseAttList = super.findByHql(sql, value);
		return CaseAttList.size();
	}

	public void insertCaseAtt(CaseAtt CaseAtt) {
		// TODO Auto-generated method stub
        super.save(CaseAtt);
	}

	public void updateCaseAtt(CaseAtt CaseAtt) {
		// TODO Auto-generated method stub
		super.update(CaseAtt);
	}

}
