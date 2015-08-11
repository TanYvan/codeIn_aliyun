package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.SysArgs;
import cn.com.zc.model.Wuser;
import cn.com.zc.service.facade.WuserService;

public class WuserServiceSpringImpl extends EntityDaoHibernate implements
		WuserService {

	public void deleteWuser(int id) {
		// TODO Auto-generated method stub
		Wuser wuser = new Wuser();
		wuser.setId(id);
		super.delete(wuser);
	}

	public List<Wuser> findWuserList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Wuser> WuserList = new ArrayList<Wuser>();
		String sql = "from Wuser where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			WuserList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			WuserList = super.findByHql(sql, value);
		}
		return WuserList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<Wuser> WuserList = new ArrayList<Wuser>();
		String sql = "from Wuser where (1=1) " + condition;
		WuserList = super.findByHql(sql, value);
		return WuserList.size();
	}

	public void insertWuser(Wuser Wuser) {
		// TODO Auto-generated method stub
        super.save(Wuser);
	}

	public void updateWuser(Wuser Wuser) {
		// TODO Auto-generated method stub
		super.update(Wuser);
	}

	public String takeCode() {
		List<SysArgs> SysArgList = new ArrayList<SysArgs>();
		String hql = " from SysArgs where code='2011'";
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
	
	public String check_3(String code) {
		String r = "1";
		if (code==null){
		  code="";
		}
		code = code.trim();
		if (code.equals("")){
			r = "0";
		}
		else{
			List<Wuser> WuserList = new ArrayList<Wuser>();
			String hql = " from Wuser where code=?";
			Object[] value = {code};
			WuserList = super.findByHql(hql, value);
			if (WuserList.size()>0){
				r = "0";
			}
		}
		return r;
	}
}
