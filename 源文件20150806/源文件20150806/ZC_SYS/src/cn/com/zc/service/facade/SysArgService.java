package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.SysArgs;

public interface SysArgService {
	public List<SysArgs> findSysArgList(String condition,Object[] value,int pageNo,int pageSize);

	public void updateSysArgs(SysArgs sysArgs);

	public SysArgs toUpdateSysArgs(int id);

	public int getCounts(String condition,Object[] value);
	
	public String take_0150();
	
	public void flushSysArg();
	
	public void initSysArg();
}
