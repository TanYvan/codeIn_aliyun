package cn.com.zc.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import cn.com.zc.common.App;
import cn.com.zc.model.Handbook;
import cn.com.zc.service.facade.HandbookService;

public class MyHandbookAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String searchType;
	private String condition;
	private String searchValue;
	private String rows;// 每页显示的记录数
	private int pageNo = 1;
	private int pageSize = 10;
	private String range;
	private int pageCount;
	private String page_str;
	private List<String> rangeList;
	private Handbook handbook;
	private List<Handbook> handbookList;
	private HandbookService handbookService;
	private String result;
	private String code;
	//private String page;// 当前第几页
	private int count;
	private String HandbookCode;
	
	private String title;
	private String category;
	private String place;
	private String startdate;
	private String enddate;

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getRows() {
		return rows;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public void setRows(String rows) {
		this.rows = rows;
	}

//	public String getPage() {
//		return page;
//	}
//
//	public void setPage(String page) {
//		this.page = page;
//	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getRange() {
		return range;
	}

	public void setRange(String range) {
		this.range = range;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<String> getRangeList() {
		return rangeList;
	}

	public void setRangeList(List<String> rangeList) {
		this.rangeList = rangeList;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
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

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public String getPage_str() {
		return page_str;
	}

	public void setPage_str(String page_str) {
		this.page_str = page_str;
	}
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getHandbookCode() {
		return HandbookCode;
	}

	public void setHandbookCode(String HandbookCode) {
		this.HandbookCode = HandbookCode;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Handbook getHandbook() {
		return handbook;
	}

	public void setHandbook(Handbook handbook) {
		this.handbook = handbook;
	}

	public List<Handbook> getHandbookList() {
		return handbookList;
	}

	public void setHandbookList(List<Handbook> handbookList) {
		this.handbookList = handbookList;
	}

	public HandbookService getHandbookService() {
		return handbookService;
	}

	public void setHandbookService(HandbookService handbookService) {
		this.handbookService = handbookService;
	}
	
	public String list() {
		page_str = "";
		Map<String, String> statusMap = new HashMap<String, String>();
		statusMap.put("arbitman","1");
		statusMap.put("staff","2");
		statusMap.put("party","3");
		
		StringBuffer condition = new StringBuffer();
		condition.append(" and active=1 and status=1 and ranges like '%" + statusMap.get(session.get("userType").toString()) + "%' ");
		List c_list = new ArrayList();
		if (category==null){
			category="0001";
		}
		if (category != null && !"".equals(category.trim())) {
			condition.append(" and category=?"); 
			c_list.add(category.trim());
			page_str = page_str + "&category=" + category.trim();
		}
		if (place != null && !"".equals(place.trim())) {
			condition.append(" and place like ?");
			c_list.add("%" + place.trim() + "%");
			page_str = page_str + "&place=" + place.trim();
		}
		if (title != null && !"".equals(title.trim())) {
			condition.append(" and  title  like ?");
			c_list.add("%" + title.trim() + "%");
			page_str = page_str + "&title=" + title.trim();
		}
		if (startdate != null && !"".equals(startdate.trim())) {
			condition.append(" and  put_date  >= ?");
			c_list.add(startdate.trim());
			page_str = page_str + "&startdate=" + startdate.trim();
		}
		if (enddate != null && !"".equals(enddate.trim())) {
			condition.append(" and  put_date  <= ?");
			c_list.add(enddate.trim());
			page_str = page_str + "&enddate=" + enddate.trim();
		}
		Object[] value = c_list.toArray();
		
		sysArgService.initSysArg();
		int number = Integer.parseInt((rows == null || rows == "0") ? App.sysArgMap.get("0100")
				: rows);
		handbookList = handbookService.findList(condition.toString(), value,
				pageNo, number);
		
		count = handbookService.getCounts(condition.toString(), value);
		if (count % number == 0){
			pageCount = count / number;
		}else{
			pageCount = count / number + 1;
		}
		
		return SUCCESS;
	}
	
	public String show() {
		Object[] value = { id };
		handbookList = handbookService.findList("and id=?", value, 0,
				0);
		handbook = handbookList.get(0);
		return SUCCESS;
	}
	
}
