package cn.com.zc.web;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanIn;
import cn.com.zc.jrdbModel.CaseArbitmanSelect;
import cn.com.zc.jrdbModel.CaseAttIn;
import cn.com.zc.jrdbModel.CaseIn;
import cn.com.zc.jrdbModel.CaseWUser;
import cn.com.zc.jrdbModel.Remind;

public class PartyAppointArbitmanAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String recevice_code;
	private String arbitman_code;
	private List<CaseArbitmanSelect> arbitmanList;
	private List<CaseIn> caseInList;
	private int caseModel;
	
	public String getRecevice_code() {
		return recevice_code;
	}

	public void setRecevice_code(String recevice_code) {
		this.recevice_code = recevice_code;
	}
	
	public String getArbitman_code() {
		return arbitman_code;
	}

	public void setArbitman_code(String arbitman_code) {
		this.arbitman_code = arbitman_code;
	}
	
	public List<CaseArbitmanSelect> getArbitmanList() {
		return arbitmanList;
	}

	public void setArbitmanList(List<CaseArbitmanSelect> arbitmanList) {
		this.arbitmanList = arbitmanList;
	}
	
	public List<CaseIn> getCaseInList() {
		return caseInList;
	}

	public void setCaseInList(List<CaseIn> caseInList) {
		this.caseInList = caseInList;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public int getCaseModel() {
		return caseModel;
	}

	public void setCaseModel(int caseModel) {
		this.caseModel = id;
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
	
	public String list() throws Exception {
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
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null ){
			
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_cases,users");
			req2.setSelect("tb_cases.caseendbook_id_first as caseendbook_id_first,tb_cases.recevice_code as recevice_code,tb_cases.case_code as case_code,tb_cases.accepttime as accepttime,tb_cases.case_code as case_code,tb_cases.aribitprog_num as aribitprog_num,tb_cases.clerk as clerk,users.name as clerk_name,tb_cases.state as state,tb_cases.finally_limit_dat as finally_limit_dat,fun_partyinfo_1(tb_cases.recevice_code) as partyinfo_1,fun_partyinfo_2(tb_cases.recevice_code) as partyinfo_2,tb_cases.special_convention as special_convention");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add("tb_cases.recevice_code=? and tb_cases.used='Y' and tb_cases.clerk=users.code");
			conditions2.add(session.get("receviceCode").toString());
			req2.setConditions(conditions2);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			caseInList = new CaseIn().getObjects(rp2);
			
			String aribitprog_num = caseInList.get(0).getAribitprog_num();
			if ( (aribitprog_num.equals("0001") || aribitprog_num.equals("0003") || aribitprog_num.equals("0005") || aribitprog_num.equals("0007")) && !caseInList.get(0).getSpecial_convention().equals("0003") ){
				caseModel = 3;
			}else{
				caseModel = 1;
			}
			
			ReqPacket req = new ReqPacket();
			req.setFrom("case_arbitman_select");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("recevice_code=? and user_type=? and user_code=? and used='Y'");
			conditions.add(session.get("receviceCode").toString());
			conditions.add(session.get("partyCategory").toString());
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder(" id  desc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			arbitmanList = new CaseArbitmanSelect().getObjects(rp);
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}
	
	public String insert() throws Exception {
		if (recevice_code == null && session.get("receviceCode") == null){
			return "select_case";
		}
		
		if (session.get("userType").toString().equals("party") && session.get("receviceCode") != null && checkCaseParty(session.get("receviceCode").toString())){
			java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			ReqPacket req2= new ReqPacket();
			req2.setFrom("tb_arbitmen");
			req2.setSelect("name_idcard,name_idcard_en");
			List<String> conditions2 =  new ArrayList<String>();
			conditions2.add(" code=? ");
			conditions2.add(arbitman_code);
			req2.setConditions(conditions2);
			JrDbHelp jr2 = new JrDbHelp();
			ResPacket  rp2=jr2.find_all(req2);
			if (rp2.getStatus().equals("1")){
				List<ArbitmanIn> arbitmanList = new ArbitmanIn().getObjects(rp2);
				if (arbitmanList.size()>0){
					CaseArbitmanSelect arbitmanSelect = new CaseArbitmanSelect();
					arbitmanSelect.setRecevice_code(session.get("receviceCode").toString());
					arbitmanSelect.setUser_type(session.get("partyCategory").toString());
					arbitmanSelect.setUser_code(session.get("userCode").toString());
					arbitmanSelect.setArbitman_code(arbitman_code);
					arbitmanSelect.setArbitman_name(arbitmanList.get(0).getName_idcard() + "     " + arbitmanList.get(0).getName_idcard_en());
					arbitmanSelect.setUsed("Y");
					arbitmanSelect.setU(session.get("userCode").toString());
					arbitmanSelect.setU_t(dateFormat1.format(new Date()));
				
					ReqPacket req = arbitmanSelect.toReqPacketForCreate();
					req.setFrom("case_arbitman_select");
					JrDbHelp jr = new JrDbHelp();
					ResPacket  rp=jr.create(req);
					if (rp.getStatus().equals("1")){
						
						Remind rem= new Remind();
			            rem.setUsed("Y");
			            rem.setReason_id("extranet_party_appoint_arbitman_" + session.get("receviceCode") + "_" + arbitman_code );
			            rem.setContents(session.get("caseCode").toString() + "号案件当事方 " + session.get("userName").toString() + " 选择了仲裁员 [" + arbitmanList.get(0).getName_idcard() + " " + arbitmanList.get(0).getName_idcard_en() + "]");
			            rem.setDt1(dateFormat1.format(new Date()));
			            rem.setUu(session.get("caseClerk").toString());
			            rem.setState("1");
			            rem.setTyp("0001");
			            rem.setU("system");
			            java.text.DateFormat dateFormat2 = new java.text.SimpleDateFormat("yyyy-MM-dd");
			            rem.setU_t(dateFormat1.format(new Date()));
						ReqPacket req_1= new ReqPacket();
						req_1 =rem.toReqPacketForCreate();
						req_1.setFrom("reminds");
						JrDbHelp jr_1 = new JrDbHelp();
						jr_1.create(req_1);
						
						return SUCCESS;
					}
					else{
						return "fail";
					}
				}else{
					return "fail";
				}
			}else{
				return "fail";
			}
		}
		else{
			return "fail";
		}
	}

}

