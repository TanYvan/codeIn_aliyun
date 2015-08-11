package cn.com.zc.jrdbModel;

public class DocFormatIn extends JrdbBaseModel {
	private String id ; 
	private String used ; 
	private String code ; 
	private String name ;
	private String name_tw;
	private String name_en;
	
	public String getId( ) { 
		return id; 
	}
	public void setId(String id) { 
		this.id = id; 
	}
		
	public String getUsed( ) { 
		return used; 
	}
	public void setUsed(String used) { 
		this.used = used; 
	}
	
	public String getCode( ) { 
		return code; 
	}
	public void setCode(String code) { 
		this.code = code; 
	}
	
	public String getName( ) { 
		return name; 
	}
	public void setName(String name) { 
		this.name = name; 
	}
	public String getName_tw() {
		return name_tw;
	}
	public void setName_tw(String name_tw) {
		this.name_tw = name_tw;
	}
	public String getName_en() {
		return name_en;
	}
	public void setName_en(String name_en) {
		this.name_en = name_en;
	}

}
