package cn.com.zc.web;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.Param;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.RewardBeforeIn;
import cn.com.zc.service.facade.DictionaryService;

public class ArbitmanRewardBeforeInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private List<RewardBeforeIn> rewardBeforeList;
	private String page_bar;
	private String error;
	private String page;
	private String perpage;
	private String recevice_code;
	
	
	public DictionaryService getDictionaryService() {
		return dictionaryService;
	}

	public void setDictionaryService(DictionaryService dictionaryService) {
		this.dictionaryService = dictionaryService;
	}
	
	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}
	
	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}
	
	public String getPerpage() {
		return perpage;
	}

	public void setPerpage(String perpage) {
		this.perpage = perpage;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public String getPage_bar() {
		return page_bar;
	}

	public void setPage_bar(String page_bar) {
		this.page_bar = page_bar;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<RewardBeforeIn> getRewardBeforeInList() {
		return rewardBeforeList;
	}

	public void setRewardBeforeInList(List<RewardBeforeIn> rewardBeforeList) {
		this.rewardBeforeList = rewardBeforeList;
	}

	
	public String findArbitmanRewardBeforeInList() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_cases,tb_casearbitmen");
			req.setSelect("tb_cases.recevice_code as case_recevice_code,tb_cases.case_code as case_case_code,fun_partyinfo_1(tb_cases.recevice_code) as case_partyinfo_1,fun_partyinfo_2(tb_cases.recevice_code) as case_partyinfo_2, tb_casearbitmen.f_money as arbitman_f_money,tb_casearbitmen.currency as arbitman_currency");
			ArrayList<Param> params = new ArrayList<Param>();
			req.setParams(params);
			List<String> conditions =  new ArrayList<String>();
			conditions.add("tb_casearbitmen.arbitman=? and tb_casearbitmen.used='Y' and tb_cases.recevice_code=tb_casearbitmen.recevice_code and tb_casearbitmen.used='Y' and tb_cases.used='Y' and tb_cases.state>=4 and tb_cases.caseendbook_id_first is null");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder("tb_cases.case_code desc");
			if (page!=null){
				req.setPage(page);
			}
			
			if (perpage!=null){
				req.setPerpage(perpage);
			}
			else{
				sysArgService.initSysArg();
				req.setPerpage(App.sysArgMap.get("0100"));
			}

			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.paginate_jr(req);
			if (rp.getStatus().equals("1")){
				rewardBeforeList = new RewardBeforeIn().getObjects(rp);
				page_bar = page_bar(rp,request.getContextPath() + "/arbitmanRewardBeforeIn/findArbitmanRewardBeforeInList.do","list_page_bar");
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
