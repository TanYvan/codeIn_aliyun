package cn.com.zc.jrdbModel;


public class LanguageIn extends JrdbBaseModel {
	private String id;
	private String lannum;
	private String language;
	private String ability;
	private String literacy;
	private String remark;
	private String user;
	private String u_time;
	private String arbitman;
	private String used;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getArbitman() {
		return arbitman;
	}

	public void setArbitman(String arbitman) {
		this.arbitman = arbitman;
	}

	public String getU_time() {
		return u_time;
	}

	public void setU_time(String u_time) {
		this.u_time = u_time;
	}

	public String getLannum() {
		return lannum;
	}

	public void setLannum(String lannum) {
		this.lannum = lannum;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getAbility() {
		return ability;
	}

	public void setAbility(String ability) {
		this.ability = ability;
	}

	public String getLiteracy() {
		return literacy;
	}

	public void setLiteracy(String literacy) {
		this.literacy = literacy;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

}
