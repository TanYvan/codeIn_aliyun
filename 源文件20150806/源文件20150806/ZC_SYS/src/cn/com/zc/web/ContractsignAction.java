package cn.com.zc.web;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import cn.com.zc.common.Escape;
import cn.com.zc.model.Contractsign;
import cn.com.zc.model.Dictionary;
import cn.com.zc.service.facade.ContractsignService;
import cn.com.zc.service.facade.DictionaryService;

public class ContractsignAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private int id;
	private Contractsign contractsign;
	private List<Contractsign> contractsignList;
	private ContractsignService contractsignService;
	private String error;

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
	
	public Contractsign getContractsign() {
		return contractsign;
	}

	public void setContractsign(Contractsign contractsign) {
		this.contractsign = contractsign;
	}

	public List<Contractsign> getContractsignList() {
		return contractsignList;
	}

	public void setContractsignList(List<Contractsign> contractsignList) {
		this.contractsignList = contractsignList;
	}

	public ContractsignService getContractsignService() {
		return contractsignService;
	}

	public void setContractsignService(ContractsignService contractsignService) {
		this.contractsignService = contractsignService;
	}

	public String toInsertContractsign() {
		return SUCCESS;
	}

	public String insertContractsign() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		contractsign.setApplyCode(session.get("applyCode").toString());
		contractsign.setUsed("Y");
		contractsign.setU(session.get("userCode").toString());
		contractsign.setUT(dateFormat1.format(new Date()));
		contractsignService.insertContractsign(contractsign);
		error = "合同信息新建成功";
		error = this.getText("contractsign.new.mes_1");
		return SUCCESS;
	}

	public String toUpdateContractsign() {
		Object[] value = {id};
		contractsignList = contractsignService.findContractsignList(" and id=? and used='Y'", value, 0, 0);
		contractsign = contractsignList.get(0);
		if (session.get("applyCode")!=null && contractsign.getApplyCode().equals(session.get("applyCode").toString())){
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}

	public String updateContractsign() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = {contractsign.getId()};
		contractsignList = contractsignService.findContractsignList(" and id=? and used='Y'", value, 0, 0);
		Contractsign contractsign_up = contractsignList.get(0);
		if (session.get("applyCode")!=null && contractsign_up.getApplyCode().equals(session.get("applyCode").toString())){
			contractsign_up.coverSelf(contractsign);
			contractsign_up.setApplyCode(session.get("applyCode").toString());
			contractsign_up.setUsed("Y");
			contractsign_up.setU(session.get("userCode").toString());
			contractsign_up.setUT(dateFormat1.format(new Date()));
			contractsignService.updateContractsign(contractsign_up);
			error = "合同信息修改成功";
			error = this.getText("contractsign.new.mes_2");
			return SUCCESS;
		}
		else{
			return "fail";
		}	
	}
	
	public String deleteContractsign() {
		java.text.DateFormat dateFormat1 = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Object[] value = {id};
		contractsignList = contractsignService.findContractsignList(" and id=? and used='Y'", value, 0, 0);
		Contractsign contractsign_up = contractsignList.get(0);
		if (contractsign_up.getApplyCode().equals(session.get("applyCode").toString())){
			contractsign_up.setUsed("N");
			contractsign_up.setApplyCode(session.get("applyCode").toString());
			contractsign_up.setU(session.get("userCode").toString());
			contractsign_up.setUT(dateFormat1.format(new Date()));
			contractsignService.updateContractsign(contractsign_up);
			error = "合同信息删除成功";
			error = this.getText("contractsign.new.mes_3");
			return SUCCESS;
		}
		else{
			return "fail";
		}
	}

}
