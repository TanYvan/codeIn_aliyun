package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "evaluate")
public class Evaluate extends BaseModel {

	private int id;
	private String category;
	private String data_text;
	private String data_val;
	private String parent_val;
	private String recevice_code;
	private String remark;
	private Integer score;
	private String u;
	private String u_t;
	private String used;
	private String user_code;
	private String user_name;
	private String user_type;

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "category")
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Column(name = "data_text")
	public String getData_text() {
		return data_text;
	}

	public void setData_text(String data_text) {
		this.data_text = data_text;
	}

	@Column(name = "data_val")
	public String getData_val() {
		return data_val;
	}

	public void setData_val(String data_val) {
		this.data_val = data_val;
	}

	@Column(name = "parent_val")
	public String getParent_val() {
		return parent_val;
	}

	public void setParent_val(String parent_val) {
		this.parent_val = parent_val;
	}

	@Column(name = "recevice_code")
	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}

	@Column(name = "remark")
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Column(name = "score")
	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}
	
	/*
	public void setScore(Integer score) {
		this.score = score.IntegerValue();
	}
	*/

	@Column(name = "u")
	public String getU() {
		return u;
	}

	public void setU(String u) {
		this.u = u;
	}

	@Column(name = "u_t")
	public String getU_t() {
		return u_t;
	}

	public void setU_t(String u_t) {
		this.u_t = u_t;
	}

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	@Column(name = "user_code")
	public String getUser_code() {
		return user_code;
	}

	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}

	@Column(name = "user_name")
	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	@Column(name = "user_type")
	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

}
