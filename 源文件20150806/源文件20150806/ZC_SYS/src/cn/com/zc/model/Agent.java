package cn.com.zc.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "agents")
public class Agent extends BaseModel{
	private int id;
	private String applyCode;
	private Integer statusA;
	private String used;
	private String postTelCode;
	private String receviceCode;
	private Integer partytype;
	private Integer partyId;
	private String name;
	private String status;
	private String duty;
	private String postcode;
	private String addr;
	private String company;
	private String email;
	private String tel;
	private String mobiletel;
	private String Area;
	private String AcceptSendDate;
	private String AcceptSignDate;
	private String SuitSignDate;
	private String SuitSendDate;
	private String ArbitBookSendDate;
	private String capacity;
	private String u;
	private String uT;
	private String profession;
	private String subprofession;
	private String paperworkType;
	private Integer paperworkId;
	private String partyName;

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "apply_code")
	public String getApplyCode() {
		return applyCode;
	}

	public void setApplyCode(String applyCode) {
		this.applyCode = applyCode;
	}
	
	@Column(name = "status_a")
	public Integer getStatusA() {
		return statusA;
	}

	public void setStatusA(Integer statusA) {
		this.statusA = statusA;
	}
	
	/*
	public void setStatusA(Integer statusA) {
		this.statusA = statusA.IntegerValue();
	}
	*/
	
	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	@Column(name = "post_tel_code")
	public String getPostTelCode() {
		return postTelCode;
	}

	public void setPostTelCode(String postTelCode) {
		this.postTelCode = postTelCode;
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
	
	@Column(name = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "status")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "duty")
	public String getDuty() {
		return duty;
	}

	public void setDuty(String duty) {
		this.duty = duty;
	}

	@Column(name = "postcode")
	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	@Column(name = "addr")
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Column(name = "company")
	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "tel")
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Column(name = "mobiletel")
	public String getMobiletel() {
		return mobiletel;
	}

	public void setMobiletel(String mobiletel) {
		this.mobiletel = mobiletel;
	}

	@Column(name = "Area")
	public String getArea() {
		return Area;
	}

	public void setArea(String area) {
		Area = area;
	}

	@Column(name = "AcceptSendDate")
	public String getAcceptSendDate() {
		return AcceptSendDate;
	}

	public void setAcceptSendDate(String acceptSendDate) {
		AcceptSendDate = acceptSendDate;
	}

	@Column(name = "AcceptSignDate")
	public String getAcceptSignDate() {
		return AcceptSignDate;
	}

	public void setAcceptSignDate(String acceptSignDate) {
		AcceptSignDate = acceptSignDate;
	}

	@Column(name = "SuitSignDate")
	public String getSuitSignDate() {
		return SuitSignDate;
	}

	public void setSuitSignDate(String suitSignDate) {
		SuitSignDate = suitSignDate;
	}

	@Column(name = "SuitSendDate")
	public String getSuitSendDate() {
		return SuitSendDate;
	}

	public void setSuitSendDate(String suitSendDate) {
		SuitSendDate = suitSendDate;
	}

	@Column(name = "ArbitBookSendDate")
	public String getArbitBookSendDate() {
		return ArbitBookSendDate;
	}

	public void setArbitBookSendDate(String arbitBookSendDate) {
		ArbitBookSendDate = arbitBookSendDate;
	}

	@Column(name = "capacity")
	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
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

	@Column(name = "profession")
	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	@Column(name = "subprofession")
	public String getSubprofession() {
		return subprofession;
	}

	public void setSubprofession(String subprofession) {
		this.subprofession = subprofession;
	}

	@Column(name = "paperwork_type")
	public String getPaperworkType() {
		return paperworkType;
	}

	public void setPaperworkType(String paperworkType) {
		this.paperworkType = paperworkType;
	}

	@Column(name = "paperwork_id")
	public Integer getPaperworkId() {
		return paperworkId;
	}

	public void setPaperworkId(Integer paperworkId) {
		this.paperworkId = paperworkId;
	}
	
	/*
	public void setPaperworkId(Integer paperworkId) {
		this.paperworkId = paperworkId.IntegerValue();
	}
	*/
	
	@Transient
	public String getPartyName() {
		return partyName;
	}

	public void setPartyName(String partyName) {
		this.partyName = partyName;
	}
}
