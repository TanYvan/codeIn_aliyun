package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.CaseApplyBase;

public interface CaseApplyBaseService {
	public List<CaseApplyBase> findCaseApplyBaseList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertCaseApplyBase(CaseApplyBase caseApplyBase);

	public void updateCaseApplyBase(CaseApplyBase caseApplyBase);

	public void deleteCaseApplyBase(int id);
	
	public int getCounts(String condition,Object[] value);
}
