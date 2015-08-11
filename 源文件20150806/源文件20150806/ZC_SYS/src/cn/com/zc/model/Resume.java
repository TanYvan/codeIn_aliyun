package cn.com.zc.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "resume")
public class Resume extends BaseModel{
	private int id;
	private Integer status;
	private String startdate;
	private String enddate;
	private String company;
	private String business;
	private String proveman;
	private String lawyerAbout;
	private String testString;
	private String user;
	private String uTime;
	private String used;
	private String remark;
	private String arbitId;

	@Column(name = "arbit_id")
	public String getArbitId() {
		return arbitId;
	}

	public void setArbitId(String arbitId) {
		this.arbitId = arbitId;
	}

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	/*
	public void setStatus(Integer status) {
		this.status = status.IntegerValue();
	}
	*/

	@Column(name = "startdate")
	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate= startdate;
	}

	@Column(name = "enddate")
	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	@Column(name = "company")
	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@Column(name = "business")
	public String getBusiness() {
		return business;
	}

	public void setBusiness(String business) {
		this.business = business;
	}

	@Column(name = "proveman")
	public String getProveman() {
		return proveman;
	}

	public void setProveman(String proveman) {
		this.proveman = proveman;
	}

	@Column(name = "lawyerabout")
	public String getLawyerAbout() {
		return lawyerAbout;
	}

	public void setLawyerAbout(String lawyerAbout) {
		this.lawyerAbout = lawyerAbout;
	}

	@Column(name = "testdate")
	public String getTestString() {
		return testString;
	}

	public void setTestString(String testString) {
		this.testString = testString;
	}

	@Column(name = "user")
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	@Column(name = "u_time")
	public String getuTime() {
		return uTime;
	}

	public void setuTime(String uTime) {
		this.uTime = uTime;
	}

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	@Column(name = "remark")
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
}
