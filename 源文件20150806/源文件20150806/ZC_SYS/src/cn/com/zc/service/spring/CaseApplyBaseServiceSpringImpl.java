package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.CaseApplyBase;
import cn.com.zc.service.facade.CaseApplyBaseService;

public class CaseApplyBaseServiceSpringImpl extends EntityDaoHibernate implements
		CaseApplyBaseService {

	public void deleteCaseApplyBase(int id) {
		// TODO Auto-generated method stub
		CaseApplyBase caseApplyBase = new CaseApplyBase();
		caseApplyBase.setId(id);
		super.delete(caseApplyBase);
	}

	public List<CaseApplyBase> findCaseApplyBaseList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<CaseApplyBase> CaseApplyBaseList = new ArrayList<CaseApplyBase>();
		String sql = " from CaseApplyBase where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			CaseApplyBaseList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			CaseApplyBaseList = super.findByHql(sql, value);
		}
		return CaseApplyBaseList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<CaseApplyBase> CaseApplyBaseList = new ArrayList<CaseApplyBase>();
		String sql = "from CaseApplyBase where (1=1) " + condition;
		CaseApplyBaseList = super.findByHql(sql, value);
		return CaseApplyBaseList.size();
	}

	public void insertCaseApplyBase(CaseApplyBase CaseApplyBase) {
		// TODO Auto-generated method stub
        super.save(CaseApplyBase);
	}

	public void updateCaseApplyBase(CaseApplyBase CaseApplyBase) {
		// TODO Auto-generated method stub
		super.update(CaseApplyBase);
	}

}
