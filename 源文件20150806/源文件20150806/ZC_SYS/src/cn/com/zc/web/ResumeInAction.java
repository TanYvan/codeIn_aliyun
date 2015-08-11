package cn.com.zc.web;

import java.util.ArrayList;
import java.util.List;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.ResumeIn;

public class ResumeInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String error;
	private ResumeIn resumeIn;
	private List<ResumeIn> resumeInList;

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

	public String findResumeInList() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
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
	
	public String toInsertResumeIn() {
		return SUCCESS;
	}	
	
	public String insertResumeIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			resumeIn.setId(null);
			resumeIn.setArbit_id(session.get("userCode").toString());
			resumeIn.setUsed("Y");
			ReqPacket req= new ReqPacket();
			req = resumeIn.toReqPacketForCreate();
			req.setFrom("tb_resumes");
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
	
	public String toUpdateResumeIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_resumes");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			resumeInList = new ResumeIn().getObjects(rp);
			if (resumeInList.size()==0){
				return "fail";
			}
			else{	
				resumeIn = resumeInList.get(0);
				if (resumeIn.getArbit_id().equals(session.get("userCode").toString())){
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
	
	public String updateResumeIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_resumes");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(resumeIn.getId());
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			resumeInList = new ResumeIn().getObjects(rp);
			if (resumeInList.size()==0){
				return "fail";
			}
			else{	
				ResumeIn resumeIn_update = resumeInList.get(0);
				if (resumeIn_update.getArbit_id().equals(session.get("userCode").toString())){
					String id= resumeIn_update.getId();
					resumeIn_update.coverSelf(resumeIn);
					resumeIn_update.setArbit_id(session.get("userCode").toString());
					req= new ReqPacket();
					req= resumeIn_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("tb_resumes");
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

	public String deleteResumeIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("tb_resumes");
			req.setSelect("id,arbit_id");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			resumeInList = new ResumeIn().getObjects(rp);
			if (resumeInList.size()==0){
				return "fail";
			}
			else{	
				ResumeIn resumeIn_update = resumeInList.get(0);
				if (resumeIn_update.getArbit_id().equals(session.get("userCode").toString())){
					String id= resumeIn_update.getId();
					resumeIn_update.setUsed("N");
					resumeIn_update.setArbit_id(session.get("userCode").toString());
					req= new ReqPacket();
					req= resumeIn_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("tb_resumes");
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
