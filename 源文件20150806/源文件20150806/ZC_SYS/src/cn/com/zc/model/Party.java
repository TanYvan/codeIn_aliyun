package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "party")
public class Party extends BaseModel{
	private int id;
	private Integer status;
	private String used;
	private String applyCode;
	private String receviceCode;
	private Integer partyType;
	private String commissary;
	private Integer isPerson;
	private String partyName;
	private String dutyName;
	private String mobileTel;
	private String email;
	private String idnum;
	private String addr;
	private String tel;
	private String postcode;
	private String postTelCode;
	private String profession;
	private String duty;
	private String area;
	private String acceptSendDate;
	private String acceptSignDate;
	private String suitSignDate;
	private String suitSendDate;
	private String arbitBookSendDate;
	private String u;
	private String uT;
	private String subprofession;

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

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

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
	public Integer getPartyType() {
		return partyType;
	}

	public void setPartyType(Integer partyType) {
		this.partyType = partyType;
	}
	
	/*
	public void setPartyType(Integer partyType) {
		this.partyType = partyType.IntegerValue();
	}
	*/

	@Column(name = "commissary")
	public String getCommissary() {
		return commissary;
	}

	public void setCommissary(String commissary) {
		this.commissary = commissary;
	}

	@Column(name = "isperson")
	public Integer getIsPerson() {
		return isPerson;
	}

	public void setIsPerson(Integer isPerson) {
		this.isPerson = isPerson;
	}
	
	/*
	public void setIsPerson(Integer isPerson) {
		this.isPerson = isPerson.IntegerValue();
	}
	*/

	@Column(name = "partyname")
	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}

	@Column(name = "dutyname")
	public String getDutyName() {
		return dutyName;
	}

	public void setDutyName(String dutyName) {
		this.dutyName = dutyName;
	}

	@Column(name = "mobiletel")
	public String getMobileTel() {
		return mobileTel;
	}

	public void setMobileTel(String mobileTel) {
		this.mobileTel = mobileTel;
	}

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "idnum")
	public String getIdnum() {
		return idnum;
	}

	public void setIdnum(String idnum) {
		this.idnum = idnum;
	}

	@Column(name = "addr")
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Column(name = "tel")
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Column(name = "postcode")
	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	@Column(name = "post_tel_code")
	public String getPostTelCode() {
		return postTelCode;
	}

	public void setPostTelCode(String postTelCode) {
		this.postTelCode = postTelCode;
	}

	@Column(name = "profession")
	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	@Column(name = "Duty")
	public String getDuty() {
		return duty;
	}

	public void setDuty(String duty) {
		this.duty = duty;
	}

	@Column(name = "area")
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	@Column(name = "AcceptSendDate")
	public String getAcceptSendDate() {
		return acceptSendDate;
	}

	public void setAcceptSendDate(String acceptSendDate) {
		this.acceptSendDate = acceptSendDate;
	}

	@Column(name = "AcceptSignDate")
	public String getAcceptSignDate() {
		return acceptSignDate;
	}

	public void setAcceptSignDate(String acceptSignDate) {
		this.acceptSignDate = acceptSignDate;
	}

	@Column(name = "SuitSignDate")
	public String getSuitSignDate() {
		return suitSignDate;
	}

	public void setSuitSignDate(String suitSignDate) {
		this.suitSignDate = suitSignDate;
	}

	@Column(name = "SuitSendDate")
	public String getSuitSendDate() {
		return suitSendDate;
	}

	public void setSuitSendDate(String suitSendDate) {
		this.suitSendDate = suitSendDate;
	}

	@Column(name = "ArbitBookSendDate")
	public String getArbitBookSendDate() {
		return arbitBookSendDate;
	}

	public void setArbitBookSendDate(String arbitBookSendDate) {
		this.arbitBookSendDate = arbitBookSendDate;
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

	@Column(name = "subprofession")
	public String getSubprofession() {
		return subprofession;
	}

	public void setSubprofession(String subprofession) {
		this.subprofession = subprofession;
	}

}
