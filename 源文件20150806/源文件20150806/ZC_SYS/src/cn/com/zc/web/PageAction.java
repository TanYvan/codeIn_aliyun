package cn.com.zc.web;

import java.util.List;

import cn.com.zc.model.Pages;
import cn.com.zc.service.facade.PageService;

public class PageAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String code;
	private String searchType;
	private String condition;
	private String searchValue;
	private int id;
	private int pageNo = 1;
	private int pageSize = 10;
	private int pageCount;
	private Pages page;
	private List<Pages> pageList;
	private PageService pageService;
	private String result;

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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Pages> getPageList() {
		return pageList;
	}

	public void setPageList(List<Pages> pageList) {
		this.pageList = pageList;
	}

	public Pages getPage() {
		return page;
	}

	public void setPage(Pages page) {
		this.page = page;
	}

	public PageService getPageService() {
		return pageService;
	}

	public void setPageService(PageService pageService) {
		this.pageService = pageService;
	}
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String findPageList() {
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
		condition.append("  order by code");
		pageList = pageService.findPageList(condition.toString(), value,
				0, 0);
		int count = pageService.getCounts(condition.toString(), value);
		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		return SUCCESS;
	}

	public String toUpdatePage() {
		Object[] value = { id };
		pageList = pageService.findPageList("and id=?", value, 0, 0);
		page = pageList.get(0);
		return SUCCESS;
	}

	public String toInsertPage() {
		return SUCCESS;
	}
	
	public String insertPage() {
		pageService.insertPage(page);
		return SUCCESS;
	}

	public String updatePage() {
		pageService.updatePage(page);
		return SUCCESS;
	}

	/*
	public String deletePage() {
		pageService.deletePage(id);
		return SUCCESS;
	}
	*/
	
	public String pageSelect() {
		StringBuffer condition = new StringBuffer();
		Object[] value = null;
		if (searchValue != null && !"".equals(searchValue)) {
			if ("and".equals(condition)) {
				condition.append(" and status='Y' and " + searchType + " = ?");
			} else {
				condition.append(" and status='Y' and " + searchType + " like ?");
				searchValue = "%" + searchValue + "%";
			}
			Object[] values = { searchValue };
			value = values;
		}
		condition.append(" order by code");
		pageList = pageService.findPageList(condition.toString(), value,
				1, 10000000);
		int count = pageService.getCounts(condition.toString(), value);
		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		return SUCCESS;
	}

	public String checkSameKey() {
		Object[] value = { code };
		pageList = pageService.findPageList("and code=?", value, 0, 0);
		if (pageList.size() > 0) {
			result = "fail";
		} else {
			result = "success";
		}
		return "result";
	}
}
