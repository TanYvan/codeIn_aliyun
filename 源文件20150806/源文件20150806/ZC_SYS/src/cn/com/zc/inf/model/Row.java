package cn.com.zc.inf.model;

import java.util.List;

public class Row {
	private List<Value> value;
	
	public String getData(String name) {
        String rrr = null;
		for(int i = 0; i < value.size(); i++)  
		{  
			if (value.get(i).getName().toLowerCase().equals(name.toLowerCase()))
			{
				return value.get(i).getVal();
			}
		} 
		return rrr;
	}
	
	public List<Value> getValue() {
		return value;
	}

	public void setValue(List<Value> value) {
		this.value = value;
	}

}
