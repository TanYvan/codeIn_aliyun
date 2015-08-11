package cn.com.zc.web;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import cn.com.zc.common.App;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ArbitmanIn;
import cn.com.zc.jrdbModel.EducateIn;
import cn.com.zc.jrdbModel.IndustryIn;
import cn.com.zc.jrdbModel.LanguageIn;
import cn.com.zc.jrdbModel.ResumeIn;
import cn.com.zc.model.Dictionary;


public class ShowArbitmanInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private String arbitman_code;
	private int id;
	private List<ArbitmanIn> arbitmanInList;
	private ArbitmanIn arbitmanIn;
	private List<String> identityList;
	private String error;	
	private EducateIn educateIn;
	private List<EducateIn> educateInList;
	private IndustryIn industryIn;
	private List<IndustryIn> industryInList;
	private ResumeIn resumeIn;
	private List<ResumeIn> resumeInList;
	private LanguageIn languageIn;
	private List<LanguageIn> languageInList;
	
	public EducateIn getEducateIn() {
		return educateIn;
	}

	public void setEducateIn(EducateIn educateIn) {
		this.educateIn = educateIn;
	}
	
	public List<EducateIn> getEducateInList() {
		return educateInList;
	}

	public void setEducateInList(List<EducateIn> educateInList) {
		this.educateInList = educateInList;
	}
	
	public IndustryIn getIndustryIn() {
		return industryIn;
	}

	public void setIndustryIn(IndustryIn industryIn) {
		this.industryIn = industryIn;
	}
	
	public List<IndustryIn> getIndustryInList() {
		return industryInList;
	}

	public void setIndustryInList(List<IndustryIn> industryInList) {
		this.industryInList = industryInList;
	}
	
	public String getArbitman_code() {
		return arbitman_code;
	}

	public void setArbitman_code(String arbitman_code) {
		this.arbitman_code = arbitman_code;
	}
	
	public List<Dictionary> getNations() {
		dictionaryService.initDictionary();
		return App.dictionaryList.get("9003");
	}
	
	public List<Dictionary> getZys() {
		dictionaryService.initDictionary();
		return App.dictionaryList.get("9002");
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
	}

	public List<String> getIdentityList() {
		return identityList;
	}

	public void setIdentityList(List<String> identityList) {
		this.identityList = identityList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public ArbitmanIn getArbitmanIn() {
		return arbitmanIn;
	}

	public void setArbitmanIn(ArbitmanIn arbitmanIn) {
		this.arbitmanIn = arbitmanIn;
	}

	public List<ArbitmanIn> getArbitmanInList() {
		return arbitmanInList;
	}

	public void setArbitmanInList(List<ArbitmanIn> arbitmanInList) {
		this.arbitmanInList = arbitmanInList;
	}

	public ResumeIn getResumeIn() {
		return resumeIn;
	}

	public void setResumeIn(ResumeIn resumeIn) {
		this.resumeIn = resumeIn;
	}

	public List<ResumeIn> getResumeInList() {
		return resumeInList;
	}

	public void setResumeInList(List<ResumeIn> resumeInList) {
		this.resumeInList = resumeInList;
	}
	
	public LanguageIn getLanguageIn() {
		return languageIn;
	}

	public void setLanguageIn(LanguageIn languageIn) {
		this.languageIn = languageIn;
	}

	public List<LanguageIn> getLanguageInList() {
		return languageInList;
	}

	public void setLanguageInList(List<LanguageIn> languageInList) {
		this.languageInList = languageInList;
	}
	
	public String showArbitmanIn() throws Exception {
		if (arbitman_code != null){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_arbitmen");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("code=?");
			conditions.add(arbitman_code);
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			
			if (rp.getStatus().equals("1")){
				arbitmanIn = new ArbitmanIn();
				arbitmanInList = arbitmanIn.getObjects(rp);
				arbitmanIn = arbitmanInList.get(0);
				if (arbitmanIn.getIdentity() != null) {
					String[] identities = arbitmanIn.getIdentity().split(",");
					identityList = Arrays.asList(identities);
				}
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
	
	public String showEducateInList() throws Exception {
		if (arbitman_code != null){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_educates");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbitman=? and used='Y'");
			conditions.add(arbitman_code);
			req.setConditions(conditions);
			req.setOrder(" id  asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			if (rp.getStatus().equals("1")){
				educateInList = new EducateIn().getObjects(rp);
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
	
	public String showIndustryInList() throws Exception {
		if (arbitman_code != null){
			ReqPacket req= new ReqPacket();
			req.setFrom("industry");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbitman_num=? and used='Y'");
			conditions.add(arbitman_code);
			req.setConditions(conditions);
			req.setOrder(" id  asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			if (rp.getStatus().equals("1")){
				industryInList = new IndustryIn().getObjects(rp);
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
	
	public String showResumeInList() throws Exception {
		if (arbitman_code != null){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_resumes");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbit_id=? and used='Y'");
			conditions.add(session.get("userCode").toString());
			req.setConditions(conditions);
			req.setOrder(" id  asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			if (rp.getStatus().equals("1")){
				resumeInList = new ResumeIn().getObjects(rp);
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
	
	public String showLanguageInList() throws Exception {
		if (arbitman_code != null){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_languages");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbitman=? and used='Y'");
			conditions.add(arbitman_code);
			req.setConditions(conditions);
			req.setOrder(" id  asc");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			if (rp.getStatus().equals("1")){
				languageInList = new LanguageIn().getObjects(rp);
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
	
}
