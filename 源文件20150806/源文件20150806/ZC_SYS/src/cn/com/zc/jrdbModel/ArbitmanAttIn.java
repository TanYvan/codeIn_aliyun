package cn.com.zc.jrdbModel;

public class ArbitmanAttIn extends JrdbBaseModel {
	private String id;
	private String att_id;
	private String u;
	private String u_t;
	private String used;
	private String arbitman;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAtt_id() {
		return att_id;
	}

	public void setAtt_id(String att_id) {
		this.att_id = att_id;
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

	public String getArbitman() {
		return arbitman;
	}

	public void setArbitman(String arbitman) {
		this.arbitman = arbitman;
	}
}
