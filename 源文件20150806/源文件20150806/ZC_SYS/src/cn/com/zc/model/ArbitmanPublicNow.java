package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "arbitman_public_now")
public class ArbitmanPublicNow extends BaseModel {
	private String arbitman_num;
	private int id;
	private Integer inside_id;
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

	@Column(name = "arbitman_num")
	public String getArbitman_num() {
		return arbitman_num;
	}

	public void setArbitman_num(String arbitman_num) {
		this.arbitman_num = arbitman_num;
	}

	@Column(name = "inside_id")
	public Integer getInside_id() {
		return inside_id;
	}

	public void setInside_id(Integer inside_id) {
		this.inside_id = inside_id;
	}

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

}
