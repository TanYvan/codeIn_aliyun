package cn.com.zc.web;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.List;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanSub;
import cn.com.zc.jrdbModel.ArbitmanSyn;
import cn.com.zc.service.facade.SysArgService;


public class ArbitmanSubAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private List<ArbitmanSub> arbitmanSubList;
	private ArbitmanSub arbitmanSub;
	private SysArgService sysArgService;
	private List<String> identityList;
	private String error;	
	private HashMap ientity;

	
	public HashMap getIentity() {
		HashMap i= new HashMap();
//		i.put("01","仲裁员");
//		i.put("02","调解员");
//		i.put("01,02","仲裁员,调解员");
//		i.put("01,02","仲裁员,调解员");
		i.put("01",this.getText("arbitman.identity_mes_1"));
		i.put("02",this.getText("arbitman.identity_mes_2"));
		i.put("01,02",this.getText("arbitman.identity_mes_3"));
		i.put("02,01",this.getText("arbitman.identity_mes_4"));
		return i;
	}
	
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

	public List<String> getIdentityList() {
		return identityList;
	}

	public void setIdentityList(List<String> identityList) {
		this.identityList = identityList;
	}

	public ArbitmanSub getArbitmanSub() {
		return arbitmanSub;
	}

	public void setArbitmanSub(ArbitmanSub arbitmanSub) {
		this.arbitmanSub = arbitmanSub;
	}

	public List<ArbitmanSub> getArbitmanSubList() {
		return arbitmanSubList;
	}

	public void setArbitmanSubList(List<ArbitmanSub> arbitmanSubList) {
		this.arbitmanSubList = arbitmanSubList;
	}

	public SysArgService getSysArgService() {
		return sysArgService;
	}

	public void setSysArgService(SysArgService sysArgService) {
		this.sysArgService= sysArgService;
	}

	public String toUpdateArbitmanSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("arbitman_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("code=?");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			
			if (rp.getStatus().equals("1")){
				arbitmanSub = new ArbitmanSub();
				arbitmanSubList = arbitmanSub.getObjects(rp);
				if (arbitmanSubList.size()==0){
					return "fail";
				}
				else{
					arbitmanSub = arbitmanSubList.get(0);
					return SUCCESS;
				}
			}
			else{
				return "fail";
			}
		}
		else{
			return "fail";
		}
	}
	
	public String updateArbitmanSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ReqPacket req= new ReqPacket();
			req.setFrom("arbitman_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("code=?");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			arbitmanSubList = new ArbitmanSub().getObjects(rp);
			if (arbitmanSubList.size()==0){
				return "fail";
			}
			else{
				ArbitmanSub arbitmanSub_update = arbitmanSubList.get(0);
				ArbitmanSub arbitmanSub_contrast = new ArbitmanSub();
				arbitmanSub_contrast.coverSelf(arbitmanSub_update);
				String up_id = arbitmanSub_update.getId();
				arbitmanSub_update.coverSelf(arbitmanSub);
				arbitmanSub_update.setCode(session.get("userCode").toString());
				req= new ReqPacket();
				req= arbitmanSub_update.toReqPacketForUpdate();
				req.setId(up_id);
				req.setFrom("arbitman_sub");
				jr = new JrDbHelp();
				rp=jr.update(req);
				if (rp.getStatus().equals("1")){
					//开始记录信息修改情况////////////////
					ArbitmanSub arbitmanSubIter = new ArbitmanSub();
					arbitmanSubIter.setFieldMap();
					Map filedMap = (Map) arbitmanSubIter.getFieldMap();
					Iterator<String> iter = filedMap.keySet().iterator();
					while (iter.hasNext()) {
					    String key = iter.next();
					    String value = (String) filedMap.get(key);
					    String name = key.replaceFirst(key.substring(0, 1), key.substring(0, 1).toUpperCase());
					    String sub_after= (String)arbitmanSub.getClass().getMethod("get" + name, new Class[]{}).invoke(arbitmanSub, new Object[]{});
					    String sub_before= (String)arbitmanSub_contrast.getClass().getMethod("get" + name, new Class[]{}).invoke(arbitmanSub_contrast, new Object[]{});
					    String sub_after_text = sub_after;
					    String sub_before_text = sub_before;
					    if (sub_after!=null && !sub_after.equals(sub_before)){
					    	try {
						    	String after_code = (String)arbitmanSub.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(arbitmanSub, new Object[]{});;
						    	String before_code= (String)arbitmanSub_contrast.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(arbitmanSub_contrast, new Object[]{});
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
					    	syn.setItem_type("arbitman_sub");
					    	syn.setSub_id(arbitmanSub_contrast.getId());
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
		}
		else{
			return "fail";
		}
	}

	public String updateArbitmanFinanceSub() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			ReqPacket req= new ReqPacket();
			req.setFrom("arbitman_sub");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("code=?");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			arbitmanSubList = new ArbitmanSub().getObjects(rp);
			if (arbitmanSubList.size()==0){
				return "fail";
			}
			else{
				ArbitmanSub arbitmanSub_update = arbitmanSubList.get(0);
				ArbitmanSub arbitmanSub_contrast = new ArbitmanSub();
				arbitmanSub_contrast.coverSelf(arbitmanSub_update);
				String up_id = arbitmanSub_update.getId();
				arbitmanSub_update.coverSelf(arbitmanSub);
				arbitmanSub_update.setCode(session.get("userCode").toString());
				req= new ReqPacket();
				req= arbitmanSub_update.toReqPacketForUpdate();
				req.setId(up_id);
				req.setFrom("arbitman_sub");
				jr = new JrDbHelp();
				rp=jr.update(req);
				if (rp.getStatus().equals("1")){
					//开始记录信息修改情况////////////////
					ArbitmanSub arbitmanSubIter = new ArbitmanSub();
					arbitmanSubIter.setFieldMap();
					Map filedMap = (Map) arbitmanSubIter.getFieldMap();
					Iterator<String> iter = filedMap.keySet().iterator();
					while (iter.hasNext()) {
					    String key = iter.next();
					    String value = (String) filedMap.get(key);
					    String name = key.replaceFirst(key.substring(0, 1), key.substring(0, 1).toUpperCase());
					    String sub_after= (String)arbitmanSub.getClass().getMethod("get" + name, new Class[]{}).invoke(arbitmanSub, new Object[]{});
					    String sub_before= (String)arbitmanSub_contrast.getClass().getMethod("get" + name, new Class[]{}).invoke(arbitmanSub_contrast, new Object[]{});
					    String sub_after_text = sub_after;
					    String sub_before_text = sub_before;
					    if (sub_after!=null && !sub_after.equals(sub_before)){
					    	try {
						    	String after_code = (String)arbitmanSub.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(arbitmanSub, new Object[]{});;
						    	String before_code= (String)arbitmanSub_contrast.getClass().getMethod("get" + name + "_DicType", new Class[]{}).invoke(arbitmanSub_contrast, new Object[]{});
						    	baseDicCnMap = getBaseDicCnMap();
						    	sub_after_text = baseDicCnMap.get(after_code).get(sub_after);
						    	sub_before_text = baseDicCnMap.get(before_code).get(sub_before);
						    }
						    catch (Exception e) {
						    }
					    	ArbitmanSyn syn = new ArbitmanSyn(); 
					    	syn.setStatus("0");
					    	syn.setSyn_type("02");
					    	syn.setChange_time(dateFormat1.format(new Date()));
					    	syn.setArbitman(session.get("userCode").toString());
					    	syn.setArbitman_name(session.get("userName").toString());
					    	syn.setChange_type("2");
					    	syn.setItem_type("arbitman_sub");
					    	syn.setSub_id(arbitmanSub_contrast.getId());
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
		}
		else{
			return "fail";
		}
	}
	
	/*
	public String checkSameKey() {
		Object[] value = { code };
		arbitmanSubList = arbitmanService.findArbitmanList("and code=?", value, 0,
				0);
		if (arbitmanSubList.size() > 0) {
			result = "fail";
		} else {
			result = "success";
		}
		return "result";
	}
	*/
}
