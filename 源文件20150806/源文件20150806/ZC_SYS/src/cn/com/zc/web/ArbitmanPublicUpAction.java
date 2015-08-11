package cn.com.zc.web;

import java.util.ArrayList;
import java.util.List;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanIn;
import cn.com.zc.jrdbModel.ArbitmanNow;
import cn.com.zc.model.ArbitmanPublic;
import cn.com.zc.model.ArbitmanPublicNow;
import cn.com.zc.service.facade.ArbitmanPublicNowService;
import cn.com.zc.service.facade.ArbitmanPublicService;

public class ArbitmanPublicUpAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private ArbitmanPublicService arbitmanPublicService;
	private ArbitmanPublicNowService arbitmanPublicNowService;
	private String error;
	private String num1;
	private String num2;
	private String num3;
	private String num4;
	private String arbitmanMax;
	private String arbitmanNowMax;
	
	
	public String getArbitmanMax() {
		return arbitmanMax;
	}

	public void setArbitmanMax(String arbitmanMax) {
		this.arbitmanMax = arbitmanMax;
	}
	
	public String getArbitmanNowMax() {
		return arbitmanNowMax;
	}

	public void setArbitmanNowMax(String arbitmanNowMax) {
		this.arbitmanNowMax = arbitmanNowMax;
	}
	
	public String getNum1() {
		return num1;
	}

	public void setNum1(String num1) {
		this.num1 = num1;
	}
	
	public String getNum2() {
		return num1;
	}

	public void setNum2(String num2) {
		this.num2 = num2;
	}
	
	public String getNum3() {
		return num3;
	}

	public void setNum3(String num3) {
		this.num3 = num3;
	}
	
	public String getNum4() {
		return num4;
	}

	public void setNum4(String num4) {
		this.num4 = num4;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public ArbitmanPublicService getArbitmanPublicService() {
		return arbitmanPublicService;
	}

	public void setArbitmanPublicService(ArbitmanPublicService arbitmanPublicService) {
		this.arbitmanPublicService = arbitmanPublicService;
	}
	
	public ArbitmanPublicNowService getArbitmanPublicNowService() {
		return arbitmanPublicNowService;
	}

	public void setArbitmanPublicNowService(ArbitmanPublicNowService arbitmanPublicNowService) {
		this.arbitmanPublicNowService = arbitmanPublicNowService;
	}
	
	public String list() throws Exception {
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_arbitmen");
		req.setSelect("max(id) id");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("1=1");
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		List<ArbitmanIn> arbitmanInList = new ArbitmanIn().getObjects(rp);
		if (arbitmanInList.size()>0){
			arbitmanMax = arbitmanInList.get(0).getId();
		}
		
		ReqPacket req2= new ReqPacket();
		req2.setFrom("tb_arbitmannows");
		req2.setSelect("max(id) id");
		List<String> conditions2 =  new ArrayList<String>();
		conditions2.add("1=1");
		req2.setConditions(conditions2);
		JrDbHelp jr2 = new JrDbHelp();
		ResPacket  rp2=jr2.find_all(req2);
		List<ArbitmanNow> arbitmanNowInList = new ArbitmanNow().getObjects(rp2);
		if (arbitmanNowInList.size()>0){
			arbitmanNowMax = arbitmanNowInList.get(0).getId();
		}
		
		return SUCCESS;
	}
	
	public String down() throws Exception {
		
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_arbitmen");
		req.setSelect("id,code,city,city_en,country,country_en,identity,name,name_idcard,name_idcard_en,role_code,special,special_en,spell,used");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("1=1 and id>=? and id<=?");
		conditions.add(num1);
		conditions.add(num2);
		req.setConditions(conditions);
		req.setOrder("id asc");
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		List<ArbitmanIn> arbitmanInList = new ArbitmanIn().getObjects(rp);
		for (ArbitmanIn arbIn:arbitmanInList){
			Object[] value = {arbIn.getCode()};
			List<ArbitmanPublic> arbitmanPublicList = arbitmanPublicService.findList(" and code=?", value, 0, 0);
			ArbitmanPublic arbitmanPublic;
			if (arbitmanPublicList.size()>0){
				arbitmanPublic = arbitmanPublicList.get(0);
				arbitmanPublic.setCode(arbIn.getCode());
				arbitmanPublic.setName(arbIn.getName());
				arbitmanPublic.setCity(arbIn.getCity());
				arbitmanPublic.setCity_en(arbIn.getCity_en());
				arbitmanPublic.setCountry(arbIn.getCountry());
				arbitmanPublic.setCountry_en(arbIn.getCountry_en());
				arbitmanPublic.setIdentity(arbIn.getIdentity());
				arbitmanPublic.setName_idcard(arbIn.getName_idcard());
				arbitmanPublic.setName_idcard_en(arbIn.getName_idcard_en());
				arbitmanPublic.setRole_code(arbIn.getRole_Code());
				arbitmanPublic.setSpecial(arbIn.getSpecial());
				arbitmanPublic.setSpecial_en(arbIn.getSpecial_en());
				arbitmanPublic.setSpell(arbIn.getSpell());
				arbitmanPublic.setUsed(arbIn.getUsed());
				arbitmanPublicService.update(arbitmanPublic);
			}
			else{
				arbitmanPublic = new ArbitmanPublic();
				arbitmanPublic.setCode(arbIn.getCode());
				arbitmanPublic.setName(arbIn.getName());
				arbitmanPublic.setCity(arbIn.getCity());
				arbitmanPublic.setCity_en(arbIn.getCity_en());
				arbitmanPublic.setCountry(arbIn.getCountry());
				arbitmanPublic.setCountry_en(arbIn.getCountry_en());
				arbitmanPublic.setIdentity(arbIn.getIdentity());
				arbitmanPublic.setName_idcard(arbIn.getName_idcard());
				arbitmanPublic.setName_idcard_en(arbIn.getName_idcard_en());
				arbitmanPublic.setRole_code(arbIn.getRole_Code());
				arbitmanPublic.setSpecial(arbIn.getSpecial());
				arbitmanPublic.setSpecial_en(arbIn.getSpecial_en());
				arbitmanPublic.setSpell(arbIn.getSpell());
				arbitmanPublic.setUsed(arbIn.getUsed());
				arbitmanPublicService.insert(arbitmanPublic);
			}
		}
		error = "仲裁员基本信息 " + num1 + " 至 " + num2 + " 下载完成";
		return SUCCESS;
	}
	
	public String down2() throws Exception {
		ReqPacket req2= new ReqPacket();
		req2.setFrom("tb_arbitmannows");
		List<String> conditions2 =  new ArrayList<String>();
		conditions2.add("1=1 and id>=? and id<=?");
		conditions2.add(num3);
		conditions2.add(num4);
		req2.setConditions(conditions2);
		req2.setOrder("id asc");
		JrDbHelp jr2 = new JrDbHelp();
		ResPacket  rp2=jr2.find_all(req2);
		List<ArbitmanNow> arbitmanNowInList = new ArbitmanNow().getObjects(rp2);
		for (ArbitmanNow arbitmanNow:arbitmanNowInList){
			Object[] value = {Integer.parseInt(arbitmanNow.getId())};
			List<ArbitmanPublicNow> arbitmanPublicNowList = arbitmanPublicNowService.findList(" and inside_id=?", value, 0, 0);
			ArbitmanPublicNow arbPublicNow;
			if (arbitmanPublicNowList.size()>0){
				arbPublicNow = arbitmanPublicNowList.get(0);
				arbPublicNow.setInside_id(Integer.parseInt(arbitmanNow.getId()));
				arbPublicNow.setArbitman_num(arbitmanNow.getArbitman_num());
				arbPublicNow.setUsed(arbitmanNow.getUsed());
				arbitmanPublicNowService.update(arbPublicNow);
			}
			else{
				arbPublicNow = new ArbitmanPublicNow();
				arbPublicNow.setInside_id(Integer.parseInt(arbitmanNow.getId()));
				arbPublicNow.setArbitman_num(arbitmanNow.getArbitman_num());
				arbPublicNow.setUsed(arbitmanNow.getUsed());
				arbitmanPublicNowService.insert(arbPublicNow);
			}
		}
		error = "仲裁员聘用信息 " + num3 + " 至 " + num4 + " 下载完成";
		return SUCCESS;
	}

}
