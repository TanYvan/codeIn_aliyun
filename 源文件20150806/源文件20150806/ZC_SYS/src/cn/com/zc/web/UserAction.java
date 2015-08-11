package cn.com.zc.web;

import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.model.User;
import cn.com.zc.service.facade.UserService;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private User user;
	private List<User> userList;
	private UserService userService;
	private String old_password;
	private String password;
	private String error;

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

	private String result;
	private String code;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getOld_password() {
		return old_password;
	}

	public void setOld_password(String oldPassword) {
		old_password = oldPassword;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
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

	private String searchType;
	private String condition;
	private String searchValue;
	private int id;
	private int pageNo = 1;
	private int pageSize = 10;
	private int pageCount;
	private String rows;// 每页显示的记录数
	private String page_str;

	public String getRows() {
		return rows;
	}

	public void setRows(String rows) {
		this.rows = rows;
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

	public String findUserList() {
		StringBuffer condition2 = new StringBuffer();
		condition2.append( " and used_used='Y'");
		Object[] value = null;
		if (searchValue != null && !"".equals(searchValue)) {
			page_str = page_str + "&searchValue=" + searchValue.trim();
			if ("and".equals(condition)) {
				condition2.append(" and " + searchType + " = ?");
			} else {
				condition2.append(" and " + searchType + " like ?");
				searchValue = "%" + searchValue + "%";
			}
			page_str = page_str + "&searchType=" + searchType.trim();
			page_str = page_str + "&condition=" + condition.trim();
			Object[] values = { searchValue };
			value = values;
		}
		
		sysArgService.initSysArg();
		int number = Integer.parseInt((rows == null || rows == "0") ? App.sysArgMap.get("0100")
				: rows);
		
		userList = userService.findUserList(condition2.toString(), value,
				pageNo, number);
		int count = userService.getCounts(condition2.toString(), value);
		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}

		return SUCCESS;
	}

	public String toUpdateUser() {
		Object[] value = { id };
		userList = userService.findUserList("and id=?", value, 0, 0);
		user = userList.get(0);
		return SUCCESS;
	}
	
	public String toInsertUser() {
		return SUCCESS;
	}
	
	public String insertUser() {
		userService.insertUser(user);
		return SUCCESS;
	}
	
	public String updateUser() {
		Object[] value = { user.getId() };
		userList = userService.findUserList("and id=?", value, 0, 0);
		User user_up = userList.get(0);
		user_up.coverSelf(user);
		userService.updateUser(user_up);
		return SUCCESS;
	}

	public String showUser() {
		Object[] value = { id };
		userList = userService.findUserList("and id=?", value, 0, 0);
		user = userList.get(0);
		return SUCCESS;
	}
	
	public String deleteUser() {
		Object[] value = { id };
		userList = userService.findUserList("and id=?", value, 0, 0);
		user = userList.get(0);
		user.setUsedUsed("N");
		userService.updateUser(user);
		return SUCCESS;
	}

	public String toChangePassWord() {
		user = userService.toChangePassWord(id);
		return SUCCESS;
	}

	public String changePassWord() {
		result = userService.changePassWord(id, old_password, password);
		return "result";
	}

}
