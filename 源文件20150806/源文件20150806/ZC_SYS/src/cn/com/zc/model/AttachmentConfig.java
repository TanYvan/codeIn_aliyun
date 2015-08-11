package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "attachment_config")
public class AttachmentConfig extends BaseModel {
	private int id;
	private String code;
	private String name;
	private String networkDir;
	private String extranetDir;
	private String remark;
	
	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	@Column(name = "network_dir")
	public String getNetworkDir() {
		return networkDir;
	}

	public void setNetworkDir(String networkDir) {
		this.networkDir = networkDir;
	}

	@Column(name = "extranet_dir")
	public String getExtranetDir() {
		return extranetDir;
	}

	public void setExtranetDir(String extranetDir) {
		this.extranetDir = extranetDir;
	}
	
	@Column(name = "remark")
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
}
