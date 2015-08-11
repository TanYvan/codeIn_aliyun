package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.SysArgs;
import cn.com.zc.service.facade.SysArgService;

public class SysArgServiceSpringImpl extends EntityDaoHibernate implements SysArgService{

	public List<SysArgs> findSysArgList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<SysArgs> sysArgList=new ArrayList<SysArgs>();
		String sql = "from SysArgs where (1=1) " + condition;
		if (pageNo != 0 && pageSize != 0) {
			sysArgList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			sysArgList = super.findByHql(sql, value);
		}
		return sysArgList;
	}

	public int getCounts(String condition, Object[] value) {
		// TODO Auto-generated method stub
		List<SysArgs> sysArgList=new ArrayList<SysArgs>();
		String sql = "from SysArgs where (1=1) " + condition;
		sysArgList = super.findByHql(sql, value);
		return sysArgList.size();
	}

	public SysArgs toUpdateSysArgs(int id) {
		// TODO Auto-generated method stub
		Object[] value={id};
		String sql="from SysArgs where id=?";
		List<SysArgs> sysArgList=super.findByHql(sql, value);
		return sysArgList.get(0);
	}

	public void updateSysArgs(SysArgs sysArgs) {
		// TODO Auto-generated method stub
		super.update(sysArgs);
	}

	public String take_0150() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyyMMdd");
		Object[] value = {"0150"};
		String sql = "from SysArgs where code=?";
		List<SysArgs> sysArgList = super.findByHql(sql, value);
		SysArgs s = sysArgList.get(0);
		String[] code_array = s.getVal().split("-");
		String code_first = dateFormat1.format(new Date());
		String code = "";
		if (code_array[0].equals(code_first)){
			Integer num = Integer.parseInt(code_array[1]);
			num = num + 1;
			code = code_array[0] + "-" + num.toString();
		}else{
			code = code_first + "-1";	
		}
		s.setVal(code);
		super.update(s);
		return code;
	}

	public void flushSysArg(){
		HashMap<String,String> tmp = new HashMap<String,String>();
		Object[] value = null;
		List<SysArgs> sysList = new ArrayList<SysArgs>();
		sysList = super.findByHql("from SysArgs",value);
		Iterator iter = sysList.iterator();
		while(iter.hasNext()){
			SysArgs sys = (SysArgs) iter.next();
			tmp.put(sys.getCode(), sys.getVal());
		}		
		App.sysArgMap = tmp;
	}
	public void initSysArg(){
		if (App.sysArgMap==null){
			flushSysArg();
		}
	}
	
}
