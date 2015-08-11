package cn.com.zc.jrdbModel;

import javax.persistence.Column;

public class AttachmentIn extends JrdbBaseModel {
	private String id;
	private String guid;
	private String category;
	private String up_time;
	private String file_name;
	private String content_type;
	private String remark;
	private String description;
	private String ext_file_path;
	private String ext_file_url;
	private String file_path;
	private String file_url;
   
	public AttachmentIn(){
	}	
	
	
	public AttachmentIn(String id,String guid, String category,String up_time,String file_name,String content_type,String remark,String ext_file_path,String ext_file_url,String file_path,String file_url){
		this.id=id;
		this.guid=guid;
		this.category=category;
		this.up_time=up_time;
		this.file_name=file_name;
		this.content_type = content_type;
		this.remark=remark;
		this.ext_file_path=ext_file_path;
		this.ext_file_url=ext_file_url;
		this.file_path=file_path;
		this.file_url=file_url;
	}
	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGuid() {
		return guid;
	}

	public void setGuid(String guid) {
		this.guid = guid;
	}
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getUp_time() {
		return up_time;
	}

	public void setUp_time(String up_time) {
		this.up_time = up_time;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getContent_type() {
		return content_type;
	}

	public void setContent_type(String content_type) {
		this.content_type = content_type;
	}
	
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getExt_file_path() {
		return ext_file_path;
	}

	public void setExt_file_path(String ext_file_path) {
		this.ext_file_path = ext_file_path;
	}

	public String getFile_path() {
		return file_path;
	}

	public void setFile_path(String file_path) {
		this.file_path= file_path;
	}

	public String getExt_file_url() {
		return ext_file_url;
	}

	public void setExt_file_url(String ext_file_url) {
		this.ext_file_url = ext_file_url;
	}

	public String getFile_url() {
		return file_url;
	}

	public void setFile_url(String file_url) {
		this.file_url = file_url;
	}
}
