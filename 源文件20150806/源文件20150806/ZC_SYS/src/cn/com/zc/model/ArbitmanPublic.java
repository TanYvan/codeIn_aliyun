package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "arbitman_public")
public class ArbitmanPublic extends BaseModel {
	private String city;
	private String city_en;
	private String code;
	private String country;
	private String country_en;
	private int id;
	private String identity;
	private String name;
	private String name_idcard;
	private String name_idcard_en;
	private String role_code;
	private String special;
	private String special_en;
	private String spell;
	private String used;

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	/*
	public void setId(Integer id) {
		this.id = id.IntegerValue();
	}
	*/

	@Column(name = "city")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "city_en")
	public String getCity_en() {
		return city_en;
	}

	public void setCity_en(String city_en) {
		this.city_en = city_en;
	}

	@Column(name = "code")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Column(name = "country")
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "country_en")
	public String getCountry_en() {
		return country_en;
	}

	public void setCountry_en(String country_en) {
		this.country_en = country_en;
	}

	@Column(name = "identity")
	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	@Column(name = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "name_idcard")
	public String getName_idcard() {
		return name_idcard;
	}

	public void setName_idcard(String name_idcard) {
		this.name_idcard = name_idcard;
	}

	@Column(name = "name_idcard_en")
	public String getName_idcard_en() {
		return name_idcard_en;
	}

	public void setName_idcard_en(String name_idcard_en) {
		this.name_idcard_en = name_idcard_en;
	}

	@Column(name = "role_code")
	public String getRole_code() {
		return role_code;
	}

	public void setRole_code(String role_code) {
		this.role_code = role_code;
	}

	@Column(name = "special")
	public String getSpecial() {
		return special;
	}

	public void setSpecial(String special) {
		this.special = special;
	}

	@Column(name = "special_en")
	public String getSpecial_en() {
		return special_en;
	}

	public void setSpecial_en(String special_en) {
		this.special_en = special_en;
	}

	@Column(name = "spell")
	public String getSpell() {
		return spell;
	}

	public void setSpell(String spell) {
		this.spell = spell;
	}

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

}
