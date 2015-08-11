package cn.com.zc.web;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.Param;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.AgentIn;
import cn.com.zc.jrdbModel.ArbitmanIn;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.CaseendbookIn;
import cn.com.zc.jrdbModel.CaseorgIn;
import cn.com.zc.jrdbModel.PartyIn;
import cn.com.zc.jrdbModel.SittingIn;
import cn.com.zc.service.facade.DictionaryService;

public class SearchArbitmanInForAssistantAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private List<ArbitmanIn> arbitmanInList;
	private ArbitmanIn arbitmanIn;
	private String page_bar;
	private String error;
	private String page;
	private String perpage;
	
	private String name_idcard;
	private String special;
	private String city;
	private String country;
	
	public String getName_idcard() {
		return name_idcard;
	}

	public void setName_idcard(String name_idcard) {
		this.name_idcard = name_idcard;
	}
	
	public String getSpecial() {
		return special;
	}

	public void setSpecial(String special) {
		this.special = special;
	}
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
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

	
	public String findArbitmanInForAssistantList() throws Exception {
		ArrayList<Param> params = new ArrayList<Param>();
		
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_arbitmen,tb_arbitmannows");
		req.setSelect("tb_arbitmen.id as id,tb_arbitmen.code as code,tb_arbitmen.name_idcard as name_idcard,tb_arbitmen.name_idcard_en as name_idcard_en,tb_arbitmen.special as special,tb_arbitmen.special_en as special_en,tb_arbitmen.city as city,tb_arbitmen.city_en as city_en,tb_arbitmen.country as country,tb_arbitmen.country_en as country_en,tb_arbitmen.telo as telo,fun_arbitman_industry_text(tb_arbitmen.code) as industry,fun_arbitman_language_text(tb_arbitmen.code) as language");
		

		List<String> conditions =  new ArrayList<String>();
		String sql = " role_code like '%0006%' ";

		if (name_idcard != null && !"".equals(name_idcard)) {
			sql = sql + " and (name_idcard like ? or name_idcard_en like ?)";
		}
		if (special != null && !"".equals(special)) {
			sql = sql + " and (special like ? or special_en like ?)";
		}
		if (city != null && !"".equals(city)) {
			sql = sql + " and (city like ? or city_en like ?)";
		}
		if (country != null && !"".equals(country)) {
			sql = sql + " and (country like ? or country_en like ?)";
		}
		sql = sql + " and tb_arbitmen.code=tb_arbitmannows.arbitman_num and tb_arbitmannows.used='Y'";
		conditions.add(sql);
		if (name_idcard != null && !"".equals(name_idcard)) {
			conditions.add("%" + name_idcard.trim() + "%");
			conditions.add("%" + name_idcard.trim() + "%");
			params.add(new Param("name_idcard",name_idcard));
		}
		if (special != null && !"".equals(special)) {
			conditions.add("%" + special.trim() + "%");
			conditions.add("%" + special.trim() + "%");
			params.add(new Param("special",special));
		}
		if (city != null && !"".equals(city)) {
			conditions.add("%" + city.trim() + "%");
			conditions.add("%" + city.trim() + "%");
			params.add(new Param("city",city));
		}
		if (country != null && !"".equals(country)) {
			conditions.add("%" + country.trim() + "%");
			conditions.add("%" + country.trim() + "%");
			params.add(new Param("country",country));
		}
		
		req.setConditions(conditions);
		req.setParams(params);
		req.setOrder("tb_arbitmen.name_idcard asc,tb_arbitmen.name_idcard_en asc");
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
		if (rp.getStatus().equals("1")){
			arbitmanInList = new ArbitmanIn().getObjects(rp);
			page_bar = page_bar(rp,request.getContextPath() + "/searchArbitmanInForAssistant/findArbitmanInForAssistantList.do","list_page_bar");
			return SUCCESS;
		}
		else{
			return "fail";
		}	
	}
	
}
