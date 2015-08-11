package cn.com.zc.jrdbModel;

public class RegionIn  extends JrdbBaseModel{
	private String arbitman_cost ; 
	private String code ; 
	private int id ; 
	private String name ; 
	private String name_tw;
	private String name_en;
	private String parent ; 
	private String rate_code ; 
	public String getArbitman_cost( ) { 
	  return arbitman_cost; 
	}
	public void setArbitman_cost(String arbitman_cost) { 
	this.arbitman_cost = arbitman_cost; 
	}
	public String getCode( ) { 
	  return code; 
	}
	public void setCode(String code) { 
	this.code = code; 
	}
	public int getId( ) { 
	  return id; 
	}
	public void setId(int id) { 
	  this.id = id; 
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
	public String getParent( ) { 
	  return parent; 
	}
	public void setParent(String parent) { 
	this.parent = parent; 
	}
	public String getRate_code( ) { 
	  return rate_code; 
	}
	public void setRate_code(String rate_code) { 
	this.rate_code = rate_code; 
	}


}
