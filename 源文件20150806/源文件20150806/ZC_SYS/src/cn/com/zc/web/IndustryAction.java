package cn.com.zc.web;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Arbitman;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Industry;
import cn.com.zc.model.Special;
import cn.com.zc.service.facade.ArbitmanService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.IndustryService;
import cn.com.zc.vo.IndustryVo;

public class IndustryAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String rows;// 每页显示的记录数
	private int id;
	private Industry industry;
	private List<Industry> industryList;
	private List<IndustryVo> industryVoList;
	private IndustryService industryService;
	private String industryNum;
	private String selectVal;
	private String error;
	
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
	
	public DictionaryService getDictionaryService() {
		return dictionaryService;
	}

	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}
	
	
	public String getRows() {
		return rows;
	}

	public void setRows(String rows) {
		this.rows = rows;
	}

	public String getIndustryNum() {
		return industryNum;
	}

	public void setIndustryNum(String industryNum) {
		this.industryNum = industryNum;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Industry> getIndustryList() {
		return industryList;
	}

	public void setIndustryList(List<Industry> industryList) {
		this.industryList = industryList;
	}

	public List<IndustryVo> getIndustryVoList() {
		return industryVoList;
	}

	public void setIndustryVoList(List<IndustryVo> industryVoList) {
		this.industryVoList = industryVoList;
	}
	

	public Industry getIndustry() {
		return industry;
	}

	public void setIndustry(Industry industry) {
		this.industry = industry;
	}

	public IndustryService getIndustryService() {
		return industryService;
	}

	public void setIndustryService(IndustryService industryService) {
		this.industryService = industryService;
	}

	public String findIndustryList() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { session.get("userCode").toString() };
			industryList = industryService.findIndustryList(" and used='Y' and arbitman_num=?", value);
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}

	public String toInsertIndustry() {		
			return SUCCESS;
	}
	
	public String insertIndustry() {		
		if (session.get("userType").toString().equals("arbitman")){
			industry= new Industry();
			industry.setUsed("Y");
			industry.setArbitmanNum(session.get("userCode").toString());
			industry.setIndustryNum(selectVal);
			industry.setStatus(1);
			industryService.insertIndustry(industry);
			//error = "新建成功";
			error = this.getText("common.mes_21");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String deleteIndustry() {
		if (session.get("userType").toString().equals("arbitman")){
			Object[] value = { id };
			industryList = industryService.findIndustryList(" and id=?", value);
			Industry industry_up = industryList.get(0);
			if (industry_up.getArbitmanNum().equals(session.get("userCode").toString())){
				industry_up.setUsed("N");
				industryService.updateIndustry(industry_up);
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
