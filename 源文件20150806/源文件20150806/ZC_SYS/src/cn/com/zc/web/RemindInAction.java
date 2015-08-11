package cn.com.zc.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.Param;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.inf.model.Value;
import cn.com.zc.jrdbModel.RemindIn;

public class RemindInAction extends BaseAction{
	private static final long serialVersionUID = 1L;
	private int id;
	private List<RemindIn> remindInList;
	private RemindIn remindIn;
	private String page_bar;
	private String error;
	private String page;
	private String perpage;
	private String confirm_s;

	public String getConfirm_s() {
		return confirm_s;
	}

	public void setConfirm_s(String confirm_s) {
		this.confirm_s = confirm_s;
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


	public RemindIn getRemindIn() {
		return remindIn;
	}

	public void setRemindIn(RemindIn remindIn) {
		this.remindIn = remindIn;
	}

	public List<RemindIn> getRemindInList() {
		return remindInList;
	}

	public void setRemindInList(List<RemindIn> remindInList) {
		this.remindInList = remindInList;
	}

	
	public String findRemindBeforeInList() throws Exception {
		ReqPacket req= new ReqPacket();
		req.setFrom("remind_in");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("accept_user_type=? and accept_user=? and status=0");
		conditions.add(session.get("userType").toString());
		conditions.add(session.get("userCode").toString());
		req.setConditions(conditions);
		req.setOrder("remind_time");
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
			remindInList = new RemindIn().getObjects(rp);
			page_bar = page_bar(rp,request.getContextPath() + "/remindIn/findRemindBeforeInList.do","list_page_bar");
			return SUCCESS;
		}
		else{
			return "fail";
		}
		
	}
	
	
	public String confirm() throws Exception {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (!confirm_s.equals("")){
			ReqPacket req= new ReqPacket();
			req.setFrom("remind_in");
			List<String> conditions =  new ArrayList<String>();
			String sql = "accept_user_type=? and accept_user=? and status=0";
			String[] con = confirm_s.split(",");
			if (con.length == 1){
				sql =sql + " and id=? ";
			}
			else{
				for (int i=0 ; i<con.length; i++){
					
					if (i == 0){
						sql =sql + " and (id=? ";
					}
					else if (i == con.length - 1 ){
						sql =sql + " or id=? )";
					}
					else{
						sql =sql + " or id=? ";
					}
				}
			}
			conditions.add(sql);
			conditions.add(session.get("userType").toString());
			conditions.add(session.get("userCode").toString());
			for (int i=0 ; i<con.length; i++){
				conditions.add(con[i]);
			}
			req.setConditions(conditions);
			List<Value> values = new ArrayList<Value>();
			values.add(new Value("status","1"));
			values.add(new Value("confirm_time",dateFormat1.format(new Date())));
			req.setValues(values);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.update_all(req);
			if (rp.getStatus().equals("1")){
				error=""; 
				return SUCCESS;
			}
			else{
				return "fail";
			}
		}
		else{
			return SUCCESS;
		}
		
	}
	
	public String findRemindAfterInList() throws Exception {
		ReqPacket req= new ReqPacket();
		req.setFrom("remind_in");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("accept_user_type=? and accept_user=? and status=1");
		conditions.add(session.get("userType").toString());
		conditions.add(session.get("userCode").toString());
		req.setConditions(conditions);
		req.setOrder("remind_time");
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
			remindInList = new RemindIn().getObjects(rp);
			page_bar = page_bar(rp,request.getContextPath() + "/remindIn/findRemindAfterInList.do","list_page_bar");
			return SUCCESS;
		}
		else{
			return "fail";
		}
		
	}
	
}
