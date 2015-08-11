package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "region")
public class Region extends BaseModel {
	private int id;
	private String arbitman_cost;
	private String code;
	private String name;
	private String nameTw;
	private String nameEn;
	private String parent;
	private String rate_code;

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

	@Column(name = "arbitman_cost")
	public String getArbitman_cost() {
		return arbitman_cost;
	}

	public void setArbitman_cost(String arbitman_cost) {
		this.arbitman_cost = arbitman_cost;
	}

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

	@Column(name = "name_tw")
	public String getNameTw() {
		return nameTw;
	}

	public void setNameTw(String nameTw) {
		this.nameTw = nameTw;
	}
	
	@Column(name = "name_en")
	public String getNameEn() {
		return nameEn;
	}

	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}
	
	@Column(name = "parent")
	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}

	@Column(name = "rate_code")
	public String getRate_code() {
		return rate_code;
	}

	public void setRate_code(String rate_code) {
		this.rate_code = rate_code;
	}

}
