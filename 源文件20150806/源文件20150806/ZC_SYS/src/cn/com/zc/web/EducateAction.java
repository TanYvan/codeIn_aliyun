package cn.com.zc.web;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Educate;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.EducateService;

public class EducateAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private Educate educate;
	private List<Educate> educateList;
	private EducateService educateService;
	private String error;
	
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

	public DictionaryService getDictionaryService() {
		return dictionaryService;
	}

	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}

	public Educate getEducate() {
		return educate;
	}

	public void setEducate(Educate educate) {
		this.educate = educate;
	}

	public List<Educate> getEducateList() {
		return educateList;
	}

	public void setEducateList(List<Educate> educateList) {
		this.educateList = educateList;
	}

	public EducateService getEducateService() {
		return educateService;
	}

	public void setEducateService(EducateService educateService) {
		this.educateService = educateService;
	}

	public String findEducateList() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { session.get("userCode").toString() };
			educateList = educateService.findEducateList(" and used='Y' and arbitman=?", value, 0, 0);
			return SUCCESS;
		}
		else{
			return "fail";
		}
		
	}
	
	public String toInsertEducate() {
		return SUCCESS;
	}

	public String insertEducate() {
		if (session.get("userType").toString().equals("arbitman")){
			educate.setArbitman(session.get("userCode").toString());
			educate.setUsed("Y");
			educate.setStatus(1);
			educateService.insertEducate(educate);
			//error = "新建成功";
			error = this.getText("common.mes_21");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}	
	
	public String toUpdateEducate() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { id };
			educateList = educateService.findEducateList(" and id=?", value, 0, 0);
			educate = educateList.get(0);
			if (educate.getArbitman().equals(session.get("userCode").toString())){
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
	
	public String updateEducate() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { educate.getId() };
			educateList = educateService.findEducateList(" and id=?", value, 0, 0);
			Educate educate_up = educateList.get(0);
			if (educate_up.getArbitman().equals(session.get("userCode").toString())){
				educate_up.coverSelf(educate);
				educate_up.setArbitman(session.get("userCode").toString());
				educateService.updateEducate(educate_up);
				//error = "修改成功";
				error = this.getText("common.mes_22");
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

	public String deleteEducate() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { id };
			educateList = educateService.findEducateList(" and id=?", value, 0, 0);
			Educate educate_up = educateList.get(0);
			if (educate_up.getArbitman().equals(session.get("userCode").toString())){
				educate_up.setUsed("N");
				educateService.updateEducate(educate_up);
				//error = "删除成功";
				error = this.getText("common.mes_23");
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
