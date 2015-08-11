package cn.com.zc.web;

import java.util.List;
import cn.com.zc.common.*;
import cn.com.zc.model.Menus;
import cn.com.zc.service.facade.MenuService;

public class MenuAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String searchType;
	private String condition;
	private String searchValue;
	private String roleCode;
	private String parent;
	private String code;
	private String error;

	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}

	private int id;
	private int pageNo = 1;
	private int pageSize = 10;
	private int pageCount;

	public String getRoleCode() {
		return roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
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

	public Menus getMenu() {
		return menu;
	}

	public void setMenu(Menus menu) {
		this.menu = menu;
	}

	public List<Menus> getMenuList() {
		return menuList;
	}

	public void setMenuList(List<Menus> menuList) {
		this.menuList = menuList;
	}

	public MenuService getMenuService() {
		return menuService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
	}

	private Menus menu;
	private List<Menus> menuList;
	private MenuService menuService;
	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	public String toUpdateMenu() {
		Object[] value = { id };
		menuList = menuService.findMenuList("and id=?", value, 0, 0);
		menu = menuList.get(0);
		return SUCCESS;
	}

	public String menuRole() {
		roleCode = roleCode;
		return SUCCESS;
	}
	
	public String addTreeNode() {

		return SUCCESS;
	}

	public String checkSameKey() {
		Object[] value = { code };
		menuList = menuService.findMenuList("and code=?", value, 0, 0);
		if (menuList.size()>0) {
			result = "fail";
		}else {
			result = "success";
		}
		return "result";
	}
	
	public String menuTree() {
		roleCode = roleCode;
		return SUCCESS;
	}
	
	public String menuEmpty() {
		return SUCCESS;
	}
	
	public String makeTree(){
		//String userCode= (String) session.get("userCode");
		result=menuService.menuTree(roleCode);
		return "result";
	}
	
	public String menuEdit() {
		StringBuffer condition = new StringBuffer();
		Object[] value = { id };
		condition.append(" and id=?");
		menuList = menuService.findMenuList(condition.toString(), value,
				1, 1);
		if (menuList.size()>0){
			menu = menuList.get(0);
			roleCode = menu.getRoleCode();
			parent = menu.getCode();
		}
		else{
			roleCode = roleCode;
			parent = "0";
		}
		return SUCCESS;
	}

	public String menuReload(){
		return SUCCESS;
	}
	
	public String insertMenu() {
		menuService.insertMenu(menu);
		error = "增加成功";
		return SUCCESS;
	}

	public String updateMenu() {
		menuService.updateMenu(menu);
		error = "修改成功";
		return SUCCESS;
	}
	
	public String deleteMenu() {
		menuService.deleteMenu(id);
		return SUCCESS;
	}	
}
