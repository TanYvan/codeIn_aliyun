package cn.com.zc.service.facade;

import java.util.HashMap;

public interface CostService {
	public HashMap<String,Integer> charge_0006_01(String typ1,int applicant_all, int respondent_all);
	
	//SCIA规则-国内案件受理费
	public int get_0006_01_01(int ccc);
	
	//SCIA规则-国内案件处理费
	public int get_0006_01_02(int ccc);
	
	public HashMap<String,Integer> charge_0006_02(String typ1,int applicant_all, int respondent_all);
	
	//SCIA规则-涉外案件立案费
	public int get_0006_02_01(int ccc);
	
	//SCIA规则-涉外案件仲裁费
	public int get_0006_02_02(int ccc);
	
	public HashMap<String,Integer> charge_01(String typ1,int applicant_all, int respondent_all);
	
	//CIETAC规则-国内案件受理费
	public int get_01_01(int ccc);
	
	//CIETAC规则-国内案件处理费
	public int get_01_02(int ccc);
	
	public HashMap<String,Integer> charge_02(String typ1,int applicant_all, int respondent_all);
	
	//CIETAC规则-涉外案件立案费
	public int get_02_01(int ccc);
	
	//CIETAC规则-涉外案件仲裁费
	public int get_02_02(int ccc);
	
	public HashMap<String,Integer> charge_03(String typ1,int applicant_all, int respondent_all);
	
	//CIETAC规则-金融案件立案费
	public int get_03_01(int ccc);
	
	//CIETAC规则-金融案件仲裁费
	public int get_03_02(int ccc);
	
}
