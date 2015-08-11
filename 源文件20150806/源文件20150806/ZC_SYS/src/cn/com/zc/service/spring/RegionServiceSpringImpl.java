package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Menus;
import cn.com.zc.model.Region;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.RegionService;

public class RegionServiceSpringImpl  extends EntityDaoHibernate implements RegionService {
	public void deleteRegion(int id) {
		// TODO Auto-generated method stub
		Region region = new Region();
		region.setId(id);
		super.delete(region);
	}

	public List<Region> findRegionList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Region> RegionList = new ArrayList<Region>();
		String sql = "from Region where (1=1) " + condition + "";
		if (pageNo != 0 && pageSize != 0) {
			RegionList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			RegionList = super.findByHql(sql, value);
		}
		return RegionList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<Region> RegionList = new ArrayList<Region>();
		String sql = "from Region where (1=1) " + condition;
		RegionList = super.findByHql(sql, value);
		return RegionList.size();
	}

	public void insertRegion(Region Region) {
		// TODO Auto-generated method stub
        super.save(Region);
	}

	public void updateRegion(Region Region) {
		// TODO Auto-generated method stub
		super.update(Region);
	}
	
	public String regionTree() {
		String outString = "";
		List<Region> regionList = new ArrayList<Region>();
		Object[] value = { };
		String sql = "from Region where parent='0' ";
		super.clear();
		regionList = super.findByHql(sql.toString(), value);
		if (regionList.size() == 0) {
			return "[{'id':'0','text':'地区选择'}]";
		}
		else{
			outString="[{'id':'0','text':'地区选择','children':[";
			//outString="[";
			for (Region reg : regionList) {
				outString = outString + "{'id':'" + reg.getId()
						+ "','text':'" + reg.getName() + "[" + reg.getCode() + "]"
						+ "','attributes':{'code':'" + reg.getCode()
						+ "'}";
				outString = regionTreeNode(outString, reg.getCode());
				outString += "},";
			}
			outString = outString.substring(0, outString.length() - 1) + "]}]";
		}
		return outString;
	}

	public String regionTreeNode(String outString, String parentCode) {
		List<Region> regionList = new ArrayList<Region>();
		String sql = "from Region where parent=? order by code";
		Object[] values = { parentCode };
		super.clear();
		regionList = super.findByHql(sql, values);
		if (regionList.size() > 0) {
			outString = outString + ",'children':[";
			for (Region reg : regionList) {
				outString = outString + "{'id':'" + reg.getCode()
						+ "','text':'" + reg.getName() + "[" + reg.getCode() + "]"
						+ "','attributes':{'url':'" + reg.getCode()
						+ "'}";
				outString = regionTreeNode(outString, reg.getCode());
				outString += "},";
			}
			outString = outString.substring(0, outString.length() - 1) + "]" ;
		}
		return outString;
	}
	
	public String regionTreeTw() {
		String outString = "";
		List<Region> regionList = new ArrayList<Region>();
		Object[] value = { };
		String sql = "from Region where parent='0' ";
		super.clear();
		regionList = super.findByHql(sql.toString(), value);
		if (regionList.size() == 0) {
			return "[{'id':'0','text':'地区选择'}]";
		}
		else{
			outString="[{'id':'0','text':'地区选择','children':[";
			//outString="[";
			for (Region reg : regionList) {
				outString = outString + "{'id':'" + reg.getId()
						+ "','text':'" + reg.getNameTw() + "[" + reg.getCode() + "]"
						+ "','attributes':{'code':'" + reg.getCode()
						+ "'}";
				outString = regionTreeNodeTw(outString, reg.getCode());
				outString += "},";
			}
			outString = outString.substring(0, outString.length() - 1) + "]}]";
		}
		return outString;
	}

	public String regionTreeNodeTw(String outString, String parentCode) {
		List<Region> regionList = new ArrayList<Region>();
		String sql = "from Region where parent=? order by code";
		Object[] values = { parentCode };
		super.clear();
		regionList = super.findByHql(sql, values);
		if (regionList.size() > 0) {
			outString = outString + ",'children':[";
			for (Region reg : regionList) {
				outString = outString + "{'id':'" + reg.getCode()
						+ "','text':'" + reg.getNameTw() + "[" + reg.getCode() + "]"
						+ "','attributes':{'url':'" + reg.getCode()
						+ "'}";
				outString = regionTreeNodeTw(outString, reg.getCode());
				outString += "},";
			}
			outString = outString.substring(0, outString.length() - 1) + "]" ;
		}
		return outString;
	}
	
	public String regionTreeEn() {
		String outString = "";
		List<Region> regionList = new ArrayList<Region>();
		Object[] value = { };
		String sql = "from Region where parent='0' ";
		super.clear();
		regionList = super.findByHql(sql.toString(), value);
		if (regionList.size() == 0) {
			return "[{'id':'0','text':'地区选择'}]";
		}
		else{
			outString="[{'id':'0','text':'地区选择','children':[";
			//outString="[";
			for (Region reg : regionList) {
				outString = outString + "{'id':'" + reg.getId()
						+ "','text':'" + reg.getNameEn() + "[" + reg.getCode() + "]"
						+ "','attributes':{'code':'" + reg.getCode()
						+ "'}";
				outString = regionTreeNodeEn(outString, reg.getCode());
				outString += "},";
			}
			outString = outString.substring(0, outString.length() - 1) + "]}]";
		}
		return outString;
	}

	public String regionTreeNodeEn(String outString, String parentCode) {
		List<Region> regionList = new ArrayList<Region>();
		String sql = "from Region where parent=? order by code";
		Object[] values = { parentCode };
		super.clear();
		regionList = super.findByHql(sql, values);
		if (regionList.size() > 0) {
			outString = outString + ",'children':[";
			for (Region reg : regionList) {
				outString = outString + "{'id':'" + reg.getCode()
						+ "','text':'" + reg.getNameEn() + "[" + reg.getCode() + "]"
						+ "','attributes':{'url':'" + reg.getCode()
						+ "'}";
				outString = regionTreeNodeEn(outString, reg.getCode());
				outString += "},";
			}
			outString = outString.substring(0, outString.length() - 1) + "]" ;
		}
		return outString;
	}
	
	public void flushRegion(){
		HashMap<String,String> tmp = new HashMap<String,String>();
		HashMap<String,String> tmpTw = new HashMap<String,String>();
		HashMap<String,String> tmpEn = new HashMap<String,String>();
		Iterator diter;
		Object[] value = null;
		super.clear();
		List<Region> regList = super.findByHql("from Region order by code asc",value);
		Iterator iter = regList.iterator();
		while(iter.hasNext()){
			Region r = (Region) iter.next();
			tmp.put(r.getCode(), r.getName());
			tmpTw.put(r.getCode(), r.getNameTw());
			tmpEn.put(r.getCode(), r.getNameEn());
		}
		App.regionMap = tmp;
		App.regionMapTw = tmpTw;
		App.regionMapEn = tmpEn;
		
		App.regionList = regList;
		
		super.clear();
		List<Region> regListTw = super.findByHql("from Region order by code asc",value);
		diter= regListTw.iterator();
		while(diter.hasNext()){
			Region d = (Region) diter.next();
			d.setName(d.getNameTw());
		}
		App.regionListTw = regListTw;
		
		super.clear();
		List<Region> regListEn = super.findByHql("from Region order by code asc",value);
		diter= regListEn.iterator();
		while(diter.hasNext()){
			Region d = (Region) diter.next();
			d.setName(d.getNameEn());
		}
		
		super.clear();
		
		App.regionListEn = regListEn;
		
		App.regionTree = regionTree();
		App.regionTreeTw = regionTreeTw();
		App.regionTreeEn = regionTreeEn();
	}
	
	public void initRegion(){
		if (App.regionMap==null){
			flushRegion();
		}
	}
	
}
