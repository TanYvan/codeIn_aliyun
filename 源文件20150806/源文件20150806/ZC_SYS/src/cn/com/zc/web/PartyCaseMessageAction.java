package cn.com.zc.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CaseWUser;
import cn.com.zc.jrdbModel.CasearbitmanIn;
import cn.com.zc.jrdbModel.IndustryIn;
import cn.com.zc.jrdbModel.PartyMessage;
import cn.com.zc.jrdbModel.Remind;
import cn.com.zc.model.Dictionary;
import cn.com.zc.model.Evaluate;

import com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class PartyCaseMessageAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String recevice_code;
	private List<PartyMessage> messageList;
	private PartyMessage message;
	private String error;
	private List<CaseIn> caseInList;
	
	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}

	public List<PartyMessage> getMessageList() {
		return messageList;
	}

	public void setMessageList(List<PartyMessage> messageList) {
		this.messageList = messageList;
	}
	
	public PartyMessage getMessage() {
		return message;
	}

	public void setMessage(PartyMessage message) {
		this.message = message;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}
	
	public List<CaseIn> getCaseInList() {
		return caseInList;
	}

	public void setCaseInList(List<CaseIn> caseInList) {
		this.caseInList = caseInList;
	}
	
	private Boolean checkCaseParty (String code) throws Exception{
		ReqPacket req= new ReqPacket();
		req.setFrom("tb_cases,case_w_user");
		req.setSelect("case_w_user.user_type as user_type,tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.clerk as clerk");
		List<String> conditions =  new ArrayList<String>();
		conditions.add("tb_cases.recevice_code=? and case_w_user.user_code=? and tb_cases.recevice_code=case_w_user.recevice_code and tb_cases.used='Y' and case_w_user.used='Y' and tb_cases.state>=4");
		conditions.add(code);
		conditions.add(session.get("userCode").toString());
		req.setConditions(conditions);
		JrDbHelp jr = new JrDbHelp();
		ResPacket  rp=jr.find_all(req);
		List<CaseWUser> caseList = new CaseWUser().getObjects(rp);
		if (caseList.size()>0){
			session.put("partyCategory",caseList.get(0).getUser_type());
			session.put("receivceCode",caseList.get(0).getRecevice_code());
			session.put("caseCode",caseList.get(0).getCase_code());
			session.put("caseClerk",caseList.get(0).getClerk());
			return true;
		}else{
			return false;
		}
	}
	
	public String list() throws Exception{
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		if (recevice_code == null){
			recevice_code = session.get("receviceCode").toString();
		}
		
		if (session.get("userType").toString().equals("party") && checkCaseParty(recevice_code)){
			session.put("receviceCode", recevice_code);
		}else{
			return "fail";
		}
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null){
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases,users");
			req2.setSelect("tb_cases.caseendbook_id_first as caseendbook_id_first,tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.accepttime as accepttime,tb_cases.case_code as case_code,tb_cases.aribitprog_num as aribitprog_num,tb_cases.clerk as clerk,users.name as clerk_name,tb_cases.state as state,tb_cases.finally_limit_dat as finally_limit_dat,fun_partyinfo_1(tb_cases.recevice_code) as partyinfo_1,fun_partyinfo_2(tb_cases.recevice_code) as partyinfo_2");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y' and tb_cases.clerk=users.code");
			conditions2.add(session.get("receviceCode").toString());
			req2.setConditions(conditions2);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			caseInList = new CaseIn().getObjects(rp2);
			
			
			ReqPacket req= new ReqPacket();
			req.setFrom("party_message");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("recevice_code=? and used='Y'");
			conditions.add(session.get("receviceCode").toString());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket rp=jr.find_all(req);
			if (rp.getStatus().equals("1")){
				messageList = new PartyMessage().getObjects(rp);
				return SUCCESS;
			}
			else{
				return "fail";
			}
		}
		else{
			return "fail";
		}
		
	}

	public String insert() throws Exception {
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		baseDicList = getBaseDicList();
		if (recevice_code == null){
			recevice_code = session.get("receviceCode").toString();
		}
		
		if (session.get("userType").toString().equals("party") && checkCaseParty(recevice_code)){
			session.put("receviceCode", recevice_code);
		}else{
			return "fail";
		}
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null){
			PartyMessage mes= new PartyMessage();
			mes.setRecevice_code(session.get("receviceCode").toString());
			mes.setUsed("Y");
			mes.setMessage(message.getMessage());
			mes.setParty(session.get("userCode").toString());
			mes.setParty_t(dateFormat1.format(new Date()));
			ReqPacket req= new ReqPacket();
			req = mes.toReqPacketForCreate();
			req.setFrom("party_message");
			JrDbHelp jr = new JrDbHelp();
			ResPacket rp=jr.create(req);
			if (rp.getStatus().equals("1")){
				error = "新建成功";
				return SUCCESS;
			}
			else{
				return "fail";
			}
		}else{
			return "fail";
		}
	}

}
