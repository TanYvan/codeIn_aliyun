package cn.com.zc.jrdbModel;

public class DictionaryIn extends JrdbBaseModel {
	private String data_describe;
	private String data_parent;
	private String data_text;
	private String data_text_tw;
	private String data_text_en;
	private String data_val;
	private int id;
	private String ind;
	private String state;
	private String typ_code;
	private String used;

	public String getData_describe() {
		return data_describe;
	}

	public void setData_describe(String data_describe) {
		this.data_describe = data_describe;
	}

	public String getData_parent() {
		return data_parent;
	}

	public void setData_parent(String data_parent) {
		this.data_parent = data_parent;
	}

	public String getData_text() {
		return data_text;
	}

	public void setData_text(String data_text) {
		this.data_text = data_text;
	}
	
	public String getData_text_tw() {
		return data_text_tw;
	}

	public void setData_text_tw(String data_text_tw) {
		this.data_text_tw = data_text_tw;
	}
	
	public String getData_text_en() {
		return data_text_en;
	}

	public void setData_text_en(String data_text_en) {
		this.data_text_en = data_text_en;
	}

	public String getData_val() {
		return data_val;
	}

	public void setData_val(String data_val) {
		this.data_val = data_val;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getInd() {
		return ind;
	}

	public void setInd(String ind) {
		this.ind = ind;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getTyp_code() {
		return typ_code;
	}

	public void setTyp_code(String typ_code) {
		this.typ_code = typ_code;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

}
