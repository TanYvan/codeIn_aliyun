package cn.com.zc.model;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "users")
public class User extends BaseModel implements Serializable{
	private int id;
	private String usedUsed;
	private String lCode;
	private Integer ord;
	private String code;
	private String spell;
	private String name;
	private String mobiletel;
	private String sex;
	private String password;
	private String roleText;
	private String dutyText;
	private String bankaccount;
	private String bankname;
	private String bankTyp;
	private String idCard;
	private String telephone;
	private String fax;
	private String email;
	private String states;
	private String used;
	private String u;
	private String uT;
	private String bankCode;
	private Set<Roles> roles;

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
	@JoinTable(name = "urs", joinColumns = { @JoinColumn(name = "user_code", referencedColumnName = "code") }, inverseJoinColumns = { @JoinColumn(name = "role_code", referencedColumnName = "code") })
	public Set<Roles> getRoles() {
		return roles;
	}

	public void setRoles(Set<Roles> roles) {
		this.roles = roles;
	}

	private Set<Duties> duties;

	@ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY )
	@JoinTable( name = "user_duties", joinColumns = { @JoinColumn(name = "user_code", referencedColumnName = "code") }, inverseJoinColumns = { @JoinColumn(name = "duty_code", referencedColumnName = "code") })
	public Set<Duties> getDuties() {
		return duties;
	}

	public void setDuties(Set<Duties> duties) {
		this.duties = duties;
	}

	@Column(name = "used_used")
	public String getUsedUsed() {
		return usedUsed;
	}

	public void setUsedUsed(String usedUsed) {
		this.usedUsed = usedUsed;
	}

	@Column(name = "l_code")
	public String getlCode() {
		return lCode;
	}

	public void setlCode(String lCode) {
		this.lCode = lCode;
	}

	@Column(name = "ord")
	public Integer getOrd() {
		return ord;
	}

	public void setOrd(Integer ord) {
		this.ord = ord;
	}
	
	/*
	public void setOrd(Integer ord) {
			this.ord = ord.IntegerValue() ;
	}
	*/

	@Column(name = "code")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Column(name = "spell")
	public String getSpell() {
		return spell;
	}

	public void setSpell(String spell) {
		this.spell = spell;
	}

	@Column(name = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "mobiletel")
	public String getMobiletel() {
		return mobiletel;
	}

	public void setMobiletel(String mobiletel) {
		this.mobiletel = mobiletel;
	}

	@Column(name = "sex")
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@Column(name = "password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "role_text")
	public String getRoleText() {
		return roleText;
	}

	public void setRoleText(String roleText) {
		this.roleText = roleText;
	}

	@Column(name = "duty_text")
	public String getDutyText() {
		return dutyText;
	}

	public void setDutyText(String dutyText) {
		this.dutyText = dutyText;
	}

	@Column(name = "bankaccount")
	public String getBankaccount() {
		return bankaccount;
	}

	public void setBankaccount(String bankaccount) {
		this.bankaccount = bankaccount;
	}

	@Column(name = "bankname")
	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	@Column(name = "bank_typ")
	public String getBankTyp() {
		return bankTyp;
	}

	public void setBankTyp(String bankTyp) {
		this.bankTyp = bankTyp;
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

	@Column(name = "fax")
	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "states")
	public String getStates() {
		return states;
	}

	public void setStates(String states) {
		this.states = states;
	}

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

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

	@Column(name = "bank_code")
	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

}
