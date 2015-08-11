package cn.com.zc.web;

import java.util.List;

import cn.com.zc.model.Roles;
import cn.com.zc.service.facade.MenuService;
import cn.com.zc.service.facade.RoleService;

public class RoleAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String searchType;
	private String condition;
	private String searchValue;
	private int id;
	private int pageNo = 1;
	private int pageSize = 10;
	private int pageCount;
	private MenuService menuService;

	public MenuService getMenuService() {
		return menuService;
	}

	public void setMenuService(MenuService menuService) {
		this.menuService = menuService;
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

	private Roles role;
	private List<Roles> roleList;
	private RoleService roleService;
	private String result;
	private String code;
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	private String roleCode;

	public String getRoleCode() {
		return roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Roles getRole() {
		return role;
	}

	public void setRole(Roles role) {
		this.role = role;
	}

	public List<Roles> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Roles> roleList) {
		this.roleList = roleList;
	}

	public String findRoleList() {
		StringBuffer condition = new StringBuffer();
		Object[] value = null;
		if (searchValue != null && !"".equals(searchValue)) {
			if ("and".equals(condition)) {
				condition.append(" and " + searchType + " = ?");
			} else {
				condition.append(" and " + searchType + " like ?");
				searchValue = "%" + searchValue + "%";
			}
			Object[] values = { searchValue };
			value = values;
		}
		roleList = roleService.findRoleList(condition.toString(), value,
				0, 0);
		
		return SUCCESS;
	}
	
	public String toInsertRole(){
		return SUCCESS;
	}
	
	public String insertRole(){
		roleService.insertRole(role);
		return SUCCESS;
	}
	public String updateRole(){
		roleService.updateRole(role);
		return SUCCESS;
	}
	public String toUpdateRole(){
		Object[] value={id};
		roleList=roleService.findRoleList("and id=?", value, 1, 1);
		role=roleList.get(0);
		return SUCCESS;
	}
	
	public String deleteRole(){
		roleService.deleteRole(id);
		return SUCCESS;
	}
	
	public String makeTree(){
		String userCode= (String) session.get("userCode");
		result=menuService.menuTree(roleCode);
		//result = "[{'id':'0','text':'中国'}]";
		//  result = "[{'id':'0','text':'树形菜单根节点','children':{}}]";
		return "result";
	}
	
	public String checkSameKey(){
		Object[] value = { code };
		roleList = roleService.findRoleList("and code=?", value, 0, 0);
		if (roleList.size()>0) {
			result = "fail";
		}else {
			result = "success";
		}
		return "result";
	}
}
