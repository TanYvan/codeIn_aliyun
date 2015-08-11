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
@Table(name = "industry")
public class Industry extends BaseModel {
	private int id;
	private String industryNum;
	private String user;
	private String uTime;
	private String used;
	private String arbitmanNum;
	private Integer status;

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
	
	@Column(name = "arbitman_num")
	public String getArbitmanNum() {
		return arbitmanNum;
	}

	public void setArbitmanNum(String arbitmanNum) {
		this.arbitmanNum = arbitmanNum;
	}

	@Column(name = "industry_num")
	public String getIndustryNum() {
		return industryNum;
	}

	public void setIndustryNum(String industryNum) {
		this.industryNum = industryNum;
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
}
