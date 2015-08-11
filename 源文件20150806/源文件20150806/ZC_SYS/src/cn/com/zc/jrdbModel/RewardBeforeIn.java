package cn.com.zc.jrdbModel;

public class RewardBeforeIn extends JrdbBaseModel {

	private String case_case_code;
	private String case_partyinfo_1;
	private String case_partyinfo_2;
	
	private String arbitman_f_money;
	private String arbitman_currency;

	
	public void setCase_case_code(String case_case_code) {
		this.case_case_code = case_case_code;
	}

	public String getCase_case_code() {
		return case_case_code;
	}
	
	
	public void setCase_partyinfo_1(String case_partyinfo_1) {
		this.case_partyinfo_1 =case_partyinfo_1;
	}

	public String getCase_partyinfo_1() {
		return case_partyinfo_1;
	}
	
	public void setCase_partyinfo_2(String case_partyinfo_2) {
		this.case_partyinfo_2 =case_partyinfo_2;
	}

	public String getCase_partyinfo_2() {
		return case_partyinfo_2;
	}
	
	public void setArbitman_f_money(String arbitman_f_money) {
		this.arbitman_f_money = arbitman_f_money;
	}

	public String getArbitman_f_money() {
		return arbitman_f_money;
	}
	
	public void setArbitman_currency(String arbitman_currency) {
		this.arbitman_currency = arbitman_currency;
	}

	public String getArbitman_currency() {
		return arbitman_currency;
	}


}
