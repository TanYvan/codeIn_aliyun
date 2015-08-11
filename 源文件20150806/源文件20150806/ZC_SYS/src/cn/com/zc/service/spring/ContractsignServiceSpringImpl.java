package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Contractsign;
import cn.com.zc.service.facade.ContractsignService;

public class ContractsignServiceSpringImpl extends EntityDaoHibernate implements
		ContractsignService {

	public void deleteContractsign(int id) {
		// TODO Auto-generated method stub
		Contractsign contractsign = new Contractsign();
		contractsign.setId(id);
		super.delete(contractsign);
	}

	public List<Contractsign> findContractsignList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Contractsign> ContractsignList = new ArrayList<Contractsign>();
		String sql = "from Contractsign where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			ContractsignList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			ContractsignList = super.findByHql(sql, value);
		}
		return ContractsignList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<Contractsign> ContractsignList = new ArrayList<Contractsign>();
		String sql = "from Contractsign where (1=1) " + condition;
		ContractsignList = super.findByHql(sql, value);
		return ContractsignList.size();
	}

	public void insertContractsign(Contractsign Contractsign) {
		// TODO Auto-generated method stub
        super.save(Contractsign);
	}

	public void updateContractsign(Contractsign Contractsign) {
		// TODO Auto-generated method stub
		super.update(Contractsign);
	}

}
