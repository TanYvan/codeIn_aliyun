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
@Table(name = "language")
public class Language extends BaseModel {
	private int id;
	private Integer status;
	private Integer lannum;
	private String language;
	private String ability;
	private String literacy;
	private String remark;
	private String user;
	private String uTime;
	private String arbitman;
	private String used;

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "arbitman")
	public String getArbitman() {
		return arbitman;
	}

	public void setArbitman(String arbitman) {
		this.arbitman = arbitman;
	}

	@Column(name = "u_time")
	public String getuTime() {
		return uTime;
	}

	public void setuTime(String uTime) {
		this.uTime = uTime;
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

	@Column(name = "lannum")
	public Integer getLannum() {
		return lannum;
	}

	public void setLannum(Integer lannum) {
		this.lannum = lannum;
	}
	
	/*
	public void setLannum(Integer lannum) {
		this.lannum = lannum.IntegerValue();
	}
	*/
	
	@Column(name = "language")
	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	@Column(name = "ability")
	public String getAbility() {
		return ability;
	}

	public void setAbility(String ability) {
		this.ability = ability;
	}

	@Column(name = "literacy")
	public String getLiteracy() {
		return literacy;
	}

	public void setLiteracy(String literacy) {
		this.literacy = literacy;
	}

	@Column(name = "remark")
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Column(name = "user")
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

}
