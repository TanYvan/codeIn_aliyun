package cn.com.zc.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "contractsign")
public class Contractsign extends BaseModel{
	private int id;
	private Integer status;
	private String apply_code;
	private String used;
	private String recevice_code;
	private String contractdate;
	private String pactname;
	private String note;
	private String u;
	private String u_t;

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

	@Column(name = "apply_code")
	public String getApplyCode() {
		return apply_code;
	}

	public void setApplyCode(String applyCode) {
		apply_code = applyCode;
	}

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	@Column(name = "recevice_code")
	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String receviceCode) {
		recevice_code = receviceCode;
	}

	@Column(name = "contractdate")
	public String getContractdate() {
		return contractdate;
	}

	public void setContractdate(String contractdate) {
		this.contractdate = contractdate;
	}

	@Column(name = "pactname")
	public String getPactname() {
		return pactname;
	}

	public void setPactname(String pactname) {
		this.pactname = pactname;
	}

	@Column(name = "note")
	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Column(name = "u")
	public String getU() {
		return u;
	}

	public void setU(String u) {
		this.u = u;
	}

	@Column(name = "u_t")
	public String getUT() {
		return u_t;
	}

	public void setUT(String uT) {
		u_t = uT;
	}
}
