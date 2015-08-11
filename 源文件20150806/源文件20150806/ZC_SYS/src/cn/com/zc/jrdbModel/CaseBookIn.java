package cn.com.zc.jrdbModel;

public class CaseBookIn extends JrdbBaseModel {
	private String book_code;
	private String book_dat;
	private String book_name;
	private String book_typ;
	private String book_u;
	private String case_code;
	private String general_code;
	private String id;
	private String p_id;
	private String recevice_code;
	private String remarks;
	private String state;
	private String title;
	private String typ;
	private String u;
	private String u_t;
	private String used;
	
	private String typ_dic_code;
	private String typ_name;
	
	public String getTyp_name() {
		
		return "";
	}

	public void setTyp_name(String typ_name) {
		this.typ_name = typ_name;
		
	}

	public String getTyp_dic_code() {
		if (typ.equals("0001")){
			return "";
		}
		if (typ.equals("0002")){
			return "8117";
		}
		if (typ.equals("0003")){
			return "";
		}
		if (typ.equals("0004")){
			return "";
		}
		if (typ.equals("0005")){
			return "";
		}
		if (typ.equals("0006")){
			return "";
		}
		if (typ.equals("0007")){
			return "";
		}
		return "未知类别";
	}

	public void setTyp_dic_code(String typ_dic_code) {
		this.typ_dic_code = typ_dic_code;
		
	}

	public String getBook_code() {
		return book_code;
	}

	public void setBook_code(String book_code) {
		this.book_code = book_code;
	}

	public String getBook_dat() {
		return book_dat;
	}

	public void setBook_dat(String book_dat) {
		this.book_dat = book_dat;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getBook_typ() {
		return book_typ;
	}

	public void setBook_typ(String book_typ) {
		this.book_typ = book_typ;
	}

	public String getBook_u() {
		return book_u;
	}

	public void setBook_u(String book_u) {
		this.book_u = book_u;
	}

	public String getCase_code() {
		return case_code;
	}

	public void setCase_code(String case_code) {
		this.case_code = case_code;
	}

	public String getGeneral_code() {
		return general_code;
	}

	public void setGeneral_code(String general_code) {
		this.general_code = general_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTyp() {
		return typ;
	}

	public void setTyp(String typ) {
		this.typ = typ;
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
