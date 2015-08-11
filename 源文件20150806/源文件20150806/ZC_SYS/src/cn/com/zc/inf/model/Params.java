package cn.com.zc.inf.model;

import java.util.ArrayList;
import java.util.List;

public class Params {
	private List<Param> param;

	public Param getParam(Integer i) {
		return param.get(i);
	}
		
	public List<Param> getParam() {
		return param;
	}

	public void setParam(List<Param> param) {
		this.param = param;
	}

}
