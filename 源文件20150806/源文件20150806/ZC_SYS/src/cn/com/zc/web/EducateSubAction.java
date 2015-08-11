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
import cn.com.zc.jrdbModel.EducateSub;

public class EducateSubAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String error;
	private EducateSub educateSub;
	private List<EducateSub> educateSubList;

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

	public EducateSub getEducateSub() {
		return educateSub;
	}

	public void setEducateSub(EducateSub educateSub) {
		this.educateSub = educateSub;
	}

	public List<EducateSub> getEducateSubList() {
		return educateSubList;
	}

	public void setEducateSubList(List<EducateSub> educateSubList) {
		this.educateSubList = educateSubList;
	}

	public String findEducateSubList() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("educate_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbitman=? and used='Y'");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder(" id  asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			if (rp.getStatus().equals("1")){
				educateSubList = new EducateSub().getObjects(rp);
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
	
	public String toInsertEducateSub() {
		return SUCCESS;
	}
	public String insertEducateSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			educateSub.setId(null);
			educateSub.setArbitman(session.get("userCode").toString());
			educateSub.setUsed("Y");
			ReqPacket req= new ReqPacket();
			req = educateSub.toReqPacketForCreate();
			req.setFrom("educate_sub");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.create(req);
			if (rp.getStatus().equals("1")){
				//开始记录信息修改情况////////////////
				EducateSub educateSubIter = new EducateSub();
				educateSubIter.setFieldMap();
				Map filedMap = (Map) educateSubIter.getFieldMap();
				Iterator<String> iter = filedMap.keySet().iterator();
				String sub_after = "\"arbitman\":\"" + session.get("userCode").toString() + "\",";
			    String sub_after_text = "";
				while (iter.hasNext()) {
				    String key = iter.next();
				    String value = (String) filedMap.get(key);
				    String name = key.replaceFirst(key.substring(0, 1), key.substring(0, 1).toUpperCase());
				    String insert_data= (String)educateSub.getClass().getMethod("get" + name, new Class[]{}).invoke(educateSub, new Object[]{});
				    if (insert_data!=null){
				    	insert_data = insert_data.replace(":","：" ).replace(",", "，").replace("\"", "“");
				    	sub_after = sub_after + '"' + key + '"' + ":" + '"' + insert_data + '"' + ",";
				    	try {
					    	String after_code = (String)educateSub.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(educateSub, new Object[]{});
					    	baseDicCnMap = getBaseDicCnMap();
					    	sub_after_text = sub_after_text + value + ":" + baseDicCnMap.get(after_code).get(insert_data).replace(":","：" ).replace(",", "，")  + ",";
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
		    	syn.setItem_type("educate_sub");
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
	
	public String toUpdateEducateSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("educate_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			educateSubList = new EducateSub().getObjects(rp);
			if (educateSubList.size()==0){
				return "fail";
			}
			else{	
				educateSub = educateSubList.get(0);
				if (educateSub.getArbitman().equals(session.get("userCode").toString())){
					return SUCCESS;
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
	
	public String updateEducateSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ReqPacket req= new ReqPacket();
			req.setFrom("educate_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(educateSub.getId());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			educateSubList = new EducateSub().getObjects(rp);
			if (educateSubList.size()==0){
				return "fail";
			}
			else{	
				EducateSub educateSub_update = educateSubList.get(0);
				if (educateSub_update.getArbitman().equals(session.get("userCode").toString())){
					EducateSub educateSub_contrast = new EducateSub();
					educateSub_contrast.coverSelf(educateSub_update);
					String id= educateSub_update.getId();
					educateSub_update.coverSelf(educateSub);
					educateSub_update.setArbitman(session.get("userCode").toString());
					req= new ReqPacket();
					req= educateSub_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("educate_sub");
					jr = new JrDbHelp();
					rp=jr.update(req);
					if (rp.getStatus().equals("1")){
						//开始记录信息修改情况////////////////
						EducateSub educateSubIter = new EducateSub();
						educateSubIter.setFieldMap();
						Map filedMap = (Map) educateSubIter.getFieldMap();
						Iterator<String> iter = filedMap.keySet().iterator();
						while (iter.hasNext()) {
						    String key = iter.next();
						    String value = (String) filedMap.get(key);
						    String name = key.replaceFirst(key.substring(0, 1), key.substring(0, 1).toUpperCase());
						    String sub_after= (String)educateSub.getClass().getMethod("get" + name, new Class[]{}).invoke(educateSub, new Object[]{});
						    String sub_before= (String)educateSub_contrast.getClass().getMethod("get" + name, new Class[]{}).invoke(educateSub_contrast, new Object[]{});
						    String sub_after_text = sub_after;
						    String sub_before_text = sub_before;
						    if (sub_after!=null && !sub_after.equals(sub_before)){
						    	try {
							    	String after_code = (String)educateSub.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(educateSub, new Object[]{});;
							    	String before_code= (String)educateSub_contrast.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(educateSub_contrast, new Object[]{});
							    	baseDicCnMap = getBaseDicCnMap();
							    	sub_after_text = baseDicCnMap.get(after_code).get(sub_after);
							    	sub_before_text = baseDicCnMap.get(before_code).get(sub_before);
							    }
							    catch (Exception e) {
							    	
							    }
						    	ArbitmanSyn syn = new ArbitmanSyn(); 
						    	syn.setStatus("0");
						    	syn.setSyn_type("01");
						    	syn.setChange_time(dateFormat1.format(new Date()));
						    	syn.setArbitman(session.get("userCode").toString());
						    	syn.setArbitman_name(session.get("userName").toString());
						    	syn.setChange_type("2");
						    	syn.setItem_type("educate_sub");
						    	syn.setSub_id(educateSub_contrast.getId());
						    	syn.setItem(key);
						    	syn.setItem_name(value);
						    	syn.setChange_before(sub_before);
						    	syn.setChange_before_text(sub_before_text);
						    	syn.setChange_after(sub_after);
						    	syn.setChange_after_text(sub_after_text);
						    	syn.setRemark("");
						    	req= syn.toReqPacketForCreate();
								req.setFrom("arbitman_syn");
								jr = new JrDbHelp();
								rp=jr.create(req);
						    }
						}
						//////////////////////////////////
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
		}
		else{
			return "fail";
		}			
	}

	public String deleteEducateSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ReqPacket req= new ReqPacket();
			req.setFrom("educate_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			educateSubList = new EducateSub().getObjects(rp);
			if (educateSubList.size()==0){
				return "fail";
			}
			else{	
				EducateSub educateSub_update = educateSubList.get(0);
				EducateSub educateSub_del =  new EducateSub();
				educateSub_del.coverSelf(educateSub_update);
				if (educateSub_update.getArbitman().equals(session.get("userCode").toString())){
					String id= educateSub_update.getId();
					educateSub_update.setUsed("N");
					educateSub_update.setArbitman(session.get("userCode").toString());
					req= new ReqPacket();
					req= educateSub_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("educate_sub");
					jr = new JrDbHelp();
					rp=jr.update(req);
					if (rp.getStatus().equals("1")){
						//开始记录信息修改情况////////////////
						EducateSub educateSubIter = new EducateSub();
						educateSubIter.setFieldMap();
						Map filedMap = (Map) educateSubIter.getFieldMap();
						Iterator<String> iter = filedMap.keySet().iterator();
						String sub_after = "";
					    String sub_after_text = "";
						while (iter.hasNext()) {
						    String key = iter.next();
						    String value = (String) filedMap.get(key);
						    String name = key.replaceFirst(key.substring(0, 1), key.substring(0, 1).toUpperCase());
						    String delete_data= (String)educateSub_del.getClass().getMethod("get" + name, new Class[]{}).invoke(educateSub_del, new Object[]{});
						    if (delete_data!=null){
						    	delete_data = delete_data.replace(":","：" ).replace(",", "，").replace("\"", "“");
						    	sub_after = sub_after + '"' + key + '"' + ":" + '"' + delete_data + '"' + ",";
						    	try {
							    	String after_code = (String)educateSub_del.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(educateSub_del, new Object[]{});
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
				    	syn.setItem_type("educate_sub");
				    	syn.setSub_id(educateSub_del.getId());
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
						////////////////////////////////////////////////////////////
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
