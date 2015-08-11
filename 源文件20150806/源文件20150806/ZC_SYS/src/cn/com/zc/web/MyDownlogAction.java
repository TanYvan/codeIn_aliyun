package cn.com.zc.web;

import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.model.Downlog;
import cn.com.zc.service.facade.DownlogService;

public class MyDownlogAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String start;
	private String end;
	private String rows;// 每页显示的记录数
	//private String page;// 当前第几页
	
	private String userType1;
	private String user;
	private String downType;
	private String fileName;
	private String description;
	
	private int id;
	private int count;
	private int pageNo = 1;
	private int pageCount;
	
	private String page_str;
	
	private Downlog Downlog;
	private List<Downlog> DownlogList;
	private DownlogService downlogService;
	private String result;
	private String code;

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	
	public String getRows() {
		return rows; 
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

	

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public String getUserType1() {
		return userType1;
	}

	public void setUserType1(String userType1) {
		this.userType1 = userType1;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getDownType() {
		return downType;
	}

	public void setDownType(String downType) {
		this.downType = downType;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}



	public String getPage_str() {
		return page_str;
	}

	public void setPage_str(String page_str) {
		this.page_str = page_str;
	}
	
	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	private String DownlogCode;

	public String getDownlogCode() {
		return DownlogCode;
	}

	public void setDownlogCode(String DownlogCode) {
		this.DownlogCode = DownlogCode;
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

	public String list() {
		StringBuffer condition = new StringBuffer();
		Object[] value = null;
		
		condition.append(" and user_type='" + session.get("userType") + "'");
		condition.append(" and user_code='" + session.get("userCode") + "'");

		if (start != null && !"".equals(start) && !"undefined".equals(start)) {
			condition.append(" and down_time  > '" + start + "' ");
			page_str = page_str + "&start=" + start.trim();
		}
		if (end != null && !"".equals(end) && !"undefined".equals(start)) {
			condition.append(" and down_time  < '" + end + "' ");
			page_str = page_str + "&end=" + end.trim();
		}
		if (downType != null && !"".equals(downType.trim())) {
			condition.append(" and down_type  = '" + downType + "'");
			page_str = page_str + "&downType=" + downType.trim();
		}
		if (fileName != null && !"".equals(fileName.trim())) {
			condition.append(" and  fileName  like '%" + fileName.trim() + "%'");
			page_str = page_str + "&fileName=" +fileName.trim();
		}
		if (description != null && !"".equals(description.trim())) {
			condition.append(" and  description  like '%" + description.trim() + "%'");
			page_str = page_str + "&description=" +description.trim();
		}
		
		condition.append(" order by id desc ");
		
		sysArgService.initSysArg();
		int number = Integer.parseInt((rows == null || rows == "0") ? App.sysArgMap.get("0100")
				: rows);
		DownlogList = downlogService.findDownlogList(condition.toString(),
				value, pageNo, number);
		
		count = downlogService.getCounts(condition.toString(), value);
		if (count % number == 0){
			pageCount = count / number;
		}else{
			pageCount = count / number + 1;
		}
		
		
		return SUCCESS;
	}

	public Downlog getDownlog() {
		return Downlog;
	}

	public void setDownlog(Downlog Downlog) {
		this.Downlog = Downlog;
	}

	public List<Downlog> getDownlogList() {
		return DownlogList;
	}

	public void setDownlogList(List<Downlog> DownlogList) {
		this.DownlogList = DownlogList;
	}

	public DownlogService getDownlogService() {
		return downlogService;
	}

	public void setDownlogService(DownlogService DownlogService) {
		this.downlogService = DownlogService;
	}

}
