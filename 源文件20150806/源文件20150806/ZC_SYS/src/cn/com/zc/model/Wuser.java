package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "w_user")
public class Wuser extends BaseModel {

	private int id;
	private Integer statusA;
	private String code;
	private String name;
	private String nameIdcard;
	private String password;
	private String idCard;
	private String telephone;
	private String email;
	private String identity;
	private String remark;
	private Integer paperworkId;
	private String fax;
	private String title;
	private String postCode;
	private String company;
	private String addr;
	private String otherContact;
	private String active;
	private String status;

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	@Column(name = "code")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Column(name = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Column(name = "name_idcard")
	public String getNameIdcard() {
		return nameIdcard;
	}

	public void setNameIdcard(String nameIdcard) {
		this.nameIdcard = nameIdcard;
	}
	

	@Column(name = "password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "id_card")
	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	@Column(name = "telephone")
	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "identity")
	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	@Column(name = "remark")
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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
		if (paperworkId != null){
			this.paperworkId = paperworkId.IntegerValue();
		}
	}
	*/

	@Column(name = "fax")
	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	@Column(name = "title")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "postcode")
	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	@Column(name = "company")
	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@Column(name = "addr")
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Column(name = "other_contact")
	public String getOtherContact() {
		return otherContact;
	}

	public void setOtherContact(String otherContact) {
		this.otherContact = otherContact;
	}

	@Column(name = "active")
	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	@Column(name = "status")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
