package cn.com.zc.service.spring;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Arbitman;
import cn.com.zc.model.SysArgs;
import cn.com.zc.service.facade.ArbitmanService;

public class ArbitmanServiceSpringImpl extends EntityDaoHibernate implements
		ArbitmanService {

	public void deleteArbitman(int id) {
		// TODO Auto-generated method stub
		Arbitman arbitman = new Arbitman();
		arbitman.setId(id);
		super.delete(arbitman);
	}

	public List<Arbitman> findArbitmanList(String condition, Object[] value,
			int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		List<Arbitman> ArbitmanList = new ArrayList<Arbitman>();
		String sql = "from Arbitman where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			ArbitmanList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			ArbitmanList = super.findByHql(sql, value);
		}
		return ArbitmanList;
	}

	public int getCounts(String condition, Object[] value) {
		List<Arbitman> ArbitmanList = new ArrayList<Arbitman>();
		String sql = "from Arbitman where (1=1) " + condition;
		ArbitmanList = super.findByHql(sql, value);
		return ArbitmanList.size();
	}

	public void insertArbitman(Arbitman Arbitman) {
		// TODO Auto-generated method stub
		super.save(Arbitman);
	}

	public void updateArbitman(Arbitman Arbitman) {
		// TODO Auto-generated method stub
		super.update(Arbitman);
	}

	public String takeCode() {
		List<SysArgs> SysArgList = new ArrayList<SysArgs>();
		String hql = " from SysArgs where code='2010'";
		SysArgList = super.findByHql(hql, null);
		String code = "1";
		if (SysArgList.size()>0){
			SysArgs Sys = SysArgList.get(0);
			Integer c = Integer.parseInt(Sys.getVal());
			c = c+ 1;
			Sys.setVal(c.toString());
			super.update(Sys);
			code = c.toString();
		}
		return "a" + code;
	}
}
