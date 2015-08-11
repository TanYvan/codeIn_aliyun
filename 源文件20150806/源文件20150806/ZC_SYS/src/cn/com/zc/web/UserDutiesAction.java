package cn.com.zc.web;

import java.util.List;

import cn.com.zc.model.Duties;
import cn.com.zc.model.UserDuties;
import cn.com.zc.service.facade.DutiesService;
import cn.com.zc.service.facade.UserDutiesService;

public class UserDutiesAction extends BaseAction{
	private static final long serialVersionUID = 1L;
	private String code;
	private String result;
	private String user;
	private Integer id;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
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

	private String dutyCode;

	public String getdutyCode() {
		return dutyCode;
	}

	public void setdutyCode(String dutyCode) {
		this.dutyCode = dutyCode;
	}

	private List<UserDuties> udList;
	private List<Duties> dutyList;
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

	public List<Duties> getdutyList() {
		return dutyList;
	}

	public void setdutyList(List<Duties> dutyList) {
		this.dutyList = dutyList;
	}

	public List<UserDuties> getUrList() {
		return udList;
	}

	public void setUrList(List<UserDuties> udList) {
		this.udList = udList;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	private UserDutiesService udSerivce;
	private DutiesService dutiesService;

	public DutiesService getDutiesService() {
		return dutiesService;
	}

	public void setDutiesService(DutiesService dutiesService) {
		this.dutiesService = dutiesService;
	}

	public String getDutyCode() {
		return dutyCode;
	}

	public void setDutyCode(String dutyCode) {
		this.dutyCode = dutyCode;
	}

	public List<UserDuties> getUdList() {
		return udList;
	}

	public void setUdList(List<UserDuties> udList) {
		this.udList = udList;
	}

	public List<Duties> getDutyList() {
		return dutyList;
	}

	public void setDutyList(List<Duties> dutyList) {
		this.dutyList = dutyList;
	}

	public UserDutiesService getUdSerivce() {
		return udSerivce;
	}

	public void setUdSerivce(UserDutiesService udSerivce) {
		this.udSerivce = udSerivce;
	}

	public String toUpdateUd() {
		dutyList = udSerivce.toUpdateUd(user);
		return SUCCESS;
	}

	public String toInsertUd() {
		List<UserDuties> udList = udSerivce.findUdList(user);
		String codes = "";
		int count = 0;
		if (udList.size() > 0) {
			for (int i = 0; i < udList.size(); i++) {
				codes += ",'" + udList.get(i).getDutyCode() + "'";
			}
			codes = codes.substring(1);
			//Object[] value = { codes };
			Object[] value = { user };
			dutyList = dutiesService.getDutyList("and code not in (select dutyCode from UserDuties UserDuties where userCode=?) order by code", value,
					0, 0);
			count = dutiesService.getCounts("and code not in (select dutyCode from UserDuties UserDuties where userCode=?)", value);
		} else {
			dutyList = dutiesService.getDutyList("", null, 1, 1000000);
			count = dutiesService.getCounts("", null);
		}

		if (count % pageSize == 0) {
			pageCount = count / pageSize;
		} else {
			pageCount = count / pageSize + 1;
		}
		return SUCCESS;
	}

	public String insertUd() {
		UserDuties urs = new UserDuties();
		urs.setDutyCode(dutyCode);
		urs.setUserCode(user);
		udSerivce.insertUd(urs);
		return SUCCESS;
	}
	
	public String deleteUd() {
		UserDuties ud=new UserDuties();
		ud.setUserCode(user);
		ud.setDutyCode(dutyCode);
		udSerivce.deleteUd(ud);
		return SUCCESS;
	}
}
