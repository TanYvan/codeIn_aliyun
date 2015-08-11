package cn.com.zc.web;

import java.util.ArrayList;
import java.util.List;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.LanguageIn;

public class LanguageInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String error;
	private LanguageIn languageIn;
	private List<LanguageIn> languageInList;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getError() {
		return Escape.decode_utf8(error);
	}

	public void setError(String error) {
		this.error = error;
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

	public String findLanguageInList() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_languages");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbitman=? and used='Y'");
			conditions.add(session.get("userCode").toString());
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
	
	public String toInsertLanguageIn() {
		return SUCCESS;
	}

	public String insertLanguageIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			languageIn.setId(null);
			languageIn.setArbitman(session.get("userCode").toString());
			languageIn.setUsed("Y");
			ReqPacket req= new ReqPacket();
			req = languageIn.toReqPacketForCreate();
			req.setFrom("tb_languages");
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.create(req);
			if (rp.getStatus().equals("1")){
				//error = "新建成功";
				error = this.getText("common.mes_21");
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
	
	public String toUpdateLanguageIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_languages");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			languageInList = new LanguageIn().getObjects(rp);
			if (languageInList.size()==0){
				return "fail";
			}
			else{	
				languageIn = languageInList.get(0);
				if (languageIn.getArbitman().equals(session.get("userCode").toString())){
					return SUCCESS;
				}
				else{
					return "fail";
				}
			}
		}
		else{
			return "fail";
		}			
	}
	
	public String updateLanguageIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_languages");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(languageIn.getId());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			languageInList = new LanguageIn().getObjects(rp);
			if (languageInList.size()==0){
				return "fail";
			}
			else{	
				LanguageIn languageIn_update = languageInList.get(0);
				if (languageIn_update.getArbitman().equals(session.get("userCode").toString())){
					String id= languageIn_update.getId();
					languageIn_update.coverSelf(languageIn);
					languageIn_update.setArbitman(session.get("userCode").toString());
					req= new ReqPacket();
					req= languageIn_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("tb_languages");
					jr = new JrDbHelp();
					rp=jr.update(req);
					if (rp.getStatus().equals("1")){
						//error = "修改成功";
						error = this.getText("common.mes_22");
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
		else{
			return "fail";
		}			
	}

	public String deleteLanguageIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_languages");
			req.setSelect("id,arbitman");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			languageInList = new LanguageIn().getObjects(rp);
			if (languageInList.size()==0){
				return "fail";
			}
			else{	
				LanguageIn languageIn_update = languageInList.get(0);
				if (languageIn_update.getArbitman().equals(session.get("userCode").toString())){
					String id= languageIn_update.getId();
					languageIn_update.setUsed("N");
					languageIn_update.setArbitman(session.get("userCode").toString());
					req= new ReqPacket();
					req= languageIn_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("tb_languages");
					jr = new JrDbHelp();
					rp=jr.update(req);
					if (rp.getStatus().equals("1")){
						//error = "删除成功";
						error = this.getText("common.mes_23");
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
		else{
			return "fail";
		}			
	}
	
}
