package cn.com.zc.jrdbModel;

public class CaseWUser extends JrdbBaseModel {
	private int id;
	private String recevice_code;
	private String u;
	private String u_t;
	private String used;
	private String user_code;
	private String user_type;
	
	private String clerk;
	private String case_code;

	public void setClerk(String clerk) {
		this.clerk = clerk;
	}

	public String getClerk() {
		return clerk;
	}
	
	public void setCase_code(String case_code) {
		this.case_code = case_code;
	}

	public String getCase_code() {
		return case_code;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
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

	public String getUser_code() {
		return user_code;
	}

	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}
	
	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

}
