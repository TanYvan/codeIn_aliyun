package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Contractsign;

public interface ContractsignService {
	public List<Contractsign> findContractsignList(String condition,Object[] value,int pageNo,int pageSize);

	public void insertContractsign(Contractsign contractsign);

	public void updateContractsign(Contractsign contractsign);

	public void deleteContractsign(int id);
	
	public int getCounts(String condition,Object[] value);
}
