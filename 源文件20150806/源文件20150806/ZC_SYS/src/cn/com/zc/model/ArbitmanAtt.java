package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "arbitman_att")
public class ArbitmanAtt extends BaseModel {
	private int id;
	private Integer status;
	private Integer attId;
	private String u;
	private String uT;
	private String used;
	private String arbitman;

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
	
	@Column(name = "att_id")
	public Integer getAttId() {
		return attId;
	}

	public void setAttId(Integer attId) {
		this.attId = attId;
	}
	
	/*
	public void setAttId(Integer attId) {
		this.attId = attId.IntegerValue();
	}
	*/
	
	@Column(name = "u")
	public String getU() {
		return u;
	}

	public void setU(String u) {
		this.u = u;
	}

	@Column(name = "u_t")
	public String getuT() {
		return uT;
	}

	public void setuT(String uT) {
		this.uT = uT;
	}
	
	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	@Column(name = "arbitman")
	public String getArbitman() {
		return arbitman;
	}

	public void setArbitman(String arbitman) {
		this.arbitman = arbitman;
	}
}
