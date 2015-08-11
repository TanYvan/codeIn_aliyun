package cn.com.zc.web;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.DataSet;
import cn.com.zc.inf.model.Param;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.inf.model.Value;
import cn.com.zc.jrdbModel.AdjudgebrikeIn;
import cn.com.zc.jrdbModel.AgentIn;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CaseMatterIn;
import cn.com.zc.jrdbModel.CaseTime;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.CaseendbookIn;
import cn.com.zc.jrdbModel.CaseorgIn;
import cn.com.zc.jrdbModel.ChangeIn;
import cn.com.zc.jrdbModel.EducateIn;
import cn.com.zc.jrdbModel.EviteIn;
import cn.com.zc.jrdbModel.JurisdictionIn;
import cn.com.zc.jrdbModel.PartyIn;
import cn.com.zc.jrdbModel.PartyanswerIn;
import cn.com.zc.jrdbModel.SaveIn;
import cn.com.zc.jrdbModel.SittingIn;
import cn.com.zc.model.ArbitmanPublic;
import cn.com.zc.model.ArbitmanPublicView;
import cn.com.zc.model.Dictionary;
import cn.com.zc.service.facade.ArbitmanPublicService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.SysArgService;

public class ArbitmanCaseTimeAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String page;
	private String perpage;
	private String page_bar;
	private String category;//a:独任  或 主裁     b:边裁
	private List<CaseTime> caseTimeList;
	private List<CaseTime> caseTimeAllList;
	private String year_1;
	
	public String getYear_1() {
		return year_1;
	}

	public void setYear_1(String year_1) {
		this.year_1 = year_1;
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
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	public List<CaseTime>  getCaseTimeList() {
		return caseTimeList;
	}

	public void setCaseTimeList(List<CaseTime>  caseTimeList) {
		this.caseTimeList = caseTimeList;
	}
	
	public List<CaseTime>  getCaseTimeAllList() {
		return caseTimeAllList;
	}

	public void setCaseTimeAllList(List<CaseTime>  caseTimeAllList) {
		this.caseTimeAllList = caseTimeAllList;
	}
	
	public String getPage_bar() {
		return page_bar;
	}

	public void setPage_bar(String page_bar) {
		this.page_bar = page_bar;
	}

	
	public String list() throws Exception {
		Calendar curr = Calendar.getInstance();
		curr.set(Calendar.YEAR,curr.get(Calendar.YEAR)-1);
		Date date_1=curr.getTime();
		
		Calendar curr2 = Calendar.getInstance();
		curr2.set(Calendar.YEAR,curr2.get(Calendar.YEAR));
		Date date_2=curr2.getTime();
		
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy");
		year_1= dateFormat1.format(date_1);
		String year_2= dateFormat1.format(date_2);

		if (session.get("userType").toString().equals("arbitman")){
			ArrayList<Param> params = new ArrayList<Param>();
			
			ReqPacket req= new ReqPacket();
			req.setFrom("v_case_time_query_lists, tb_casearbitmen, tb_cases");
			req.setSelect("tb_cases.case_code as case_code, CASE WHEN (v_case_time_query_lists.nowdate is  null or v_case_time_query_lists.orgdate is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.orgdate,v_case_time_query_lists.nowdate)  END as d1,CASE WHEN (v_case_time_query_lists.orgdate is  null or v_case_time_query_lists.sittingdate is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.sittingdate,v_case_time_query_lists.orgdate)  END as d2,CASE WHEN (v_case_time_query_lists.decideDate is  null or v_case_time_query_lists.sittingdate is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.decideDate,v_case_time_query_lists.sittingdate)  END as d3,CASE WHEN (v_case_time_query_lists.orgdate is  null or v_case_time_query_lists.decideDate is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.decideDate,v_case_time_query_lists.orgdate)  END as d4 ,CASE WHEN (v_case_time_query_lists.nowdate is  null or v_case_time_query_lists.decideDate is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.decideDate,v_case_time_query_lists.nowdate)  END as d5 ,CASE WHEN (v_case_time_query_lists.sittingdate is  null or v_case_time_query_lists.arbitman_submit_t is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.arbitman_submit_t,v_case_time_query_lists.sittingdate)  END as d6, CASE WHEN (v_case_time_query_lists.arbitman_submit_t is  null or v_case_time_query_lists.award_submit_t is null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.award_submit_t,v_case_time_query_lists.arbitman_submit_t)  END as d7,CASE WHEN (v_case_time_query_lists.award_submit_t is null or v_case_time_query_lists.award_return_t is null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.award_return_t,v_case_time_query_lists.award_submit_t)  END as d8");
			
			List<String> conditions =  new ArrayList<String>();
			
			String sql1 = "";
			
			if ( category == null || "".equals(category)) {
				sql1 = "tb_casearbitmen.arbitman=? and tb_casearbitmen.used='Y' and tb_casearbitmen.recevice_code=tb_cases.recevice_code and v_case_time_query_lists.recevice_code=tb_casearbitmen.recevice_code and  tb_cases.used='Y' and tb_cases.state>=4 and tb_cases.caseendbook_id_first is not null";
			}else if ( category.equals("a")){
				sql1 = "tb_casearbitmen.arbitman=? and (tb_casearbitmen.arbitmantype='0001' or  tb_casearbitmen.arbitmantype='0002') and tb_casearbitmen.used='Y' and tb_casearbitmen.recevice_code=tb_cases.recevice_code and v_case_time_query_lists.recevice_code=tb_casearbitmen.recevice_code and  tb_cases.used='Y' and tb_cases.state>=4 and tb_cases.caseendbook_id_first is not null";
			}else if ( category.equals("b")){
				sql1 = "tb_casearbitmen.arbitman=? and (tb_casearbitmen.arbitmantype='0003' or  tb_casearbitmen.arbitmantype='0004') and tb_casearbitmen.used='Y' and tb_casearbitmen.recevice_code=tb_cases.recevice_code and v_case_time_query_lists.recevice_code=tb_casearbitmen.recevice_code and  tb_cases.used='Y' and tb_cases.state>=4 and tb_cases.caseendbook_id_first is not null";
			}
			
			conditions.add(sql1);
			conditions.add(session.get("userCode").toString());

			req.setConditions(conditions);
			req.setParams(params);
			req.setOrder("tb_cases.case_code desc");
			
			if (page!=null){
				req.setPage(page);
			}
			
			if (perpage!=null){
				req.setPerpage(perpage);
			}
			else{
				//req.setPerpage("2");
				sysArgService.initSysArg();
				req.setPerpage(App.sysArgMap.get("0100"));
			}


			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.paginate_jr(req);
			//////////////////////////////////////////////////////
			//////////////////////////////////////////////////////
			ReqPacket req2 = new ReqPacket();
			req2.setFrom("v_case_time_query_lists,tb_cases");
			req2.setSelect("count(tb_cases.id) as ccc ,sum(CASE WHEN (v_case_time_query_lists.nowdate is  null or v_case_time_query_lists.orgdate is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.orgdate,v_case_time_query_lists.nowdate)  END) as d1,sum(CASE WHEN (v_case_time_query_lists.orgdate is  null or v_case_time_query_lists.sittingdate is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.sittingdate,v_case_time_query_lists.orgdate)  END) as d2,sum(CASE WHEN (v_case_time_query_lists.decideDate is  null or v_case_time_query_lists.sittingdate is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.decideDate,v_case_time_query_lists.sittingdate)  END) as d3,sum(CASE WHEN (v_case_time_query_lists.orgdate is  null or v_case_time_query_lists.decideDate is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.decideDate,v_case_time_query_lists.orgdate)  END) as d4 ,sum(CASE WHEN (v_case_time_query_lists.nowdate is  null or v_case_time_query_lists.decideDate is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.decideDate,v_case_time_query_lists.nowdate)  END) as d5 ,sum(CASE WHEN (v_case_time_query_lists.sittingdate is  null or v_case_time_query_lists.arbitman_submit_t is  null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.arbitman_submit_t,v_case_time_query_lists.sittingdate)  END) as d6, sum(CASE WHEN (v_case_time_query_lists.arbitman_submit_t is  null or v_case_time_query_lists.award_submit_t is null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.award_submit_t,v_case_time_query_lists.arbitman_submit_t)  END) as d7,sum(CASE WHEN (v_case_time_query_lists.award_submit_t is null or v_case_time_query_lists.award_return_t is null) THEN 0 ELSE DATEDIFF(v_case_time_query_lists.award_return_t,v_case_time_query_lists.award_submit_t)  END) as d8");
			
			List<String> conditions2 =  new ArrayList<String>();
			
			String sql2 = "";
			
			sql2 = "v_case_time_query_lists.recevice_code=tb_cases.recevice_code and  tb_cases.used='Y' and tb_cases.state>=4 and tb_cases.caseendbook_id_first is not null and v_case_time_query_lists.decideDate>='" + year_1 + "-01-01' and v_case_time_query_lists.decideDate<'" + year_2 + "-01-01'";

			conditions2.add(sql2);
			conditions2.add(session.get("userCode").toString());

			req2.setConditions(conditions2);

			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			
			if (rp.getStatus().equals("1") && rp2.getStatus().equals("1")){
				caseTimeList = new CaseTime().getObjects(rp);
				page_bar = page_bar(rp,request.getContextPath() + "/arbitmanCaseTime/list.do","list_page_bar");
				caseTimeAllList = new CaseTime().getObjects(rp2);
				caseTimeAllList.get(0).setD1(average(caseTimeAllList.get(0).getD1(),caseTimeAllList.get(0).getCcc()));
				caseTimeAllList.get(0).setD2(average(caseTimeAllList.get(0).getD2(),caseTimeAllList.get(0).getCcc()));
				caseTimeAllList.get(0).setD3(average(caseTimeAllList.get(0).getD3(),caseTimeAllList.get(0).getCcc()));
				caseTimeAllList.get(0).setD4(average(caseTimeAllList.get(0).getD4(),caseTimeAllList.get(0).getCcc()));
				caseTimeAllList.get(0).setD5(average(caseTimeAllList.get(0).getD5(),caseTimeAllList.get(0).getCcc()));
				caseTimeAllList.get(0).setD6(average(caseTimeAllList.get(0).getD6(),caseTimeAllList.get(0).getCcc()));
				caseTimeAllList.get(0).setD7(average(caseTimeAllList.get(0).getD7(),caseTimeAllList.get(0).getCcc()));
				caseTimeAllList.get(0).setD8(average(caseTimeAllList.get(0).getD8(),caseTimeAllList.get(0).getCcc()));
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
	
	private String average(String a, String b){
		if (b.equals("0")){
			return "0";
		}else{
			double d = Integer.parseInt(a) / Integer.parseInt(b) ;
			DecimalFormat df = new DecimalFormat("0.00");
			String result = df.format(d);
			return result;
		}
	}
	
}
