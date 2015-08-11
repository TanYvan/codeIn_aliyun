package cn.com.zc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "dictionary")
public class Dictionary extends BaseModel implements Serializable{
	private int id;
	private String typCode;
	private String dataVal;
	private String dataText;
	private String dataTextTw;
	private String dataTextEn;
	private String dataDescribe;
	private String dataParent;
	private Integer ind;
	private String state;
	private String used;

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "typ_code")
	public String getTypCode() {
		return typCode;
	}

	public void setTypCode(String typCode) {
		this.typCode = typCode;
	}

	@Column(name = "data_val")
	public String getDataVal() {
		return dataVal;
	}

	public void setDataVal(String dataVal) {
		this.dataVal = dataVal;
	}

	@Column(name = "data_text")
	public String getDataText() {
		return dataText;
	}

	public void setDataText(String dataText) {
		this.dataText = dataText;
	}
	
	@Column(name = "data_text_tw")
	public String getDataTextTw() {
		return dataTextTw;
	}

	public void setDataTextTw(String dataTextTw) {
		this.dataTextTw = dataTextTw;
	}
	
	@Column(name = "data_text_en")
	public String getDataTextEn() {
		return dataTextEn;
	}

	public void setDataTextEn(String dataTextEn) {
		this.dataTextEn = dataTextEn;
	}

	@Column(name = "data_describe")
	public String getDataDescribe() {
		return dataDescribe;
	}

	public void setDataDescribe(String dataDescribe) {
		this.dataDescribe = dataDescribe;
	}

	@Column(name = "data_parent")
	public String getDataParent() {
		return dataParent;
	}

	public void setDataParent(String dataParent) {
		this.dataParent = dataParent;
	}

	@Column(name = "ind")
	public Integer getInd() {
		return ind;
	}

	public void setInd(Integer ind) {
		this.ind = ind;
	}
	
	/*
	public void setInd(Integer ind) {
		this.ind = ind.IntegerValue();
	}
	*/

	@Column(name = "state")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}
}
