package cn.com.zc.service.spring;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.common.App;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.DocFormat;
import cn.com.zc.model.Menus;
import cn.com.zc.model.Region;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.DocFormatService;

public class DocFormatServiceSpringImpl extends EntityDaoHibernate implements
 DocFormatService {

	public void deleteDocFormat(int id) {
		// TODO Auto-generated method stub
		DocFormat dictionary = new DocFormat();
		dictionary.setId(id);
		super.delete(dictionary);
	}

	public List<DocFormat> findDocFormatList(String condition,Object[] value,int pageNo,int pageSize) {
		// TODO Auto-generated method stub
		List<DocFormat> DocFormatList = new ArrayList<DocFormat>();
		String sql = "from DocFormat where (1=1) " + condition ;
		if (pageNo != 0 && pageSize != 0) {
			DocFormatList = super.findByHql(sql, value, pageNo, pageSize);
		} else {
			DocFormatList = super.findByHql(sql, value);
		}
		return DocFormatList;
	}
	
	public int getCounts(String condition,Object[] value){
		List<DocFormat> DocFormatList = new ArrayList<DocFormat>();
		String sql = "from DocFormat where (1=1) " + condition;
		DocFormatList = super.findByHql(sql, value);
		return DocFormatList.size();
	}

	public void insertDocFormat(DocFormat DocFormat) {
		// TODO Auto-generated method stub
        super.save(DocFormat);
	}

	public void updateDocFormat(DocFormat DocFormat) {
		// TODO Auto-generated method stub
		super.update(DocFormat);
	}
	
	
	public void flushDocFormat(){
		HashMap<String,String> tmp = new HashMap<String,String>();
		HashMap<String,String> tmpTw = new HashMap<String,String>();
		HashMap<String,String> tmpEn = new HashMap<String,String>();
		List<DocFormat> docList;
		Object[] value = null;
		docList = super.findByHql("from DocFormat order by code asc",value);
		Iterator iter = docList.iterator();
		while(iter.hasNext()){
			DocFormat r = (DocFormat) iter.next();
			tmp.put(r.getCode(), r.getName());
			tmpTw.put(r.getCode(), r.getNameTw());
			tmpEn.put(r.getCode(), r.getNameEn());
		}
		App.docFormatMap = tmp;
		App.docFormatMapTw = tmpTw;
		App.docFormatMapEn = tmpEn;
	}
	
	public void initDocFormat(){
		if (App.docFormatMap==null){
			flushDocFormat();
		}
	}

}
