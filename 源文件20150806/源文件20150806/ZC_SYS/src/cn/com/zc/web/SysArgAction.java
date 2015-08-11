package cn.com.zc.web;

import java.util.List;

import cn.com.zc.model.SysArgs;
import cn.com.zc.service.facade.SysArgService;

public class SysArgAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private SysArgs sysArgs;
	private List<SysArgs> sysArgList;
	private SysArgService sysArgService;
	private String searchType;
	private String condition;
	private String searchValue;
	private String code;
	private String error;
	private int pageNo = 1;
	private int pageSize = 10;
	private int pageCount;
	
	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
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

	public SysArgs getSysArgs() {
		return sysArgs;
	}

	public void setSysArgs(SysArgs sysArgs) {
		this.sysArgs = sysArgs;
	}

	public List<SysArgs> getSysArgList() {
		return sysArgList;
	}

	public void setSysArgList(List<SysArgs> sysArgList) {
		this.sysArgList = sysArgList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public SysArgService getSysArgService() {
		return sysArgService;
	}

	public void setSysArgService(SysArgService sysArgService) {
		this.sysArgService = sysArgService;
	}
	
	public String findSysArgList() {
		StringBuffer condition = new StringBuffer();
		Object[] value = null;
		if (searchValue != null && !"".equals(searchValue)) {
			if ("and".equals(condition)) {
				condition.append(" and " + searchType + " = ? ");
			} else {
				condition.append(" and " + searchType + " like ? ");
				searchValue = "%" + searchValue + "%";
			}
			Object[] values = { searchValue };
			value = values;
		}
		condition.append(" order by code ");
		sysArgList = sysArgService.findSysArgList(condition.toString(), value, 0, 0);
		int count = sysArgService.getCounts(condition.toString(), value);
		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		return SUCCESS;
	}

	public String updateSysArg() {
		sysArgService.updateSysArgs(sysArgs);
		return SUCCESS;
	}

	public String toUpdateSysArg() {
		Object[] value = { id };
		sysArgList = sysArgService.findSysArgList("and id=?", value, pageNo,
				pageSize);
		sysArgs = sysArgList.get(0);
		return SUCCESS;
	}

	public String checkSameKey() {
		Object[] value = { code };
		sysArgList = sysArgService.findSysArgList("and code=?", value, 0, 0);
		if (sysArgList.size()>0) {
			result = "fail";
		}else {
			result = "success";
		}
		return "result";
	}
}
