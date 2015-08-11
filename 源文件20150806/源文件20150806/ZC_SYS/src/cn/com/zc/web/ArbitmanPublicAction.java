package cn.com.zc.web;

import java.util.ArrayList;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.model.Param;
import cn.com.zc.model.ArbitmanPublicView;
import cn.com.zc.model.Wuser;
import cn.com.zc.service.facade.ArbitmanPublicService;

public class ArbitmanPublicAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private ArbitmanPublicService arbitmanPublicService;
	private List<ArbitmanPublicView> arbitmanPublicViewList;
	private String name;
	private String special;
	private String city;
	private String country;
	private int pageNo = 1;
	private int pageSize = 20;
	private int pageCount;
	private String page;// 当前第几页
	private int count;
	private String error;
	private String page_str;
	
	public String getPage_str() {
		return page_str;
	}

	public void setPage_str(String page_str) {
		this.page_str = page_str;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	
	public ArbitmanPublicService getArbitmanPublicService() {
		return arbitmanPublicService;
	}

	public void setArbitmanPublicService(ArbitmanPublicService arbitmanPublicService) {
		this.arbitmanPublicService = arbitmanPublicService;
	}
	
	public List<ArbitmanPublicView> getArbitmanPublicViewList() {
		return arbitmanPublicViewList;
	}

	public void setArbitmanPublicService(List<ArbitmanPublicView> arbitmanPublicViewList) {
		this.arbitmanPublicViewList = arbitmanPublicViewList;
	}
	
	public String findArbitmanPublicList() {
		ArrayList<Param> params = new ArrayList<Param>();
		List c_list = new ArrayList();
		StringBuffer condition = new StringBuffer();
		condition.append(" and role_code like '%0006%' ");
		page_str = "";
		if (name != null && !"".equals(name.trim())) {
			condition.append(" and (a.name_idcard like ? or a.name_idcard_en like ?)"); 
			c_list.add("%" + name.trim() + "%");
			c_list.add("%" + name.trim() + "%");
			page_str = page_str + "&name=" + name.trim();
		}
		
		if (special != null && !"".equals(special.trim())) {
			condition.append(" and (a.special like ? or a.special_en like ?)"); 
			c_list.add("%" + special.trim() + "%");
			c_list.add("%" + special.trim() + "%");
			page_str = page_str + "&special=" + special.trim();
		}
		
		if (city != null && !"".equals(city.trim())) {
			condition.append(" and (a.city like ? or a.city_en like ?)"); 
			c_list.add("%" + city.trim() + "%");
			c_list.add("%" + city.trim() + "%");
			page_str = page_str + "&city=" + city.trim();
		}
		
		if (country != null && !"".equals(country.trim())) {
			condition.append(" and (a.country like ? or a.country_en like ?)"); 
			c_list.add("%" + country.trim() + "%");
			c_list.add("%" + country.trim() + "%");
			page_str = page_str + "&country=" + country.trim();
		}
		
		Object[] value = c_list.toArray();
		arbitmanPublicViewList = arbitmanPublicService.findNowList(condition.toString(),
				value, pageNo, pageSize);
		count = arbitmanPublicService.getNowCounts(condition.toString(), value);
		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		return SUCCESS;
	}

}
