package cn.com.zc.inf;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.inf.model.DataSet;
import cn.com.zc.inf.model.Param;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.inf.model.Row;
import cn.com.zc.inf.model.Value;

public class test {

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {
		//create();
		//update();
		//update_all();
		//find_all();
		paginate_jr();
		page_bar();
		
	}
	
	public static void create() throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("pages");
		List<Value> values =  new ArrayList<Value>();
		values.add(new Value("code","aaa"));
		values.add(new Value("name","bbb"));
		req.setValues(values);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.create(req);
		System.out.println("Sql----------------------------");
		System.out.println(rp.getSql());
		System.out.println("status----------------------------");
		System.out.println(rp.getStatus());
	}
	
	public static void update() throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("pages");
		req.setId("2");
		List<Value> values = new ArrayList<Value>();
		values.add(new Value("code","cccccccc"));
		values.add(new Value("name","dddddddd"));
		req.setValues(values);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.update(req);
		System.out.println("Sql----------------------------");
		System.out.println(rp.getSql());
		System.out.println("status----------------------------");
		System.out.println(rp.getStatus());
	}
	
	public static void update_all() throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("pages");
		List<Value> values = new ArrayList<Value>();
		values.add(new Value("code","cccccccc"));
		values.add(new Value("name","dddddddd"));
		req.setValues(values);
		List<String> conditions =  new ArrayList<String>();
		conditions.add("code=?");
		conditions.add("aaa");
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.update_all(req);
		System.out.println("Sql----------------------------");
		System.out.println(rp.getSql());
		System.out.println("status----------------------------");
		System.out.println(rp.getStatus());
	}
	
	public static void find_all() throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("pages");
		//req.setSelect("id as idid,code as codecode");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("id=?");
		conditions.add("1");
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		System.out.println("Sql----------------------------");
		System.out.println(rp.getSql());
		if (rp.getStatus().equals("1")){
			System.out.println("Dataset------------------------");
			System.out.println(rp.getDataset().getSize());
			DataSet ds= rp.getDataset();
			System.out.println("遍历方法1---------------------------");
			for(int i = 0; i < Integer.parseInt(ds.getSize()); i++)  
			{  
				System.out.println(ds.getRow(i).getData("id"));
				System.out.println(ds.getRow(i).getData("code"));
			}	
		
			System.out.println("遍历方法2---------------------------");
			for(int i = 0; i < Integer.parseInt(ds.getSize()); i++)  
			{  
				System.out.println(ds.getData(i,"id"));
				System.out.println(ds.getData(i,"code"));
			}	
		}
	}
	
	public static void paginate_jr() throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("pages");
		//req.setSelect("id as idid,code as codecode");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("id<?");
		conditions.add("1000");
		req.setConditions(conditions);
		List<Param> params =  new ArrayList<Param>();
		params.add(new Param("a","aa"));
		params.add(new Param("b","bb"));
		//params.add(new Param("c","cc"));
		req.setParams(params);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.paginate_jr(req);
		System.out.println("Sql1----------------------------");
		System.out.println(rp.getSql1());
		System.out.println("Sql2----------------------------");
		System.out.println(rp.getSql2());
		if (rp.getStatus().equals("1")){
			System.out.println("Dataset------------------------");
			System.out.println(rp.getDataset().getSize());
			
			DataSet ds= rp.getDataset();
			System.out.println("遍历方法1---------------------------");
			for(int i = 0; i < Integer.parseInt(ds.getSize()); i++)  
			{  
				System.out.println(ds.getRow(i).getData("id"));
				System.out.println(ds.getRow(i).getData("code"));
			}	
		
			System.out.println("遍历方法2---------------------------");
			for(int i = 0; i < Integer.parseInt(ds.getSize()); i++)  
			{  
				System.out.println(ds.getData(i,"id"));
				System.out.println(ds.getData(i,"code"));
			}
			
			if (rp.getParams()!=null){
				System.out.println("params---------------------------");
				for(int i = 0; i < rp.getParams().size(); i++)  
				{  
					System.out.println(rp.getParams().get(i).getName());
					System.out.println(rp.getParams().get(i).getVal());
				}
			}
			System.out.println("getParamData---------------------------");
			System.out.println(rp.getParamData("a"));
		}
	}
	
	public static void page_bar() throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("pages");
		//req.setSelect("id as idid,code as codecode");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("id<?");
		conditions.add("1000");
		req.setConditions(conditions);
		List<Param> params =  new ArrayList<Param>();
		params.add(new Param("a","aa"));
		params.add(new Param("b","bb"));
		//params.add(new Param("c","cc"));
		req.setParams(params);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.paginate_jr(req);
		System.out.println(jr.page_bar(rp, "/welcome", "pabe_bar"));
		
	}
	
}


