package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "case_att")
public class CaseAtt extends BaseModel{
	private int id;
	private Integer status;
	private String apply_code;
	private Integer att_id;
	private String u_typ;
	private String u;
	private String u_t;
	private String used;

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

	@Column(name = "att_id")
	public Integer getAttId() {
		return att_id;
	}

	public void setAttId(Integer attId) {
		att_id = attId;
	}
	
	/*
	public void setAttId(Integer attId) {
		att_id = attId.IntegerValue();
	}
	*/

	@Column(name = "u_typ")
	public String getU_typ() {
		return u_typ;
	}

	public void setU_typ(String u_typ) {
		this.u_typ = u_typ;
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
		this.u_t = uT;
	}
	
	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}
	
}
