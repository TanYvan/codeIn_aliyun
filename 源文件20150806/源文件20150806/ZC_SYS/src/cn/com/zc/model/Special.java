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
@Table(name = "special")
public class Special extends BaseModel  {
	private int id;
	private Integer status;
	private String specialityNum;
	private String user;
	private String uTime;
	private String used;
	private String arbitmanNum;

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
	public String getArbitman_num() {
		return arbitmanNum;
	}

	public void setArbitman_num(String arbitmanNum) {
		this.arbitmanNum = arbitmanNum;
	}
	
	@Column(name = "speciality_num")
	public String getSpecialityNum() {
		return specialityNum;
	}

	public void setSpecialityNum(String specialityNum) {
		this.specialityNum = specialityNum;
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
