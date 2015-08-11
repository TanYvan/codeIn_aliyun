package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.common.App;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Menus;
import cn.com.zc.service.facade.DictionaryService;

public class DictionaryServiceSpringImpl extends EntityDaoHibernate implements
		DictionaryService {

	public void deleteDictionary(int id) {
		// TODO Auto-generated method stub
		Dictionary dictionary = new Dictionary();
		dictionary.setId(id);
		super.delete(dictionary);
	}

	public List<Dictionary> findDictionaryList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<Dictionary> DictionaryList = new ArrayList<Dictionary>();
		String sql = "from Dictionary where (1=1) " + condition + " order by ind";
		if (pageNo != 0 && pageSize != 0) {
			DictionaryList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			DictionaryList = super.findByHql(sql, value);
		}
		return DictionaryList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<Dictionary> DictionaryList = new ArrayList<Dictionary>();
		String sql = "from Dictionary where (1=1) " + condition;
		DictionaryList = super.findByHql(sql, value);
		return DictionaryList.size();
	}

	public void insertDictionary(Dictionary Dictionary) {
		// TODO Auto-generated method stub
        super.save(Dictionary);
	}

	public void updateDictionary(Dictionary Dictionary) {
		// TODO Auto-generated method stub
		super.update(Dictionary);
	}
	
	
	public void flushDictionary(){
		HashMap<String,HashMap<String,String>> tmp = new HashMap<String,HashMap<String,String>>();
		HashMap<String,HashMap<String,String>> tmpTw = new HashMap<String,HashMap<String,String>>();
		HashMap<String,HashMap<String,String>> tmpEn = new HashMap<String,HashMap<String,String>>();
		
		HashMap<String,List<Dictionary>> tmpList = new HashMap<String,List<Dictionary>>();
		HashMap<String,List<Dictionary>> tmpListTw = new HashMap<String,List<Dictionary>>();
		HashMap<String,List<Dictionary>> tmpListEn = new HashMap<String,List<Dictionary>>();
		
		HashMap<String,List<Dictionary>> tmpAllList = new HashMap<String,List<Dictionary>>();
		HashMap<String,List<Dictionary>> tmpAllListTw = new HashMap<String,List<Dictionary>>();
		HashMap<String,List<Dictionary>> tmpAllListEn = new HashMap<String,List<Dictionary>>();
		
		HashMap<String,String> tmp_c;
		HashMap<String,String> tmpTw_c;
		HashMap<String,String> tmpEn_c;
		
		List<Dictionary> typList;
		
		List<Dictionary> dList;
		List<Dictionary> dListTw;
		List<Dictionary> dListEn;
		
		List<Dictionary> dListForHash;
		
		List<Dictionary> dListAll;
		List<Dictionary> dListAllTw;
		List<Dictionary> dListAllEn;
		
		Object[] value = null;
		typList = new ArrayList<Dictionary>();
		typList = super.findByHql("from Dictionary where data_val='0000'",value);
		Iterator iter = typList.iterator();
		Iterator diter;
		while(iter.hasNext()){
			Dictionary typ = (Dictionary) iter.next();
			Object[] value2 = {typ.getTypCode()};
			
			super.clear();
			dList = super.findByHql("from Dictionary where typ_code=? and used='Y' and state='Y' and data_val<>'0000' order by ind asc,data_val asc",value2);
			
			super.clear();
			dListTw = super.findByHql("from Dictionary where typ_code=? and used='Y' and state='Y' and data_val<>'0000' order by ind asc,data_val asc",value2);
			diter= dListTw.iterator();
			while(diter.hasNext()){
				Dictionary d = (Dictionary) diter.next();
				d.setDataText(d.getDataTextTw());
			}
			
			super.clear();
			dListEn = super.findByHql("from Dictionary where typ_code=? and used='Y' and state='Y' and data_val<>'0000' order by ind asc,data_val asc",value2);
			diter= dListEn.iterator();
			while(diter.hasNext()){
				Dictionary d = (Dictionary) diter.next();
				d.setDataText(d.getDataTextEn());
			}
			
			super.clear();
			dListForHash = super.findByHql("from Dictionary where typ_code=? and data_val<>'0000' order by ind asc,data_val asc",value2);
			diter= dListForHash.iterator();
			tmp_c =  new HashMap<String,String>();
			while(diter.hasNext()){
				Dictionary d = (Dictionary) diter.next();
				tmp_c.put(d.getDataVal(),d.getDataText());
			}
			
			diter = dListForHash.iterator();
			tmpTw_c =  new HashMap<String,String>();
			while(diter.hasNext()){
				Dictionary d = (Dictionary) diter.next();
				tmpTw_c.put(d.getDataVal(),d.getDataTextTw());
			}
			
			diter = dListForHash.iterator();
			tmpEn_c =  new HashMap<String,String>();
			while(diter.hasNext()){
				Dictionary d = (Dictionary) diter.next();
				tmpEn_c.put(d.getDataVal(),d.getDataTextEn());
			}
			
			tmp.put(typ.getTypCode(), tmp_c);
			tmpTw.put(typ.getTypCode(), tmpTw_c);
			tmpEn.put(typ.getTypCode(), tmpEn_c);
			
			super.clear();
			dListAll = super.findByHql("from Dictionary where typ_code=? and used='Y' and state='Y' and data_val<>'0000' order by ind asc,data_val asc",value2);
			
			super.clear();
			dListAllTw = super.findByHql("from Dictionary where typ_code=? and used='Y' and state='Y' and data_val<>'0000' order by ind asc,data_val asc",value2);
			diter= dListAllTw.iterator();
			while(diter.hasNext()){
				Dictionary d = (Dictionary) diter.next();
				d.setDataText(d.getDataTextTw());
			}
			
			super.clear();
			dListAllEn = super.findByHql("from Dictionary where typ_code=? and used='Y' and state='Y' and data_val<>'0000' order by ind asc,data_val asc",value2);
			diter= dListAllEn.iterator();
			while(diter.hasNext()){
				Dictionary d = (Dictionary) diter.next();
				d.setDataText(d.getDataTextEn());
			}
			
			super.clear();
			
			
			tmpList.put(typ.getTypCode(),dList);
			tmpListTw.put(typ.getTypCode(),dListTw);
			tmpListEn.put(typ.getTypCode(),dListEn);
			
			Dictionary ddd =  new Dictionary();
			ddd.setDataVal("");
			ddd.setDataText("");
			dListAll.add(0,ddd);
			dListAllTw.add(0,ddd);
			dListAllEn.add(0,ddd);
			
			tmpAllList.put(typ.getTypCode(),dListAll);
			tmpAllListTw.put(typ.getTypCode(),dListAllTw);
			tmpAllListEn.put(typ.getTypCode(),dListAllEn);
		}
		
		App.dictionaryMap = tmp;
		App.dictionaryMapTw = tmpTw;
		App.dictionaryMapEn = tmpEn;
		
		App.dictionaryList = tmpList;
		App.dictionaryListTw = tmpListTw;
		App.dictionaryListEn = tmpListEn;
		
		App.dictionaryAllList = tmpAllList;
		App.dictionaryAllListTw = tmpAllListTw;
		App.dictionaryAllListEn = tmpAllListEn;
	}
	public void initDictionary(){
		if (App.dictionaryMap==null){
			flushDictionary();
		}
	}

}
