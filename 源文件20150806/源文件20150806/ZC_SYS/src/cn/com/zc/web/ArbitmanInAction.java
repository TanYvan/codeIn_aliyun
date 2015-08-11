package cn.com.zc.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.internal.runners.statements.Fail;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanIn;
import cn.com.zc.model.Arbitman;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.SysArgs;
import cn.com.zc.service.facade.ArbitmanService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.SysArgService;
import cn.com.zc.util.ListToJson;

public class ArbitmanInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private List<ArbitmanIn> arbitmanInList;
	private ArbitmanIn arbitmanIn;
	private SysArgService sysArgService;
	private List<String> identityList;
	private String error;
	private HashMap ientity;

	
	public HashMap getIentity() {
		HashMap i= new HashMap();
//		i.put("01","仲裁员");
//		i.put("02","调解员");
//		i.put("01,02","仲裁员,调解员");
//		i.put("02,01","调解员,仲裁员");
		i.put("01",this.getText("arbitman.identity_mes_1"));
		i.put("02",this.getText("arbitman.identity_mes_2"));
		i.put("01,02",this.getText("arbitman.identity_mes_3"));
		i.put("02,01",this.getText("arbitman.identity_mes_4"));
		return i;
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public ArbitmanIn getArbitmanIn() {
		return arbitmanIn;
	}

	public void setArbitmanIn(ArbitmanIn arbitmanIn) {
		this.arbitmanIn = arbitmanIn;
	}

	public List<ArbitmanIn> getArbitmanInList() {
		return arbitmanInList;
	}

	public void setArbitmanInList(List<ArbitmanIn> arbitmanInList) {
		this.arbitmanInList = arbitmanInList;
	}

	public SysArgService getSysArgService() {
		return sysArgService;
	}

	public void setSysArgService(SysArgService sysArgService) {
		this.sysArgService= sysArgService;
	}

	public String toUpdateArbitmanIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_arbitmen");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("code=?");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			
			if (rp.getStatus().equals("1")){
				arbitmanIn = new ArbitmanIn();
				arbitmanInList = arbitmanIn.getObjects(rp);
				arbitmanIn = arbitmanInList.get(0);
				if (arbitmanIn.getIdentity() != null) {
					String[] identities = arbitmanIn.getIdentity().split(",");
					identityList = Arrays.asList(identities);
				}
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
	
	public String updateArbitmanIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_arbitmen");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("code=?");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			arbitmanInList = new ArbitmanIn().getObjects(rp);
			if (arbitmanInList.size()==0){
				return "fail";
			}
			else{
				
				if (arbitmanIn.getIdentity()==null){
					arbitmanIn.setIdentity("");
				}
				else{
					arbitmanIn.setIdentity(arbitmanIn.getIdentity().replace(" ", ""));
				}
				
				ArbitmanIn arbitmanIn_update = arbitmanInList.get(0);
				String id= arbitmanIn_update.getId();
				arbitmanIn_update.coverSelf(arbitmanIn);
				arbitmanIn_update.setCode(session.get("userCode").toString());
				req= new ReqPacket();
				req= arbitmanIn_update.toReqPacketForUpdate();
				req.setId(id);
				req.setFrom("tb_arbitmen");
				jr = new JrDbHelp();
				rp=jr.update(req);
				if (rp.getStatus().equals("1")){
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
		arbitmanInList = arbitmanService.findArbitmanList("and code=?", value, 0,
				0);
		if (arbitmanInList.size() > 0) {
			result = "fail";
		} else {
			result = "success";
		}
		return "result";
	}
	*/
}
