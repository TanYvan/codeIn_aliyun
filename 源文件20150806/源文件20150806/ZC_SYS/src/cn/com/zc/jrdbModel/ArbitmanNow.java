package cn.com.zc.jrdbModel;

public class ArbitmanNow extends JrdbBaseModel {
	private String id;
	private String arbitman_num;
	private String u;
	private String u_t;
	private String used;

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

	public String getU() {
		return u;
	}

	public void setU(String u) {
		this.u = u;
	}

	public String getU_t() {
		return u_t;
	}

	public void setU_t(String u_t) {
		this.u_t = u_t;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}
}
