package cn.com.zc.jrdbModel;

public class IndustryIn extends JrdbBaseModel {
	private String id;
	private String industry_num;
	private String user;
	private String u_time;
	private String used;
	private String arbitman_num;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public String getArbitman_num() {
		return arbitman_num;
	}

	public void setArbitman_num(String arbitman_num) {
		this.arbitman_num = arbitman_num;
	}

	public String getIndustry_num() {
		return industry_num;
	}

	public void setIndustry_num(String industry_num) {
		this.industry_num = industry_num;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getU_time() {
		return u_time;
	}

	public void setU_time(String u_time) {
		this.u_time = u_time;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}
}
