package cn.com.zc.web;

import java.util.ArrayList;
import java.util.List;
import cn.com.zc.common.Escape;
import cn.com.zc.inf.JrDbHelp;
import cn.com.zc.inf.model.ReqPacket;
import cn.com.zc.inf.model.ResPacket;
import cn.com.zc.jrdbModel.EducateIn;
import cn.com.zc.jrdbModel.IndustryIn;

public class IndustryInAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private String error;
	private IndustryIn industryIn;
	private List<IndustryIn> industryInList;
	private String selectVal;
	
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

	public void setSelectVal(String selectVal) {
		this.selectVal = selectVal;
	}
	
	public String getSelectVal() {
		return selectVal;
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

	public String findIndustryInList() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("industry");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("arbitman_num=? and used='Y'");
			conditions.add(session.get("userCode").toString());
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
	
	public String toInsertIndustryIn() {
		return SUCCESS;
	}

	public String insertIndustryIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			industryIn = new IndustryIn();
			industryIn.setUsed("Y");
			industryIn.setIndustry_num(selectVal);
			industryIn.setArbitman_num(session.get("userCode").toString());
			ReqPacket req= new ReqPacket();
			req = industryIn.toReqPacketForCreate();
			req.setFrom("industry");
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

	public String deleteIndustryIn() throws Exception {
		if (session.get("userType").toString().equals("arbitman")){
			ReqPacket req= new ReqPacket();
			req.setFrom("industry");
			req.setSelect("id,arbitman_num");
			List<String> conditions =  new ArrayList<String>();
			conditions.add("id=?");
			conditions.add(String.valueOf(id));
			req.setConditions(conditions);
			JrDbHelp jr = new JrDbHelp();
			ResPacket  rp=jr.find_all(req);
			industryInList = new IndustryIn().getObjects(rp);
			if (industryInList.size()==0){
				return "fail";
			}
			else{	
				IndustryIn industryIn_update = industryInList.get(0);
				if (industryIn_update.getArbitman_num().equals(session.get("userCode").toString())){
					String id= industryIn_update.getId();
					industryIn_update.setUsed("N");
					industryIn_update.setArbitman_num(session.get("userCode").toString());
					req= new ReqPacket();
					req= industryIn_update.toReqPacketForUpdate();
					req.setId(id);
					req.setFrom("industry");
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
