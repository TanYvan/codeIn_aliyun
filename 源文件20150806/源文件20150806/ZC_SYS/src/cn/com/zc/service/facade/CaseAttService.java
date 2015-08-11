package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.CaseAtt;

public interface CaseAttService {
	public List<CaseAtt> findCaseAttList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertCaseAtt(CaseAtt caseAtt);

	public void updateCaseAtt(CaseAtt caseAtt);

	public void deleteCaseAtt(int id);
	
	public int getCounts(String condition,Object[] value);
}
