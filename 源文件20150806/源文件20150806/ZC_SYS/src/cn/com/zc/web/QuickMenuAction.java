package cn.com.zc.web;

import java.util.List;

import cn.com.zc.model.QuickMenus;
import cn.com.zc.service.facade.QuickMenuService;

public class QuickMenuAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String searchType;
	private String condition;
	private String searchValue;
	private String roleCode;
	private String code;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getRoleCode() {
		return roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	private int id;
	private int pageNo = 1;
	private int pageSize = 10;
	private int pageCount;

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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	private QuickMenus menu;

	public QuickMenus getMenu() {
		return menu;
	}

	public void setMenu(QuickMenus menu) {
		this.menu = menu;
	}

	private List<QuickMenus> menuList;

	public List<QuickMenus> getMenuList() {
		return menuList;
	}

	public void setMenuList(List<QuickMenus> menuList) {
		this.menuList = menuList;
	}

	private QuickMenuService quickMenuService;

	public QuickMenuService getQuickMenuService() {
		return quickMenuService;
	}

	public void setQuickMenuService(QuickMenuService quickMenuService) {
		this.quickMenuService = quickMenuService;
	}

	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String findMenuList() {
		StringBuffer condition = new StringBuffer();
		Object[] value = { roleCode };
		if (searchValue != null && !"".equals(searchValue)) {
			if ("and".equals(condition)) {
				condition.append(" and " + searchType + " = ?");
			} else {
				condition.append(" and " + searchType + " like ?");
				searchValue = "%" + searchValue + "%";
			}
			Object[] values = { searchValue, roleCode };
			value = values;
		}
		condition.append(" and roleCode=?");
		menuList = quickMenuService.findMenuList(condition.toString(), value,
				pageNo, pageSize);
		int count = quickMenuService.getCounts(condition.toString(), value);
		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		roleCode = roleCode;
		return SUCCESS;
	}

	public String toUpdateMenu() {
		Object[] value = { id };
		menuList = quickMenuService.findMenuList("and id=?", value, 0, 0);
		menu = menuList.get(0);
		return SUCCESS;
	}

	public String insertMenu() {
		roleCode = roleCode;
		quickMenuService.insertMenu(menu);
		return SUCCESS;
	}

	public String toInsertMenu() {
		roleCode = roleCode;
		return SUCCESS;
	}

	public String updateMenu() {
		roleCode = roleCode;
		quickMenuService.updateMenu(menu);
		return SUCCESS;
	}

	public String deleteMenu() {
		roleCode = roleCode;
		quickMenuService.deleteMenu(id);
		return SUCCESS;
	}

	public String checkSameKey() {
		Object[] value = { code };
		menuList = quickMenuService.findMenuList("and code=?", value, 0, 0);
		if (menuList.size()>0) {
			result = "fail";
		}else {
			result = "success";
		}
		return "result";
	}
}
