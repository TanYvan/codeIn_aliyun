package cn.com.zc.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Notify;
import cn.com.zc.service.facade.NotifyService;
import cn.com.zc.util.ListToJson;

public class NotifyAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String searchType;
	private String condition;
	private String searchValue;
	private String rows;// 每页显示的记录数
	private String error;
	private String page;// 当前第几页
	private int count;
	private int pageNo = 1;
	private int pageSize;
	private int pageCount;
	private String page_str;
	private String category;
	private String range;
	private String title;
	private HashMap<String, String> hs1 = new HashMap<String, String>();
	private HashMap<String, String> hs2 = new HashMap<String, String>();
	private HashMap<String, String> hs3 = new HashMap<String, String>();
	private List<String> rangeList;
	private Notify notify;
	private List<Notify> notifyList;
	private NotifyService notifyService;
	private String result;
	private String code;
	private HashMap<String, String> typ;
	
	public HashMap getTyp() {
		HashMap<String, String> tmp = new HashMap<String, String>();
		tmp.put("1","发布");
		tmp.put("0","未发布");
		return tmp;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getRows() {
		return rows;
	}

	public void setRows(String rows) {
		this.rows = rows;
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
	
	public HashMap getHs1() {
		return hs1;
	}

	public void setHs1(HashMap hs1) {
		this.hs1 = hs1;
	}

	public HashMap getHs2() {
		return hs2;
	}

	public void setHs2(HashMap hs2) {
		this.hs2 = hs2;
	}

	public HashMap getHs3() {
		return hs3;
	}

	public void setHs3(HashMap hs3) {
		this.hs3 = hs3;
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

	private String NotifyCode;

	public String getNotifyCode() {
		return NotifyCode;
	}

	public void setNotifyCode(String NotifyCode) {
		this.NotifyCode = NotifyCode;
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

	public String findNotifyList() {
		StringBuffer condition = new StringBuffer();
		List c_list = new ArrayList();
		page_str = "";
		if (category != null && !"".equals(category.trim())) {
			condition.append(" and category  = ?");
			c_list.add(category.trim());
			page_str = page_str + "&category=" + category.trim();
		}
		if (range != null && !"".equals(range.trim())) {
			condition.append(" and ranges like ?");
			c_list.add("%" + range.trim() + "%");
			page_str = page_str + "&ranges=" + range.trim();
		}
		if (title != null && !"".equals(title.trim())) {
			condition.append(" and  title  like ?");
			c_list.add("%" + title.trim() + "%");
			page_str = page_str + "&title=" + title.trim();
		}
		
		Object[] value = c_list.toArray();
		
		
		sysArgService.initSysArg();
		int number = Integer.parseInt((rows == null || rows == "0") ? App.sysArgMap.get("0100")
				: rows);
		List<Notify> notifys = notifyService.findNotifyList(condition.toString(), value, pageNo, number);
		
		count = notifyService.getCounts(condition.toString(), value);
		if (count % number == 0){
			pageCount = count / number;
		}else{
			pageCount = count / number + 1;
		}
		
		
		hs1.put("1", "公告");
		hs2.put("1", "仲裁员");
		hs2.put("2", "助理");
		hs2.put("3", "当事人");
		hs2.put("1,2", "仲裁员,助理");
		hs2.put("1,3", "仲裁员,当事人");
		hs2.put("2,3", "助理,当事人");
		hs2.put("1,2,3", "仲裁员,助理,当事人");
		hs3.put("1", "发布");
		hs3.put("0", "未发布");
		notifyList = new ArrayList<Notify>();
		for (int i = 0; i < notifys.size(); i++) {
			notify = notifys.get(i);
			notify.setRanges(hs2.get(notifys.get(i).getRanges()));
			notifyList.add(notify);
		}
		return SUCCESS;
	}

	public String toInsertNotify() {
		return SUCCESS;
	}
	
	public String insertNotify() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		notify.setCreateTime(dateFormat1.format(new Date()));
		String userCode = session.get("userCode").toString();
		notify.setCreateUser(userCode);
		notify.setEditTime(dateFormat1.format(new Date()));
		notify.setEditUser(userCode);
		notify.setActive("1");
		if (notify.getRanges()!=null){
			notify.setRanges(notify.getRanges().replace(" ", "").trim());
		}else{
			notify.setRanges("");
		}
		
		notifyService.insertNotify(notify);
		return SUCCESS;
	}

	public String toUpdateNotify() {
		Object[] value = { id };
		notifyList = notifyService.findNotifyList(" and id=?", value, pageNo,
				pageSize);
		notify = notifyList.get(0);
		if (notify.getRanges()==null){
			notify.setRanges("");
		}
		if (notify.getRanges().indexOf(",") > 0) {
			String[] ranges = notify.getRanges().split(",");
			rangeList = Arrays.asList(ranges);
		}
		else{
			rangeList = new ArrayList<String>() ;
			rangeList.add(notify.getRanges());
		} 
		
		return SUCCESS;
	}
	
	public String updateNotify() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] values = { notify.getId() };
		notifyList = notifyService.findNotifyList(" and id=?", values, 0,0);
		Notify notify_up = notifyList.get(0);
		notify_up.coverSelf(notify);
		notify_up.setEditTime(dateFormat1.format(new Date()));
		String userCode = session.get("userCode").toString();
		notify_up.setEditUser(userCode);
		if (notify_up.getRanges()!=null){
			notify_up.setRanges(notify.getRanges().replace(" ", "").trim());
		}else{
			notify_up.setRanges("");
		}
		notifyService.updateNotify(notify_up);
		return SUCCESS;
	}

	public String deleteNotify() {
		Object[] values = { id };
		notifyList = notifyService.findNotifyList(" and id=?", values, 0,0);
		Notify notify_up = notifyList.get(0);
		notify_up.setActive("0");
		notifyService.updateNotify(notify_up);
		return SUCCESS;
	}
	
	public Notify getNotify() {
		return notify;
	}

	public void setNotify(Notify notify) {
		this.notify = notify;
	}

	public List<Notify> getNotifyList() {
		return notifyList;
	}

	public void setNotifyList(List<Notify> notifyList) {
		this.notifyList = notifyList;
	}

	public NotifyService getNotifyService() {
		return notifyService;
	}

	public void setNotifyService(NotifyService notifyService) {
		this.notifyService = notifyService;
	}

}
