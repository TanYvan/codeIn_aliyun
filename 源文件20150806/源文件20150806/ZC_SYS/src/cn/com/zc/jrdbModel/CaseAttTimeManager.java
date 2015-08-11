package cn.com.zc.jrdbModel;

public class CaseAttTimeManager extends JrdbBaseModel {
	private String id;
	private String recevice_code;
	private String typ_code;
	private String u;
	private String u_t;
	private String up_date;
	private String used;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}

	public String getTyp_code() {
		return typ_code;
	}

	public void setTyp_code(String typ_code) {
		this.typ_code = typ_code;
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

	public String getUp_date() {
		return up_date;
	}

	public void setUp_date(String up_date) {
		this.up_date = up_date;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

}
