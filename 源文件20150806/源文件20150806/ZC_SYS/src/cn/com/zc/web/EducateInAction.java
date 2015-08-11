package cn.com.zc.web;

import java.util.ArrayList;
import java.util.List;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.EducateIn;

public class EducateInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String error;
	private EducateIn educateIn;
	private List<EducateIn> educateInList;

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

	public String findEducateInList() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_educates");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbitman=? and used='Y'");
			conditions.add(session.get("userCode").toString());
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
	
	public String toInsertEducateIn() {
		return SUCCESS;
	}

	public String insertEducateIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			educateIn.setId(null);
			educateIn.setArbitman(session.get("userCode").toString());
			educateIn.setUsed("Y");
			ReqPacket req= new ReqPacket();
			req = educateIn.toReqPacketForCreate();
			req.setFrom("tb_educates");
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
	
	public String toUpdateEducateIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_educates");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			educateInList = new EducateIn().getObjects(rp);
			if (educateInList.size()==0){
				return "fail";
			}
			else{	
				educateIn = educateInList.get(0);
				if (educateIn.getArbitman().equals(session.get("userCode").toString())){
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
	
	public String updateEducateIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_educates");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(educateIn.getId());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			educateInList = new EducateIn().getObjects(rp);
			if (educateInList.size()==0){
				return "fail";
			}
			else{	
				EducateIn educateIn_update = educateInList.get(0);
				if (educateIn_update.getArbitman().equals(session.get("userCode").toString())){
					String id= educateIn_update.getId();
					educateIn_update.coverSelf(educateIn);
					educateIn_update.setArbitman(session.get("userCode").toString());
					req= new ReqPacket();
					req= educateIn_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("tb_educates");
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

	public String deleteEducateIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_educates");
			req.setSelect("id,arbitman");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			educateInList = new EducateIn().getObjects(rp);
			if (educateInList.size()==0){
				return "fail";
			}
			else{	
				EducateIn educateIn_update = educateInList.get(0);
				if (educateIn_update.getArbitman().equals(session.get("userCode").toString())){
					String id= educateIn_update.getId();
					educateIn_update.setUsed("N");
					educateIn_update.setArbitman(session.get("userCode").toString());
					req= new ReqPacket();
					req= educateIn_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("tb_educates");
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
