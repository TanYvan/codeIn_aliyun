package cn.com.zc.web;

import cn.com.zc.common.App;

public class TqMessageAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String tqCode;
	public String getTqCode() {
		return tqCode;
	}

	public void setTqCode(String tqCode) {
		this.tqCode = tqCode;
	}
	
	public String index(){
		sysArgService.initSysArg();
		tqCode = App.sysArgMap.get("3001");
		return SUCCESS;
	}
	

}
