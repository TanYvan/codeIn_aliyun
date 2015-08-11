package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "party_request")
public class PartyRequest extends BaseModel{
	private int id;
	private String used;
	private Integer status;
	private String applyCode;
	private String receviceCode;
	private Integer partytype;
	private Integer partyId;
	private String requestdate;
	private String rsendstyle;
	private String rsenddate;
	private String asendstyle;
	private String requestText;
	private String factreason;
	private String u;
	private String uT;
	private String partyName;

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
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

	@Column(name = "partytype")
	public Integer getPartytype() {
		return partytype;
	}

	public void setPartytype(Integer partytype) {
		this.partytype = partytype;
	}
	
	/*
	public void setPartytype(Integer partytype) {
		this.partytype = partytype.IntegerValue();
	}
	*/

	@Column(name = "party_id")
	public Integer getPartyId() {
		return partyId;
	}

	public void setPartyId(Integer partyId) {
		this.partyId = partyId;
	}
	
	/*
	public void setPartyId(Integer partyId) {
		this.partyId = partyId.IntegerValue();
	}
	*/

	@Column(name = "requestdate")
	public String getRequestdate() {
		return requestdate;
	}

	public void setRequestdate(String requestdate) {
		this.requestdate = requestdate;
	}

	@Column(name = "rsendstyle")
	public String getRsendstyle() {
		return rsendstyle;
	}

	public void setRsendstyle(String rsendstyle) {
		this.rsendstyle = rsendstyle;
	}

	@Column(name = "rsenddate")
	public String getRsenddate() {
		return rsenddate;
	}

	public void setRsenddate(String rsenddate) {
		this.rsenddate = rsenddate;
	}

	@Column(name = "asendstyle")
	public String getAsendstyle() {
		return asendstyle;
	}

	public void setAsendstyle(String asendstyle) {
		this.asendstyle = asendstyle;
	}

	@Column(name = "request_text")
	public String getRequestText() {
		return requestText;
	}

	public void setRequestText(String requestText) {
		this.requestText = requestText;
	}

	@Column(name = "factreason")
	public String getFactreason() {
		return factreason;
	}

	public void setFactreason(String factreason) {
		this.factreason = factreason;
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
		return uT;
	}

	public void setUT(String uT) {
		this.uT = uT;
	}

	@Transient
	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}
}
