package cn.com.zc.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanSyn;
import cn.com.zc.jrdbModel.EducateIn;
import cn.com.zc.jrdbModel.EducateSub;
import cn.com.zc.jrdbModel.IndustrySub;

public class IndustrySubAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String error;
	private IndustrySub industrySub;
	private List<IndustrySub> industrySubList;
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
	
	public IndustrySub getIndustrySub() {
		return industrySub;
	}

	public void setIndustrySub(IndustrySub industrySub) {
		this.industrySub = industrySub;
	}

	public List<IndustrySub> getIndustrySubList() {
		return industrySubList;
	}

	public void setIndustrySubList(List<IndustrySub> industrySubList) {
		this.industrySubList = industrySubList;
	}

	public String findIndustrySubList() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("industry_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbitman_num=? and used='Y'");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder(" id  asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			if (rp.getStatus().equals("1")){
				industrySubList = new IndustrySub().getObjects(rp);
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
	
	public String toInsertIndustrySub() {
		return SUCCESS;
	}

	public String insertIndustrySub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			industrySub = new IndustrySub();
			industrySub.setUsed("Y");
			industrySub.setIndustry_num(selectVal);
			industrySub.setArbitman_num(session.get("userCode").toString());
			ReqPacket req= new ReqPacket();
			req = industrySub.toReqPacketForCreate();
			req.setFrom("industry_sub");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.create(req);
			if (rp.getStatus().equals("1")){
				//开始记录信息修改情况////////////////
				IndustrySub industrySubIter = new IndustrySub();
				industrySubIter.setFieldMap();
				Map filedMap = (Map) industrySubIter.getFieldMap();
				Iterator<String> iter = filedMap.keySet().iterator();
				String sub_after = "\"arbitman_num\":\"" + session.get("userCode").toString() + "\",";
			    String sub_after_text = "";
				while (iter.hasNext()) {
				    String key = iter.next();
				    String value = (String) filedMap.get(key);
				    String name = key.replaceFirst(key.substring(0, 1), key.substring(0, 1).toUpperCase());
				    String insert_data= (String)industrySub.getClass().getMethod("get" + name, new Class[]{}).invoke(industrySub, new Object[]{});
				    if (insert_data!=null){
				    	insert_data = insert_data.replace(":","：" ).replace(",", "，").replace("\"", "“");
				    	sub_after = sub_after + '"' + key + '"' + ":" + '"' + insert_data + '"' + ",";
				    	try {
					    	String after_code = (String)industrySub.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(industrySub, new Object[]{});
					    	baseDicCnMap = getBaseDicCnMap();
					    	sub_after_text = sub_after_text + value + ":" + baseDicCnMap.get(after_code).get(insert_data).replace(":","：" ).replace(",", "，") + ",";
					    }
					    catch (Exception e) {
					    	sub_after_text = sub_after_text + value + ":" + insert_data.replace(":","：" ).replace(",", "，")  + ",";
					    }
				    }
				}
		    	ArbitmanSyn syn = new ArbitmanSyn(); 
		    	syn.setStatus("0");
		    	syn.setSyn_type("01");
		    	syn.setChange_time(dateFormat1.format(new Date()));
		    	syn.setArbitman(session.get("userCode").toString());
		    	syn.setArbitman_name(session.get("userName").toString());
		    	syn.setChange_type("1");
		    	syn.setItem_type("industry_sub");
		    	syn.setSub_id(rp.getIden());
		    	syn.setItem("");
		    	syn.setItem_name("");
		    	syn.setChange_before("");
		    	syn.setChange_before_text("");
		    	syn.setChange_after(sub_after);
		    	syn.setChange_after_text(sub_after_text);
		    	syn.setRemark("");
		    	req= syn.toReqPacketForCreate();
				req.setFrom("arbitman_syn");
				jr = new JrDbHelp();
				rp=jr.create(req);
				//////////////////////////////////
				//error = "新建成功";
				error = this.getText("common.mes_21");
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

	public String deleteIndustrySub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ReqPacket req= new ReqPacket();
			req.setFrom("industry_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			industrySubList = new IndustrySub().getObjects(rp);
			if (industrySubList.size()==0){
				return "fail";
			}
			else{	
				IndustrySub industrySub_update = industrySubList.get(0);
				IndustrySub industrySub_del =  new IndustrySub();
				industrySub_del.coverSelf(industrySub_update);
				if (industrySub_update.getArbitman_num().equals(session.get("userCode").toString())){
					String id= industrySub_update.getId();
					industrySub_update.setUsed("N");
					industrySub_update.setArbitman_num(session.get("userCode").toString());
					req= new ReqPacket();
					req= industrySub_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("industry_sub");
					jr = new JrDbHelp();
					rp=jr.update(req);
					if (rp.getStatus().equals("1")){
						//开始记录信息修改情况////////////////
						IndustrySub industrySubIter = new IndustrySub();
						industrySubIter.setFieldMap();
						Map filedMap = (Map) industrySubIter.getFieldMap();
						Iterator<String> iter = filedMap.keySet().iterator();
						String sub_after = "";
					    String sub_after_text = "";
						while (iter.hasNext()) {
						    String key = iter.next();
						    String value = (String) filedMap.get(key);
						    String name = key.replaceFirst(key.substring(0, 1), key.substring(0, 1).toUpperCase());
						    String delete_data= (String)industrySub_del.getClass().getMethod("get" + name, new Class[]{}).invoke(industrySub_del, new Object[]{});
						    if (delete_data!=null){
						    	delete_data = delete_data.replace(":","：" ).replace(",", "，").replace("\"", "“");
						    	sub_after = sub_after + '"' + key + '"' + ":" + '"' + delete_data + '"' + ",";
						    	try {
							    	String after_code = (String)industrySub_del.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(industrySub_del, new Object[]{});
							    	baseDicCnMap = getBaseDicCnMap();
							    	sub_after_text = sub_after_text + value + ":" + baseDicCnMap.get(after_code).get(delete_data).replace(":","：" ).replace(",", "，") + ",";
							    }
							    catch (Exception e) {
							    	sub_after_text = sub_after_text + value + ":" + delete_data.replace(":","：" ).replace(",", "，")  + ",";
							    }
						    }
						}
				    	ArbitmanSyn syn = new ArbitmanSyn(); 
				    	syn.setStatus("0");
				    	syn.setSyn_type("01");
				    	syn.setChange_time(dateFormat1.format(new Date()));
				    	syn.setArbitman(session.get("userCode").toString());
				    	syn.setArbitman_name(session.get("userName").toString());
				    	syn.setChange_type("3");
				    	syn.setItem_type("industry_sub");
				    	syn.setSub_id(industrySub_del.getId());
				    	syn.setItem("");
				    	syn.setItem_name("");
				    	syn.setChange_before("");
				    	syn.setChange_before_text("");
				    	syn.setChange_after(sub_after);
				    	syn.setChange_after_text(sub_after_text);
				    	syn.setRemark("");
				    	req= syn.toReqPacketForCreate();
						req.setFrom("arbitman_syn");
						jr = new JrDbHelp();
						rp=jr.create(req);
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
		else{
			return "fail";
		}			
	}
	
}
