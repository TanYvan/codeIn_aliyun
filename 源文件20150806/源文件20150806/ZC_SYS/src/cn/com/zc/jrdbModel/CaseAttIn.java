package cn.com.zc.jrdbModel;

import javax.persistence.Column;

public class CaseAttIn extends JrdbBaseModel {

	private String att_id;
	private String recevice_code;
	private String category;
	private String id;
	private String u_typ;
	private String u;
	private String u_t;
	private String used;

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}

	public String getRecevice_code() {
		return recevice_code;
	}
	
	public void setAtt_id(String att_id) {
		this.att_id = att_id;
	}

	public String getAtt_id() {
		return att_id;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCategory() {
		return category;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setU(String u) {
		this.u = u;
	}
	
	public String getU_typ() {
		return u_typ;
	}

	public void setU_typ(String u_typ) {
		this.u_typ = u_typ;
	}
	
	public String getU() {
		return u;
	}

	public void setU_t(String u_t) {
		this.u_t = u_t;
	}

	public String getU_t() {
		return u_t;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	public String getUsed() {
		return used;
	}

}
