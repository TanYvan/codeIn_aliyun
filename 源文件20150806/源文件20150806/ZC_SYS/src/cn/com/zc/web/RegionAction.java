package cn.com.zc.web;

import cn.com.zc.common.*;

public class RegionAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String result;
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	public String regionTree() {
		return SUCCESS;
	}
	
	public String makeTree(){
		if (session.get("language")==null){
			result = App.regionTree;
		}else if (session.get("language").toString().equals("zh_CN")){
			result = App.regionTree;
		}else if (session.get("language").toString().equals("zh_TW")){
			result = App.regionTreeTw;
		}else if (session.get("language").toString().equals("en_US")){
			result = App.regionTreeEn;
		}else{
			result = App.regionTree;
		}
		return "result";
	}
}
