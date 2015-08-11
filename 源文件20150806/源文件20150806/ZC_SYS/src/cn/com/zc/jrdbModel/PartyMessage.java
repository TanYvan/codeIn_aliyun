package cn.com.zc.jrdbModel;

public class PartyMessage extends JrdbBaseModel {
	private String id;
	private String message;
	private String party;
	private String party_t;
	private String recevice_code;
	private String u;
	private String u_t;
	private String used;
	private String state; 

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getParty() {
		return party;
	}

	public void setParty(String party) {
		this.party = party;
	}

	public String getParty_t() {
		return party_t;
	}

	public void setParty_t(String party_t) {
		this.party_t = party_t;
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
	
	public String getState( ) { 
		return state; 
	}
	
	public void setState(String state) { 
		this.state = state; 
	}
		
}
