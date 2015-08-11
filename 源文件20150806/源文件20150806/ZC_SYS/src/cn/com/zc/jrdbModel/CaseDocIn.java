package cn.com.zc.jrdbModel;

public class CaseDocIn extends JrdbBaseModel {
	private String id;
	private String typ_code;
	private String typ_name;
	private String public_state;
	private String recevice_code;
	private String send_code;
	private String file_code;
	private String file_name;
	private String public_to;
	private String used;
	private String ss_t;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSs_t() {
		return ss_t;
	}

	public void setSs_t(String ss_t) {
		this.ss_t = ss_t;
	}
	
	public String getFile_code() {
		return file_code;
	}

	public void setFile_code(String file_code) {
		this.file_code = file_code;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getPublic_state() {
		return public_state;
	}

	public void setPublic_state(String public_state) {
		this.public_state = public_state;
	}

	public String getPublic_to() {
		return public_to;
	}

	public void setPublic_to(String public_to) {
		this.public_to = public_to;
	}

	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}

	public String getSend_code() {
		return send_code;
	}

	public void setSend_code(String send_code) {
		this.send_code = send_code;
	}

	public String getTyp_code() {
		return typ_code;
	}

	public void setTyp_code(String typ_code) {
		this.typ_code = typ_code;
	}
	
	public String getTyp_name() {
		return typ_name;
	}

	public void setTyp_name(String typ_name) {
		this.typ_name = typ_name;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

}
