package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name="handbook")
public class Handbook extends BaseModel {
	private int id;
	private Integer status;
	private String title;
	private String content;
	private String category;
	private String ranges;
	private String putDate;
	private Integer num;
	private Integer hits;
	private String createTime;
	private String createUser;
	private String editTime;
	private String editUser;
	private String active;


	@Id
	@Column(name="id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name="status")
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

	@Column(name="title")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name="content")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name="category")
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Column(name="ranges")
	public String getRanges() {
		return ranges;
	}

	public void setRanges(String ranges) {
		this.ranges = ranges;
	}

	@Column(name="put_date")
	public String getPutDate() {
		return putDate;
	}

	public void setPutDate(String putDate) {
		this.putDate = putDate;
	}

	@Column(name="num")
	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}
	
	/*
	public void setNum(Integer num) {
		this.num = num.IntegerValue();
	}
	*/

	@Column(name="hits")
	public Integer getHits() {
		return hits;
	}

	public void setHits(Integer hits) {
		this.hits = hits;
	}
	
	/*
	public void setHits(Integer hits) {
		this.hits = hits.IntegerValue();
	}
	*/

	@Column(name="create_time")
	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	@Column(name="create_user")
	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	@Column(name="edit_time")
	public String getEditTime() {
		return editTime;
	}

	public void setEditTime(String editTime) {
		this.editTime = editTime;
	}

	@Column(name="edit_user")
	public String getEditUser() {
		return editUser;
	}

	public void setEditUser(String editUser) {
		this.editUser = editUser;
	}

	@Column(name="active")
	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

}
