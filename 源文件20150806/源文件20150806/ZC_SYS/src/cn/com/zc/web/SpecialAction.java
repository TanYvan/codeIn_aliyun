package cn.com.zc.web;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Educate;
import cn.com.zc.model.Special;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.EducateService;
import cn.com.zc.service.facade.SpecialService;

public class SpecialAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String error;
	private Special special;
	private List<Special> specialList;
	private SpecialService specialService;
	private String specialCode;
	private String selectVal;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}

	public void setSelectVal(String selectVal) {
		this.selectVal = selectVal;
	}
	
	public String getSelectVal() {
		return selectVal;
	}

	public String getSpecialCode() {
		return specialCode;
	}

	public void setSpecialCode(String specialCode) {
		this.specialCode = specialCode;
	}

	public Special getSpecial() {
		return special;
	}

	public void setSpecial(Special special) {
		this.special = special;
	}

	public List<Special> getSpecialList() {
		return specialList;
	}

	public void setSpecialList(List<Special> specialList) {
		this.specialList = specialList;
	}

	public SpecialService getSpecialService() {
		return specialService;
	}

	public void setSpecialService(SpecialService specialService) {
		this.specialService = specialService;
	}
	
	public String findSpecialList() {
		
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { session.get("userCode").toString() };
			specialList = specialService.findSpecialList(" and used='Y' and arbitman_num=?", value, 0, 0);
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String toInsertSpecial() {		
		return SUCCESS;
	}
	
	public String insertSpecial() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { session.get("userCode").toString() };
			special= new Special();
			special.setUsed("Y");
			special.setArbitman_num(session.get("userCode").toString());
			special.setSpecialityNum(selectVal);
			special.setStatus(1);
			specialService.insertSpecial(special);
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}

	public String deleteSpecial() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { id };
			specialList = specialService.findSpecialList(" and id=?", value, 0, 0);
			Special special_up = specialList.get(0);
			if (special_up.getArbitman_num().equals(session.get("userCode").toString())){
				special_up.setUsed("N");
				specialService.updateSpecial(special_up);
				return SUCCESS;
			}
			else{
				return "fail";
			}
		}
		else{
			return "fail";
		}
	}
}
