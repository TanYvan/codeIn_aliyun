package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "doc_format")
public class DocFormat extends BaseModel {
	private int id ; 
	private String used ; 
	private String code ; 
	private String name ;
	private String nameTw;
	private String nameEn;
	
	@Id
	@Column(name = "id")
	public int getId( ) { 
		return id; 
	}
	public void setId(int id) { 
		this.id = id; 
	}
	@Column(name = "used")
	public String getUsed( ) { 
		return used; 
	}
	public void setUsed(String used) { 
		this.used = used; 
	}
	
	@Column(name = "code")
	public String getCode( ) { 
		return code; 
	}
	public void setCode(String code) { 
		this.code = code; 
	}
	
	@Column(name = "name")
	public String getName( ) { 
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
}
