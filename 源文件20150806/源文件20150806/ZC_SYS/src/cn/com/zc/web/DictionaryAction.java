package cn.com.zc.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import cn.com.zc.common.App;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Educate;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.vo.SelectVo;

public class DictionaryAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String typCode;
	private String result;
	private List<Dictionary> dictionaryList;
	private DictionaryService dictionaryService;
	
	private String returnUrl;
	private String space;
	private String action;
	private String selectVal;
	private String typName;
	
	public DictionaryService getDictionaryService() {
		return dictionaryService;
	}

	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}

	public List<Dictionary> getDictionaryList() {
		return dictionaryList;
	}

	public void setDictionaryList(List<Dictionary> dictionaryList) {
		this.dictionaryList = dictionaryList;
	}
	
	public String getReturnUrl() {
		return returnUrl;
	}

	public void setReturnUrl(String returnUrl) {
		this.returnUrl = returnUrl;
	}
	
	public String getSpace() {
		return space;
	}

	public void setSpace(String space) {
		this.space = space;
	}
	
	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
	
	public String getSelectVal() {
		return selectVal;
	}

	public void setSelectVal(String selectVal) {
		this.selectVal = selectVal;
	}
	
	public String getTypName() {
		return typName;
	}

	public void setTypName(String typName) {
		this.typName = typName;
	}
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getTypCode() {
		return typCode;
	}

	public void setTypCode(String typCode) {
		this.typCode = typCode;
	}


	public void getDictionary() {
		Object[] value = { typCode };
		List<Dictionary> dictionaries = dictionaryService.findDictionaryList(" and typCode=? and used='Y' and state='Y' and data_val<>'0000'", value, 0, 0);
		List<SelectVo> selectVos = new ArrayList<SelectVo>();
		SelectVo selectVo = new SelectVo();
		for (int i = 0; i < dictionaries.size(); i++) {
			selectVo = new SelectVo();
			selectVo.setKey(dictionaries.get(i).getDataVal());
			selectVo.setValue(dictionaries.get(i).getDataText());
			selectVos.add(selectVo);
		}
		JSONArray json = new JSONArray();
		json.addAll(selectVos);
		JSONObject jsonObject = new JSONObject();
		result = json.toString();
		response.setCharacterEncoding("UTF-8");
		try {
			response.getWriter().print(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public String select_1(){
		Iterator diter;
		Object[] value = { typCode };
		dictionaryList = dictionaryService.findDictionaryList(" and typCode=? and  used='Y' and state='Y' and data_val<>'0000'", value, 0, 0);
		if (session.get("language").toString().equals("zh_TW")){
			diter= dictionaryList.iterator();
			while(diter.hasNext()){
				Dictionary d = (Dictionary) diter.next();
				d.setDataText(d.getDataTextTw());
			}
		}
		if (session.get("language").toString().equals("en_US")){
			diter= dictionaryList.iterator();
			while(diter.hasNext()){
				Dictionary d = (Dictionary) diter.next();
				d.setDataText(d.getDataTextEn());
			}
		}
		return SUCCESS;
	}
}
