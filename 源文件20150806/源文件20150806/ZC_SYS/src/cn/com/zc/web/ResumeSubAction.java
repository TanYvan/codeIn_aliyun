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
import cn.com.zc.jrdbModel.ResumeSub;

public class ResumeSubAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String error;
	private ResumeSub resumeSub;
	private List<ResumeSub> resumeSubList;

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

	public ResumeSub getResumeSub() {
		return resumeSub;
	}

	public void setResumeSub(ResumeSub resumeSub) {
		this.resumeSub = resumeSub;
	}

	public List<ResumeSub> getResumeSubList() {
		return resumeSubList;
	}

	public void setResumeSubList(List<ResumeSub> resumeSubList) {
		this.resumeSubList = resumeSubList;
	}

	public String findResumeSubList() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("resume_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbit_id=? and used='Y'");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder(" id  asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			if (rp.getStatus().equals("1")){
				resumeSubList = new ResumeSub().getObjects(rp);
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
	
	public String toInsertResumeSub() {
		return SUCCESS;
	}

	public String insertResumeSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			resumeSub.setId(null);
			resumeSub.setArbit_id(session.get("userCode").toString());
			resumeSub.setUsed("Y");
			ReqPacket req= new ReqPacket();
			req = resumeSub.toReqPacketForCreate();
			req.setFrom("resume_sub");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.create(req);
			if (rp.getStatus().equals("1")){
				//开始记录信息修改情况////////////////
				ResumeSub resumeSubIter = new ResumeSub();
				resumeSubIter.setFieldMap();
				Map filedMap = (Map) resumeSubIter.getFieldMap();
				Iterator<String> iter = filedMap.keySet().iterator();
				String sub_after = "\"arbit_id\":\"" + session.get("userCode").toString() + "\",";
			    String sub_after_text = "";
				while (iter.hasNext()) {
				    String key = iter.next();
				    String value = (String) filedMap.get(key);
				    String name = key.replaceFirst(key.substring(0, 1), key.substring(0, 1).toUpperCase());
				    String insert_data= (String)resumeSub.getClass().getMethod("get" + name, new Class[]{}).invoke(resumeSub, new Object[]{});
				    if (insert_data!=null){
				    	insert_data = insert_data.replace(":","：" ).replace(",", "，").replace("\"", "“");
				    	sub_after = sub_after + '"' + key + '"' + ":" + '"' + insert_data + '"' + ",";
				    	try {
					    	String after_code = (String)resumeSub.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(resumeSub, new Object[]{});
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
		    	syn.setItem_type("resume_sub");
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
	
	public String toUpdateResumeSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("resume_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			resumeSubList = new ResumeSub().getObjects(rp);
			if (resumeSubList.size()==0){
				return "fail";
			}
			else{	
				resumeSub = resumeSubList.get(0);
				if (resumeSub.getArbit_id().equals(session.get("userCode").toString())){
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
	
	public String updateResumeSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ReqPacket req= new ReqPacket();
			req.setFrom("resume_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(resumeSub.getId());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			resumeSubList = new ResumeSub().getObjects(rp);
			if (resumeSubList.size()==0){
				return "fail";
			}
			else{	
				ResumeSub resumeSub_update = resumeSubList.get(0);
				if (resumeSub_update.getArbit_id().equals(session.get("userCode").toString())){
					ResumeSub resumeSub_contrast = new ResumeSub();
					resumeSub_contrast.coverSelf(resumeSub_update);
					String id= resumeSub_update.getId();
					resumeSub_update.coverSelf(resumeSub);
					resumeSub_update.setArbit_id(session.get("userCode").toString());
					req= new ReqPacket();
					req= resumeSub_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("resume_sub");
					jr = new JrDbHelp();
					rp=jr.update(req);
					if (rp.getStatus().equals("1")){
						//开始记录信息修改情况////////////////
						ResumeSub resumeSubIter = new ResumeSub();
						resumeSubIter.setFieldMap();
						Map filedMap = (Map) resumeSubIter.getFieldMap();
						Iterator<String> iter = filedMap.keySet().iterator();
						while (iter.hasNext()) {
						    String key = iter.next();
						    String value = (String) filedMap.get(key);
						    String name = key.replaceFirst(key.substring(0, 1), key.substring(0, 1).toUpperCase());
						    String sub_after= (String)resumeSub.getClass().getMethod("get" + name, new Class[]{}).invoke(resumeSub, new Object[]{});
						    String sub_before= (String)resumeSub_contrast.getClass().getMethod("get" + name, new Class[]{}).invoke(resumeSub_contrast, new Object[]{});
						    String sub_after_text = sub_after;
						    String sub_before_text = sub_before;
						    if (sub_after!=null && !sub_after.equals(sub_before)){
						    	try {
							    	String after_code = (String)resumeSub.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(resumeSub, new Object[]{});;
							    	String before_code= (String)resumeSub_contrast.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(resumeSub_contrast, new Object[]{});
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
						    	syn.setItem_type("resume_sub");
						    	syn.setSub_id(resumeSub_contrast.getId());
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

	public String deleteResumeSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ReqPacket req= new ReqPacket();
			req.setFrom("resume_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			resumeSubList = new ResumeSub().getObjects(rp);
			if (resumeSubList.size()==0){
				return "fail";
			}
			else{	
				ResumeSub resumeSub_update = resumeSubList.get(0);
				ResumeSub resumeSub_del =  new ResumeSub();
				resumeSub_del.coverSelf(resumeSub_update);
				if (resumeSub_update.getArbit_id().equals(session.get("userCode").toString())){
					String id= resumeSub_update.getId();
					resumeSub_update.setUsed("N");
					resumeSub_update.setArbit_id(session.get("userCode").toString());
					req= new ReqPacket();
					req= resumeSub_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("resume_sub");
					jr = new JrDbHelp();
					rp=jr.update(req);
					if (rp.getStatus().equals("1")){
						//开始记录信息修改情况////////////////
						ResumeSub resumeSubIter = new ResumeSub();
						resumeSubIter.setFieldMap();
						Map filedMap = (Map) resumeSubIter.getFieldMap();
						Iterator<String> iter = filedMap.keySet().iterator();
						String sub_after = "";
					    String sub_after_text = "";
						while (iter.hasNext()) {
						    String key = iter.next();
						    String value = (String) filedMap.get(key);
						    String name = key.replaceFirst(key.substring(0, 1), key.substring(0, 1).toUpperCase());
						    String delete_data= (String)resumeSub_del.getClass().getMethod("get" + name, new Class[]{}).invoke(resumeSub_del, new Object[]{});
						    if (delete_data!=null){
						    	delete_data = delete_data.replace(":","：" ).replace(",", "，").replace("\"", "“");
						    	sub_after = sub_after + '"' + key + '"' + ":" + '"' + delete_data + '"' + ",";
						    	try {
							    	String after_code = (String)resumeSub_del.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(resumeSub_del, new Object[]{});
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
				    	syn.setItem_type("resume_sub");
				    	syn.setSub_id(resumeSub_del.getId());
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
						/////////////////////////////////////////////
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
