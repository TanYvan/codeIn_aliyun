package cn.com.zc.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "attachment")
public class Attachment extends BaseModel {
	private int id;
	private String guid;
	private String category;
	private String upTime;
	private String fileName;
	private String contentType;
	private String remark;
	private String description;
	private String extFilePath;
	private String extFileUrl;
	private String filePath;
	private String fileUrl;
   
	public Attachment(){
	}	
	
	public Attachment(int id,String category,String upTime,String fileName,String contentType,String remark,String ext_file_path,String ext_file_url,String file_path,String file_url){
		this.id=id;
		this.category=category;
		this.upTime=upTime;
		this.fileName=fileName;
		this.contentType = contentType;
		this.remark=remark;
		this.extFilePath=ext_file_path;
		this.extFileUrl=ext_file_url;
		this.filePath=file_path;
		this.fileUrl=file_url;
	}
	
	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "guid")
	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}
	
	@Column(name = "category")
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Column(name = "up_time")
	public String getUpTime() {
		return upTime;
	}

	public void setUpTime(String upTime) {
		this.upTime = upTime;
	}

	@Column(name = "file_name")
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	@Column(name = "content_type")
	public String getContentType() {
		return contentType;
	}

	public void setContentType(String content_type) {
		this.contentType = content_type;
	}
	
	@Column(name = "remark")
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Column(name = "description")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	@Column(name = "ext_file_path")
	public String getExtFilePath() {
		return extFilePath;
	}

	public void setExtFilePath(String extFilePath) {
		this.extFilePath = extFilePath;
	}

	@Column(name = "file_path")
	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	@Column(name = "ext_file_url")
	public String getExtFileUrl() {
		return extFileUrl;
	}

	public void setExtFileUrl(String extFileUrl) {
		this.extFileUrl = extFileUrl;
	}

	@Column(name = "file_url")
	public String getFileUrl() {
		return fileUrl;
	}

	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}
}
