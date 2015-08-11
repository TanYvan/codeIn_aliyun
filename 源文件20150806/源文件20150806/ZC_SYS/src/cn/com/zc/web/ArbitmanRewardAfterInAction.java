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
import cn.com.zc.jrdbModel.RewardAfterIn;
import cn.com.zc.service.facade.DictionaryService;

public class ArbitmanRewardAfterInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private List<RewardAfterIn> rewardAfterList;
	private String page_bar;
	private String error;
	private String page;
	private String perpage;
	private String recevice_code;
	private String case_code;
	private String partyinfo_1;
	private String partyinfo_2;
	
	
	public String getCase_code() {
		return case_code;
	}

	public void setCase_code(String case_code) {
		this.case_code = case_code;
	}
	
	public String getPartyinfo_1() {
		return partyinfo_1;
	}

	public void setPartyinfo_1(String partyinfo_1) {
		this.partyinfo_1 = partyinfo_1;
	}
	
	public String getPartyinfo_2() {
		return partyinfo_2;
	}

	public void setPartyinfo_2(String partyinfo_2) {
		this.partyinfo_2 = partyinfo_2;
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

	public List<RewardAfterIn> getRewardAfterInList() {
		return rewardAfterList;
	}

	public void setRewardAfterInList(List<RewardAfterIn> rewardAfterList) {
		this.rewardAfterList = rewardAfterList;
	}

	
	public String findArbitmanRewardAfterInList() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ArrayList<Param> params = new ArrayList<Param>();
			
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_cases,tb_extends");
			req.setSelect("tb_cases.recevice_code as case_recevice_code,tb_cases.case_code as case_case_code,fun_partyinfo_1(tb_cases.recevice_code) as case_partyinfo_1,fun_partyinfo_2(tb_cases.recevice_code) as case_partyinfo_2, tb_extends.bankname as bankname, tb_extends.bank_account as bank_account, tb_extends.typ as typ, tb_extends.should_rmb as should_rmb, tb_extends.tax_base_rmb as tax_base_rmb, tb_extends.tax_rmb as tax_rmb, tb_extends.extend_rmb as extend_rmb, tb_extends.extend_date as extend_date, tb_extends.remark as remark");
			
			List<String> conditions =  new ArrayList<String>();
			String sql = "tb_extends.p=? and tb_extends.p_typ='0001' and tb_extends.used='Y' and t_extend_code<>'' and tb_cases.recevice_code=tb_extends.recevice_code and tb_cases.used='Y'";
			if (case_code != null && !"".equals(case_code)) {
				sql = sql + " and tb_cases.case_code like ?";
			}

			if (partyinfo_1 != null && !"".equals(partyinfo_1)) {
				sql = sql + " and fun_partyinfo_1(tb_cases.recevice_code) like ?";
			}
			
			if (partyinfo_2 != null && !"".equals(partyinfo_2)) {
				sql = sql + " and fun_partyinfo_2(tb_cases.recevice_code) like ?";
			}
			
			conditions.add(sql);
			conditions.add(session.get("userCode").toString());
			if (case_code != null && !"".equals(case_code)) {
				conditions.add("%" + case_code + "%");
				params.add(new Param("case_code",case_code));
			}
			
			if (partyinfo_1 != null && !"".equals(partyinfo_1)) {
				conditions.add("%" + partyinfo_1 + "%");
				params.add(new Param("partyinfo_1",partyinfo_1));
			}
			
			if (partyinfo_2 != null && !"".equals(partyinfo_2)) {
				conditions.add("%" + partyinfo_2 + "%");
				params.add(new Param("partyinfo_2",partyinfo_2));
			}
			
			req.setConditions(conditions);
			req.setParams(params);
			req.setOrder("tb_extends.extend_date desc, tb_cases.case_code desc");
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
				rewardAfterList = new RewardAfterIn().getObjects(rp);
				page_bar = page_bar(rp,request.getContextPath() + "/arbitmanRewardAfterIn/findArbitmanRewardAfterInList.do","list_page_bar");
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
