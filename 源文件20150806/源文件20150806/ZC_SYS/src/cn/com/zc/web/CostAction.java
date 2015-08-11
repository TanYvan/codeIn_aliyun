package cn.com.zc.web;

import java.util.HashMap;

import cn.com.zc.service.facade.CostService;

public class CostAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private CostService costService;
	private int money_val=0;
	private String category="";
	private int slf=0;
	private int zcf=0;
	private int hj=0;
	private int slf2=0;
	private int zcf2=0;
	private int hj2=0;

	public CostService getCostService() {
		return costService;
	}

	public void setCostService(CostService costService) {
		this.costService = costService;
	}
	
	public int getMoney_val() {
		return money_val;
	}

	public void setMoney_val(int money_val) {
		this.money_val = money_val;
	}
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	public int getSlf() {
		return slf;
	}

	public void setSlf(int slf) {
		this.slf = slf;
	}
	
	public int getZcf() {
		return zcf;
	}

	public void setZcf(int zcf) {
		this.zcf = zcf;
	}
	
	public int getHj() {
		return hj;
	}

	public void setHj(int hj) {
		this.hj = hj;
	}
	
	public int getSlf2() {
		return slf2;
	}

	public void setSlf2(int slf2) {
		this.slf2 = slf2;
	}
	
	public int getZcf2() {
		return zcf2;
	}

	public void setZcf2(int zcf2) {
		this.zcf2 = zcf2;
	}
	
	public int getHj2() {
		return hj2;
	}

	public void setHj2(int hj2) {
		this.hj2 = hj2;
	}
	
	public String list()  {
		HashMap<String,Integer> rrr;
		if (category.equals("0001")){
			rrr = costService.charge_01("1",money_val,money_val);
			slf=rrr.get("registration_fee");
			zcf=rrr.get("arbitration_fee");
			hj=slf + zcf;
			rrr = costService.charge_01("2",money_val,money_val);
			slf2=rrr.get("registration_fee");
			zcf2=rrr.get("arbitration_fee");
			hj2=slf2 + zcf2;
		}else if (category.equals("0002")){
			rrr = costService.charge_02("1",money_val,money_val);
			slf=rrr.get("registration_fee");
			zcf=rrr.get("arbitration_fee");
			hj=slf + zcf;
			rrr = costService.charge_02("2",money_val,money_val);
			slf2=rrr.get("registration_fee");
			zcf2=rrr.get("arbitration_fee");
			hj2=slf2 + zcf2;
		}else if (category.equals("0003")){
			rrr = costService.charge_03("1",money_val,money_val);
			slf=rrr.get("registration_fee");
			zcf=rrr.get("arbitration_fee");
			hj=slf + zcf;
			rrr = costService.charge_03("2",money_val,money_val);
			slf2=rrr.get("registration_fee");
			zcf2=rrr.get("arbitration_fee");
			hj2=slf2 + zcf2;
		}else if (category.equals("0004")){
			rrr = costService.charge_0006_01("1",money_val,money_val);
			slf=rrr.get("registration_fee");
			zcf=rrr.get("arbitration_fee");
			hj=slf + zcf;
			rrr = costService.charge_0006_01("2",money_val,money_val);
			slf2=rrr.get("registration_fee");
			zcf2=rrr.get("arbitration_fee");
			hj2=slf2 + zcf2;
		}else if (category.equals("0005")){
			rrr = costService.charge_0006_02("1",money_val,money_val);
			slf=rrr.get("registration_fee");
			zcf=rrr.get("arbitration_fee");
			hj=slf + zcf;
			rrr = costService.charge_0006_02("2",money_val,money_val);
			slf2=rrr.get("registration_fee");
			zcf2=rrr.get("arbitration_fee");
			hj2=slf2 + zcf2;
		}else{
			slf=0;
			zcf=0;
			hj=0;
			slf2=0;
			zcf2=0;
			hj2=0;
		}
		return SUCCESS;	
	}

	
}
