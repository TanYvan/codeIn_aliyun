package cn.com.zc.util;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import cn.com.zc.model.Propose;

public class ListToJson {

	public static String change(int total,List list){
		JsonConfig jsonConfig = new JsonConfig();
        jsonConfig.registerJsonValueProcessor(Date.class , new JsonDateValueProcessor());
        JSONArray json = JSONArray.fromObject(list, jsonConfig);
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("total",total);
        jsonObject.put("rows", json);
        return jsonObject.toString();
	}
	
	public static void main(String[] args){
		List<Propose> proposes=new ArrayList<Propose>();
	    Propose propose=new Propose();
	    propose.setId(1);
	    propose.setContent("222");
	    //propose.setTime(new Date());
	    proposes.add(propose);
	    propose.setId(2);
	    propose.setContent("2222");
	    proposes.add(propose);
	    System.out.println(change(12,proposes));    
	}
}
