package cn.com.zc.jrdbModel;

import java.util.HashMap;
import java.util.Map;

public class ResumeSub extends JrdbBaseModel{
	private Map fieldMap;
	private String id;
	private String startdate;
	private String enddate;
	private String company;
	private String business;
	private String proveman;
	private String lawyerabout;
	private String testdate;
	private String user;
	private String u_time;
	private String used;
	private String remark;
	private String arbit_id;

	public void setFieldMap(){
		Map fieldMapTmp = new HashMap();
		fieldMapTmp.put("startdate","起时间");
		fieldMapTmp.put("enddate","止时间");
		fieldMapTmp.put("company","工作单位");
		fieldMapTmp.put("business","职务");
		fieldMapTmp.put("proveman","证明人");
		fieldMapTmp.put("lawyerabout","是否与法律有关");
		fieldMap = fieldMapTmp;
	}
	
	public Map getFieldMap(){
		return fieldMap;
		
	}
	
	public String getArbit_id() {
		return arbit_id;
	}

	public void setArbit_id(String arbit_id) {
		this.arbit_id = arbit_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getBusiness() {
		return business;
	}

	public void setBusiness(String business) {
		this.business = business;
	}

	public String getProveman() {
		return proveman;
	}

	public void setProveman(String proveman) {
		this.proveman = proveman;
	}

	public String getLawyerabout() {
		return lawyerabout;
	}

	public void setLawyerabout(String lawyerabout) {
		this.lawyerabout = lawyerabout;
	}

	public String getTestdate() {
		return testdate;
	}

	public void setTestdate(String testdate) {
		this.testdate = testdate;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getU_time() {
		return u_time;
	}

	public void setU_time(String u_time) {
		this.u_time = u_time;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
}
