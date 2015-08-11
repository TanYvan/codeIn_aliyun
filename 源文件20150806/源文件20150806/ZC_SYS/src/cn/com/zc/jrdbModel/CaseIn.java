package cn.com.zc.jrdbModel;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CaseIn extends JrdbBaseModel {
	private String protoClearDegree;
	private String remark;
	private String sendType;
	private String acceptt;
	private String accepttime;
	private String agent;
	private String amount;
	private String amount_1;
	private String amount_2;
	private String app_rules;
	private String arbitprot;
	private String aribitprog_num;
	private String aribitprotprog_num;
	private String aribittype;
	private String book_num;
	private String case_code;
	private String case_type1;
	private String casecommenttime;
	private String caseendbook_id_first;
	private String caseendbook_id_last;
	private String caseorg_id_first;
	private String caseorg_id_last;
	private String casereason;
	private String casetype_num;
	private String casetype_num2;
	private String clerk;
	private String clerk_2;
	private String compromise;
	private String contracttype;
	private String dispute_type;
	private String end_code;
	private String end_date;
	private String end_t;
	private String end_u;
	private String file_arbitBookNum;
	private String file_num_1;
	private String file_num_2;
	private String file_num_3;
	private String file_receive_t;
	private String file_receive_u;
	private String file_submit_remark;
	private String file_submit_t;
	private String file_submit_u;
	private String file_typ;
	private String file_up_t;
	private String file_up_u;
	private String finally_limit_dat;
	private String general_code;
	private String id;
	private String isback;
	private String isunrun;
	private String language;
	private String limit_dat;
	private String limit_deduct_t;
	private String limit_deduct_text;
	private String m_lack_rmb_money;
	private String m_lack_rmb_money_2;
	private String m_re_rmb_money;
	private String m_re_rmb_money_2;
	private String m_rmb_money;
	private String m_rmb_money_2;
	private String nowdate;
	private String nowdate_t;
	private String orgTribDate;
	private String orgstyle;
	private String re_code;
	private String receivedate;
	private String recevice_code;
	private String recevice_code_limit_dat;
	private String remun_dt;
	private String remun_state;
	private String runremark;
	private String runstyle;
	private String sitting_id_first;
	private String sitting_id_last;
	private String special;
	private String special_convention;
	private String state;
	private String stoped;
	private String t_casetype_num;
	private String terms_drafting_party;
	private String transfer_p;
	private String transfer_remark;
	private String transfer_t;
	private String transfer_u;
	private String trial_typ;
	private String u;
	private String u_t;
	private String used;
	private String yarddecide;
	private String yardreason;

	private String clerk_name;
	private String clerk_2_name;
	private String party_xml;
	private String agent_xml;
	private String caseorg_xml;
	private String casearbitman_xml;
	private String sitting_xml;
	private String caseendbook_xml;
	private String jurisdiction_xml;
	private String partyanswer_xml;
	private String save_xml;
	private String evite_xml;
	private String change_xml;
	private String adjudgebrike_xml;
	private String case_matter_xml;
	
	
	private String partyinfo_1;
	private String partyinfo_2;
	private String arbitBooknum;
	private String decideDate;
	
	private String line_color;
	private String case_state;
	
	public void setLine_color(String line_color) {
		this.line_color = line_color;
	}

	public String getLine_color() {
		//对于普通程序，2个月内到期为绿色，1个月内到期为黄色，半个月到期为红色。对于简易程序，一个月到期为绿色，半个月到期为黄色，一周到期为红色。
		String rrr="";
		
		try {
			if (finally_limit_dat.equals("")){
			
			}else{
				DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				Date d1 = df.parse(finally_limit_dat);
				Date d2 = df.parse(df.format(new Date()));
				long diff = d1.getTime() - d2.getTime();
				long days = diff / (1000 * 60 * 60 * 24);
				
				if (aribitprog_num.equals("0001") || aribitprog_num.equals("0003") || aribitprog_num.equals("0005") || aribitprog_num.equals("0007")){
					if (days<=60 && days>30){
						rrr="style='background-color:green;'";
					}else if (days<=30 && days>15){
						rrr="style='background-color:yellow;'";
					}else if (days<=15){
						rrr="style='background-color:red;'";
					}	
				}else{
					if (days<=30 && days>15){
						rrr="style='background-color:green;'";
					}else if (days<=15 && days>7){
						rrr="style='background-color:yellow;'";
					}else if (days<=7){
						rrr="style='background-color:red;'";
					}
				}
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//return line_color;
		return rrr;
	}
	
	public void setClerk_name(String clerk_name) {
		this.clerk_name = clerk_name;
	}

	public String getClerk_name() {
		return clerk_name;
	}

	public void setClerk_2_name(String clerk_2_name) {
		this.clerk_2_name = clerk_2_name;
	}

	public String getClerk_2_name() {
		return clerk_2_name;
	}
	
	public void setParty_xml(String party_xml) {
		this.party_xml = party_xml;
	}

	public String getParty_xml() {
		return party_xml;
	}

	public void setAgent_xml(String agent_xml) {
		this.agent_xml = agent_xml;
	}

	public String getAgent_xml() {
		return agent_xml;
	}

	public void setCaseorg_xml(String caseorg_xml) {
		this.caseorg_xml = caseorg_xml;
	}

	public String getCaseorg_xml() {
		return caseorg_xml;
	}

	public void setCasearbitman_xml(String casearbitman_xml) {
		this.casearbitman_xml = casearbitman_xml;
	}

	public String getCasearbitman_xml() {
		return casearbitman_xml;
	}
	
	public void setSitting_xml(String sitting_xml) {
		this.sitting_xml = sitting_xml;
	}

	public String getSitting_xml() {
		return sitting_xml;
	}

	public void setCaseendbook_xml(String caseendbook_xml) {
		this.caseendbook_xml = caseendbook_xml;
	}

	public String getCaseendbook_xml() {
		return caseendbook_xml;
	}
	
	public void setJurisdiction_xml(String jurisdiction_xml) {
		this.jurisdiction_xml = jurisdiction_xml;
	}

	public String getJurisdiction_xml() {
		return jurisdiction_xml;
	}
	
	public void setPartyanswer_xml(String partyanswer_xml) {
		this.partyanswer_xml = partyanswer_xml;
	}

	public String getPartyanswer_xml() {
		return partyanswer_xml;
	}
	
	public void setSave_xml(String save_xml) {
		this.save_xml = save_xml;
	}

	public String getSave_xml() {
		return save_xml;
	}
	
	public void setEvite_xml(String evite_xml) {
		this.evite_xml = evite_xml;
	}

	public String getEvite_xml() {
		return evite_xml;
	}
	
	public void setChange_xml(String change_xml) {
		this.change_xml = change_xml;
	}

	public String getChange_xml() {
		return change_xml;
	}
	
	public void setAdjudgebrike_xml(String adjudgebrike_xml) {
		this.adjudgebrike_xml = adjudgebrike_xml;
	}

	public String getAdjudgebrike_xml() {
		return adjudgebrike_xml;
	}
	
	public void setCase_matter_xml(String case_matter_xml) {
		this.case_matter_xml = case_matter_xml;
	}

	public String getCase_matter_xml() {
		return case_matter_xml;
	}
	
	public void setPartyinfo_1(String partyinfo_1) {
		this.partyinfo_1 =partyinfo_1;
	}

	public String getPartyinfo_1() {
		return partyinfo_1;
	}
	
	public void setPartyinfo_2(String partyinfo_2) {
		this.partyinfo_2 =partyinfo_2;
	}

	public String getPartyinfo_2() {
		return partyinfo_2;
	}
	
	public void setArbitBooknum(String arbitBooknum) {
		this.arbitBooknum =arbitBooknum;
	}

	public String getArbitBooknum() {
		return arbitBooknum;
	}
	public void setDecideDate(String decideDate) {
		this.decideDate =decideDate;
	}

	public String getDecideDate() {
		return decideDate;
	}
	
	
	
	
	public void setProtocleardegree(String protoClearDegree) {
		this.protoClearDegree = protoClearDegree;
	}

	public String getProtocleardegree() {
		return protoClearDegree;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getRemark() {
		return remark;
	}

	public void setSendtype(String sendType) {
		this.sendType = sendType;
	}

	public String getSendtype() {
		return sendType;
	}

	public void setAcceptt(String acceptt) {
		this.acceptt = acceptt;
	}

	public String getAcceptt() {
		return acceptt;
	}

	public void setAccepttime(String accepttime) {
		this.accepttime = accepttime;
	}

	public String getAccepttime() {
		return accepttime;
	}

	public void setAgent(String agent) {
		this.agent = agent;
	}

	public String getAgent() {
		return agent;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount_1(String amount_1) {
		this.amount_1 = amount_1;
	}

	public String getAmount_1() {
		return amount_1;
	}

	public void setAmount_2(String amount_2) {
		this.amount_2 = amount_2;
	}

	public String getAmount_2() {
		return amount_2;
	}

	public void setApp_rules(String app_rules) {
		this.app_rules = app_rules;
	}

	public String getApp_rules() {
		return app_rules;
	}

	public void setArbitprot(String arbitprot) {
		this.arbitprot = arbitprot;
	}

	public String getArbitprot() {
		return arbitprot;
	}

	public void setAribitprog_num(String aribitprog_num) {
		this.aribitprog_num = aribitprog_num;
	}

	public String getAribitprog_num() {
		return aribitprog_num;
	}

	public void setAribitprotprog_num(String aribitprotprog_num) {
		this.aribitprotprog_num = aribitprotprog_num;
	}

	public String getAribitprotprog_num() {
		return aribitprotprog_num;
	}

	public void setAribittype(String aribittype) {
		this.aribittype = aribittype;
	}

	public String getAribittype() {
		return aribittype;
	}

	public void setBook_num(String book_num) {
		this.book_num = book_num;
	}

	public String getBook_num() {
		return book_num;
	}

	public void setCase_code(String case_code) {
		this.case_code = case_code;
	}

	public String getCase_code() {
		return case_code;
	}

	public void setCase_type1(String case_type1) {
		this.case_type1 = case_type1;
	}

	public String getCase_type1() {
		return case_type1;
	}

	public void setCasecommenttime(String casecommenttime) {
		this.casecommenttime = casecommenttime;
	}

	public String getCasecommenttime() {
		return casecommenttime;
	}

	public void setCaseendbook_id_first(String caseendbook_id_first) {
		this.caseendbook_id_first = caseendbook_id_first;
	}

	public String getCaseendbook_id_first() {
		return caseendbook_id_first;
	}

	public void setCaseendbook_id_last(String caseendbook_id_last) {
		this.caseendbook_id_last = caseendbook_id_last;
	}

	public String getCaseendbook_id_last() {
		return caseendbook_id_last;
	}

	public void setCaseorg_id_first(String caseorg_id_first) {
		this.caseorg_id_first = caseorg_id_first;
	}

	public String getCaseorg_id_first() {
		return caseorg_id_first;
	}

	public void setCaseorg_id_last(String caseorg_id_last) {
		this.caseorg_id_last = caseorg_id_last;
	}

	public String getCaseorg_id_last() {
		return caseorg_id_last;
	}

	public void setCasereason(String casereason) {
		this.casereason = casereason;
	}

	public String getCasereason() {
		return casereason;
	}

	public void setCasetype_num(String casetype_num) {
		this.casetype_num = casetype_num;
	}

	public String getCasetype_num() {
		return casetype_num;
	}

	public void setCasetype_num2(String casetype_num2) {
		this.casetype_num2 = casetype_num2;
	}

	public String getCasetype_num2() {
		return casetype_num2;
	}

	public void setClerk(String clerk) {
		this.clerk = clerk;
	}

	public String getClerk() {
		return clerk;
	}

	public void setClerk_2(String clerk_2) {
		this.clerk_2 = clerk_2;
	}

	public String getClerk_2() {
		return clerk_2;
	}

	public void setCompromise(String compromise) {
		this.compromise = compromise;
	}

	public String getCompromise() {
		return compromise;
	}

	public void setContracttype(String contracttype) {
		this.contracttype = contracttype;
	}

	public String getContracttype() {
		return contracttype;
	}

	public void setDispute_type(String dispute_type) {
		this.dispute_type = dispute_type;
	}

	public String getDispute_type() {
		return dispute_type;
	}

	public void setEnd_code(String end_code) {
		this.end_code = end_code;
	}

	public String getEnd_code() {
		return end_code;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_t(String end_t) {
		this.end_t = end_t;
	}

	public String getEnd_t() {
		return end_t;
	}

	public void setEnd_u(String end_u) {
		this.end_u = end_u;
	}

	public String getEnd_u() {
		return end_u;
	}

	public void setFile_arbitbooknum(String file_arbitBookNum) {
		this.file_arbitBookNum = file_arbitBookNum;
	}

	public String getFile_arbitbooknum() {
		return file_arbitBookNum;
	}

	public void setFile_num_1(String file_num_1) {
		this.file_num_1 = file_num_1;
	}

	public String getFile_num_1() {
		return file_num_1;
	}

	public void setFile_num_2(String file_num_2) {
		this.file_num_2 = file_num_2;
	}

	public String getFile_num_2() {
		return file_num_2;
	}

	public void setFile_num_3(String file_num_3) {
		this.file_num_3 = file_num_3;
	}

	public String getFile_num_3() {
		return file_num_3;
	}

	public void setFile_receive_t(String file_receive_t) {
		this.file_receive_t = file_receive_t;
	}

	public String getFile_receive_t() {
		return file_receive_t;
	}

	public void setFile_receive_u(String file_receive_u) {
		this.file_receive_u = file_receive_u;
	}

	public String getFile_receive_u() {
		return file_receive_u;
	}

	public void setFile_submit_remark(String file_submit_remark) {
		this.file_submit_remark = file_submit_remark;
	}

	public String getFile_submit_remark() {
		return file_submit_remark;
	}

	public void setFile_submit_t(String file_submit_t) {
		this.file_submit_t = file_submit_t;
	}

	public String getFile_submit_t() {
		return file_submit_t;
	}

	public void setFile_submit_u(String file_submit_u) {
		this.file_submit_u = file_submit_u;
	}

	public String getFile_submit_u() {
		return file_submit_u;
	}

	public void setFile_typ(String file_typ) {
		this.file_typ = file_typ;
	}

	public String getFile_typ() {
		return file_typ;
	}

	public void setFile_up_t(String file_up_t) {
		this.file_up_t = file_up_t;
	}

	public String getFile_up_t() {
		return file_up_t;
	}

	public void setFile_up_u(String file_up_u) {
		this.file_up_u = file_up_u;
	}

	public String getFile_up_u() {
		return file_up_u;
	}

	public void setFinally_limit_dat(String finally_limit_dat) {
		this.finally_limit_dat = finally_limit_dat;
	}

	public String getFinally_limit_dat() {
		return finally_limit_dat;
	}

	public void setGeneral_code(String general_code) {
		this.general_code = general_code;
	}

	public String getGeneral_code() {
		return general_code;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setIsback(String isback) {
		this.isback = isback;
	}

	public String getIsback() {
		return isback;
	}

	public void setIsunrun(String isunrun) {
		this.isunrun = isunrun;
	}

	public String getIsunrun() {
		return isunrun;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getLanguage() {
		return language;
	}

	public void setLimit_dat(String limit_dat) {
		this.limit_dat = limit_dat;
	}

	public String getLimit_dat() {
		return limit_dat;
	}

	public void setLimit_deduct_t(String limit_deduct_t) {
		this.limit_deduct_t = limit_deduct_t;
	}

	public String getLimit_deduct_t() {
		return limit_deduct_t;
	}

	public void setLimit_deduct_text(String limit_deduct_text) {
		this.limit_deduct_text = limit_deduct_text;
	}

	public String getLimit_deduct_text() {
		return limit_deduct_text;
	}

	public void setM_lack_rmb_money(String m_lack_rmb_money) {
		this.m_lack_rmb_money = m_lack_rmb_money;
	}

	public String getM_lack_rmb_money() {
		return m_lack_rmb_money;
	}

	public void setM_lack_rmb_money_2(String m_lack_rmb_money_2) {
		this.m_lack_rmb_money_2 = m_lack_rmb_money_2;
	}

	public String getM_lack_rmb_money_2() {
		return m_lack_rmb_money_2;
	}

	public void setM_re_rmb_money(String m_re_rmb_money) {
		this.m_re_rmb_money = m_re_rmb_money;
	}

	public String getM_re_rmb_money() {
		return m_re_rmb_money;
	}

	public void setM_re_rmb_money_2(String m_re_rmb_money_2) {
		this.m_re_rmb_money_2 = m_re_rmb_money_2;
	}

	public String getM_re_rmb_money_2() {
		return m_re_rmb_money_2;
	}

	public void setM_rmb_money(String m_rmb_money) {
		this.m_rmb_money = m_rmb_money;
	}

	public String getM_rmb_money() {
		return m_rmb_money;
	}

	public void setM_rmb_money_2(String m_rmb_money_2) {
		this.m_rmb_money_2 = m_rmb_money_2;
	}

	public String getM_rmb_money_2() {
		return m_rmb_money_2;
	}

	public void setNowdate(String nowdate) {
		this.nowdate = nowdate;
	}

	public String getNowdate() {
		return nowdate;
	}

	public void setNowdate_t(String nowdate_t) {
		this.nowdate_t = nowdate_t;
	}

	public String getNowdate_t() {
		return nowdate_t;
	}

	public void setOrgtribdate(String orgTribDate) {
		this.orgTribDate = orgTribDate;
	}

	public String getOrgtribdate() {
		return orgTribDate;
	}

	public void setOrgstyle(String orgstyle) {
		this.orgstyle = orgstyle;
	}

	public String getOrgstyle() {
		return orgstyle;
	}

	public void setRe_code(String re_code) {
		this.re_code = re_code;
	}

	public String getRe_code() {
		return re_code;
	}

	public void setReceivedate(String receivedate) {
		this.receivedate = receivedate;
	}

	public String getReceivedate() {
		return receivedate;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}

	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code_limit_dat(String recevice_code_limit_dat) {
		this.recevice_code_limit_dat = recevice_code_limit_dat;
	}

	public String getRecevice_code_limit_dat() {
		return recevice_code_limit_dat;
	}

	public void setRemun_dt(String remun_dt) {
		this.remun_dt = remun_dt;
	}

	public String getRemun_dt() {
		return remun_dt;
	}

	public void setRemun_state(String remun_state) {
		this.remun_state = remun_state;
	}

	public String getRemun_state() {
		return remun_state;
	}

	public void setRunremark(String runremark) {
		this.runremark = runremark;
	}

	public String getRunremark() {
		return runremark;
	}

	public void setRunstyle(String runstyle) {
		this.runstyle = runstyle;
	}

	public String getRunstyle() {
		return runstyle;
	}

	public void setSitting_id_first(String sitting_id_first) {
		this.sitting_id_first = sitting_id_first;
	}

	public String getSitting_id_first() {
		return sitting_id_first;
	}

	public void setSitting_id_last(String sitting_id_last) {
		this.sitting_id_last = sitting_id_last;
	}

	public String getSitting_id_last() {
		return sitting_id_last;
	}

	public void setSpecial(String special) {
		this.special = special;
	}

	public String getSpecial() {
		return special;
	}

	public void setSpecial_convention(String special_convention) {
		this.special_convention = special_convention;
	}

	public String getSpecial_convention() {
		return special_convention;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getState() {
		return state;
	}

	public void setStoped(String stoped) {
		this.stoped = stoped;
	}

	public String getStoped() {
		return stoped;
	}

	public void setT_casetype_num(String t_casetype_num) {
		this.t_casetype_num = t_casetype_num;
	}

	public String getT_casetype_num() {
		return t_casetype_num;
	}

	public void setTerms_drafting_party(String terms_drafting_party) {
		this.terms_drafting_party = terms_drafting_party;
	}

	public String getTerms_drafting_party() {
		return terms_drafting_party;
	}

	public void setTransfer_p(String transfer_p) {
		this.transfer_p = transfer_p;
	}

	public String getTransfer_p() {
		return transfer_p;
	}

	public void setTransfer_remark(String transfer_remark) {
		this.transfer_remark = transfer_remark;
	}

	public String getTransfer_remark() {
		return transfer_remark;
	}

	public void setTransfer_t(String transfer_t) {
		this.transfer_t = transfer_t;
	}

	public String getTransfer_t() {
		return transfer_t;
	}

	public void setTransfer_u(String transfer_u) {
		this.transfer_u = transfer_u;
	}

	public String getTransfer_u() {
		return transfer_u;
	}

	public void setTrial_typ(String trial_typ) {
		this.trial_typ = trial_typ;
	}

	public String getTrial_typ() {
		return trial_typ;
	}

	public void setU(String u) {
		this.u = u;
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

	public void setYarddecide(String yarddecide) {
		this.yarddecide = yarddecide;
	}

	public String getYarddecide() {
		return yarddecide;
	}

	public void setYardreason(String yardreason) {
		this.yardreason = yardreason;
	}

	public String getYardreason() {
		return yardreason;
	}
	
	public void setCase_state(String case_state) {
		this.case_state = case_state;
	}
	
	public String getCase_state(){
		if (this.caseendbook_id_first==null || this.caseendbook_id_first.equals("0") || this.caseendbook_id_first.equals("")){
			if (this.state.equals("1")){
				return "咨询";
			}else if (this.state.equals("2")){
				return "历史咨询";
			}else if (this.state.equals("3")){
				return "不受理";
			}else if (this.state.equals("4")){
				return "立案";
			}else if (this.state.equals("5")){
				return "组庭";
			}else if (this.state.equals("6")){
				return "开庭";
			}else{
				return "状态";
			}
		}else{
			return "结案";
		}
	}

}
