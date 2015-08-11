package cn.com.zc.web;

import java.util.List;
import cn.com.zc.model.Roles;
import cn.com.zc.model.Urs;
import cn.com.zc.service.facade.RoleService;
import cn.com.zc.service.facade.UrService;

public class UrAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String code;
	private String result;
	private String user;
	private String roleCode;
	
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getRoleCode() {
		return roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	private List<Urs> urList;
	private List<Roles> roleList;
	private int pageNo = 1;
	private int pageSize = 10;
	private int pageCount;

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

	public List<Roles> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Roles> roleList) {
		this.roleList = roleList;
	}

	private Urs urs;

	public List<Urs> getUrList() {
		return urList;
	}

	public void setUrList(List<Urs> urList) {
		this.urList = urList;
	}

	public Urs getUrs() {
		return urs;
	}

	public void setUrs(Urs urs) {
		this.urs = urs;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	private UrService urSerivce;

	public UrService getUrService() {
		return urSerivce;
	}

	public void setUrService(UrService urService) {
		this.urSerivce = urService;
	}

	private RoleService roleService;

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public String toUpdateUr() {
		roleList = urSerivce.toUpdateUr(user,1,10000000);
		int count = urSerivce.getCounts(user);
		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		return SUCCESS;
	}

	public String toInsertUr() {
		List<Urs> urList = urSerivce.findUrList(user);
		String codes = "";
		int count = 0;
		if (urList.size() > 0) {
			for (int i = 0; i < urList.size(); i++) {
				codes += "," + urList.get(i).getRoleCode();
			}
			codes = codes.substring(1);
			//Object[] value = { codes };
			Object[] value = { user };
			roleList = roleService.findRoleList(" and code not in (select roleCode from Urs  where userCode=?)", value,
					0, 0);
			count = roleService.getCounts(" and code not in (select roleCode from Urs  where userCode=?)", value);
		} else {
			roleList = roleService.findRoleList("", null, 1,100000);
			count = roleService.getCounts("", null);
		}

		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		return SUCCESS;
	}

	public String insertUr() {
		Urs urs = new Urs();
		urs.setRoleCode(roleCode);
		urs.setUserCode(user);
		urSerivce.insertUr(urs);
		return SUCCESS;
	}
	
	public String deleteUr() {
		Urs urs=new Urs();
		urs.setUserCode(user);
		urs.setRoleCode(roleCode);
		urSerivce.deleteUr(urs);
		return SUCCESS;
	}
}
