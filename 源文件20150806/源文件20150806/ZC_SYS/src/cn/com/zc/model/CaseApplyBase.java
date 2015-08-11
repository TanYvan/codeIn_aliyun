package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "case_apply_base")
public class CaseApplyBase extends BaseModel{
	private int id;
	private Integer status;
	private String applyCode;
	private String receviceCode;
	private String casereason;
	private String remark;
	private String runstyle;
	private String runremark;
	private String runFillT;
	private String uTyp;
	private String u;
	private String uT;
	private String createT;

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
		return applyCode;
	}

	public void setApplyCode(String applyCode) {
		this.applyCode = applyCode;
	}

	@Column(name = "recevice_code")
	public String getReceviceCode() {
		return receviceCode;
	}

	public void setReceviceCode(String receviceCode) {
		this.receviceCode = receviceCode;
	}

	@Column(name = "casereason")
	public String getCasereason() {
		return casereason;
	}

	public void setCasereason(String casereason) {
		this.casereason = casereason;
	}

	@Column(name = "remark")
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Column(name = "runstyle")
	public String getRunstyle() {
		return runstyle;
	}

	public void setRunstyle(String runstyle) {
		this.runstyle = runstyle;
	}

	@Column(name = "runremark")
	public String getRunremark() {
		return runremark;
	}

	public void setRunremark(String runremark) {
		this.runremark = runremark;
	}

	@Column(name = "run_fill_t")
	public String getRunFillT() {
		return runFillT;
	}

	public void setRunFillT(String runFillT) {
		this.runFillT = runFillT;
	}
	
	@Column(name = "u")
	public String getU() {
		return u;
	}

	public void setU(String u) {
		this.u = u;
	}
	
	@Column(name = "u_typ")
	public String getUTyp() {
		return uTyp;
	}

	public void setUTyp(String uTyp) {
		this.uTyp = uTyp;
	}
	
	@Column(name = "u_t")
	public String getUT() {
		return uT;
	}

	public void setUT(String uT) {
		this.uT = uT;
	}
	
	@Column(name = "create_t")
	public String getCreateT() {
		return createT;
	}

	public void setCreateT(String createT) {
		this.createT = createT;
	}
	
}
