package cn.com.zc.service.spring;

import java.util.HashMap;

import cn.com.zc.common.EntityDaoHibernate;
import cn.com.zc.service.facade.CostService;

public class CostServiceSpringImpl extends EntityDaoHibernate implements
		CostService {
	//SCIA规则-国内案件收费
	//typ1： 1 是申请人   2 是被申请人
	//applicant_all:申请方争议金额
	//respondent_all:被申请方争议金额
	public HashMap<String,Integer> charge_0006_01(String typ1,int applicant_all, int respondent_all){
	  HashMap<String,Integer> rrr = new HashMap<String,Integer>();
	  int registration_fee = 0;
	  int arbitration_fee =0;
	  if ( typ1.equals("1")){
		if (applicant_all != 0){
	      registration_fee = get_0006_01_01(applicant_all);
	      arbitration_fee  = get_0006_01_02(applicant_all);
		}else{
	      registration_fee = 0;
	      arbitration_fee  = 0;
	    }
	  }else{
	    if (respondent_all != 0){
	      registration_fee = get_0006_01_01(respondent_all);
	      arbitration_fee  = get_0006_01_02(respondent_all);
	    }else{
	      registration_fee = 0;
	      arbitration_fee  = 0;
	    }
	  }
	  rrr.put("arbitration_fee", arbitration_fee);
	  rrr.put("registration_fee", registration_fee);
	  return rrr;
	}

	//SCIA规则-国内案件受理费
	public int get_0006_01_01(int ccc) {
	    double rrr=0;
		if (ccc<0){
	      rrr=0;
		}else if (ccc>=0 && ccc<1000){
	      rrr=100;
		}else if (ccc>=1000 && ccc<50000){
	      rrr=100+(ccc-1000)*0.05;
		}else if (ccc>=50000 && ccc<100000){
	      rrr=2550+(ccc-50000)*0.04;
		}else if (ccc>=100000 && ccc<200000){
	      rrr=4550+(ccc-100000)*0.03;
		}else if (ccc>=200000 && ccc<500000){
	      rrr=7550+(ccc-200000)*0.02;
		}else if (ccc>=500000 && ccc<1000000){
	      rrr=13550+(ccc-500000)*0.01;
		}else if (ccc>=1000000){
	      rrr=18550+(ccc-1000000)*0.005;
		}
	    if (rrr < 100){
	    	rrr=100 ;
	    }
	    return (int)Math.round(rrr);
	}

	//SCIA规则-国内案件处理费
	public int get_0006_01_02(int ccc) {
		double rrr=0;
		if (ccc<0){
	      rrr=0;
		}else if (ccc>=0  && ccc<200000){
	      rrr=5000;
		}else if (ccc>=200000 && ccc<500000){
	      rrr=5000+(ccc-200000)*0.02;
		}else if (ccc>=500000 && ccc<1000000){
	      rrr=11000+(ccc-500000)*0.015;
		}else if (ccc>=1000000 && ccc<3000000){
	      rrr=18500+(ccc-1000000)*0.005;
		}else if (ccc>=3000000 && ccc<6000000){
	      rrr=28500+(ccc-3000000)*0.0045;
		}else if (ccc>=6000000 && ccc<10000000){
	      rrr=42000+(ccc-6000000)*0.004;
		}else if (ccc>=10000000 && ccc<20000000){
	      rrr=58000+(ccc-10000000)*0.003;
		}else if (ccc>=20000000 && ccc<40000000){
	      rrr=88000+(ccc-20000000)*0.002;
		}else if (ccc>=40000000){
	      rrr=128000+(ccc-40000000)*0.0015;
		}
	    if (rrr < 5000){
	    	rrr=5000;
	    }
	    return (int)Math.round(rrr);
	}

		//SCIA规则-涉外案件收费
		//typ1： 1 是申请人   2 是被申请人
		//applicant_all:申请方争议金额
		//respondent_all:被申请方争议金额
	  public HashMap<String,Integer> charge_0006_02(String typ1,int applicant_all, int respondent_all){
		  HashMap<String,Integer> rrr = new HashMap<String,Integer>();
		  int registration_fee = 0;
		  int arbitration_fee =0;
		  if (typ1.equals("1")){
		    if (applicant_all != 0){
		      registration_fee = get_0006_02_01(applicant_all);
		      arbitration_fee  = get_0006_02_02(applicant_all);
		    }else{
		      registration_fee = 0;
		      arbitration_fee  = 0;
		    }
		  }else{
		    if (respondent_all != 0){
		      registration_fee = 0;
		      arbitration_fee  = get_0006_02_02(respondent_all);
		    }else{
		      registration_fee = 0;
		      arbitration_fee  = 0;
		    }
		  }
		  rrr.put("arbitration_fee", arbitration_fee);
		  rrr.put("registration_fee", registration_fee);
		  return rrr;
	  }
	  
	//SCIA规则-涉外案件立案费
	public int get_0006_02_01(int ccc) {
		return 10000;
	}

	//SCIA规则-涉外案件仲裁费
	public int get_0006_02_02(int ccc) {
		double rrr=0;
		if (ccc<0){
	      rrr=0;
	    }else if (ccc>=0 && ccc<1000000){
	      rrr=ccc*0.035;
	      if (rrr<10000){
	        rrr=10000;
	      }
	    }else if (ccc>=1000000 && ccc<5000000){
	      rrr=(ccc-1000000)*0.025+35000;
	    }else if (ccc>=5000000 && ccc<10000000){
	      rrr=(ccc-5000000)*0.015+135000;
	    }else if (ccc>=10000000 && ccc<50000000){
	      rrr=(ccc-10000000)*0.01+210000;
	    }else if (ccc>=50000000){
	      rrr=(ccc-50000000)*0.005+610000;
	    }
	    return (int)Math.round(rrr);
	}

	//CIETAC规则-国内案件收费
	//typ1： 1 是申请人   2 是被申请人
	//applicant_all:申请方争议金额
	//respondent_all:被申请方争议金额
	public HashMap<String,Integer> charge_01(String typ1, int applicant_all, int respondent_all){
		HashMap<String,Integer> rrr = new HashMap<String,Integer>();  
		int registration_fee = 0;
		int arbitration_fee =0;
		if (typ1.equals("1")){
	        if (applicant_all != 0){
	          registration_fee = get_01_01(applicant_all);
	          arbitration_fee  = get_01_02(applicant_all);
	        }else{
	          registration_fee = 0;
	          arbitration_fee  = 0;
	        }
	      }else{
	        if (respondent_all != 0){
	          registration_fee = get_01_01(respondent_all);
	          arbitration_fee  = get_01_02(respondent_all);
	        }else{
	          registration_fee = 0;
	          arbitration_fee  = 0;
	        }
	      }
		  rrr.put("arbitration_fee", arbitration_fee);
		  rrr.put("registration_fee", registration_fee);
		  return rrr;
	}
	//CIETAC规则-国内案件受理费
	public int get_01_01(int ccc) {
		double rrr=0;
	    if (ccc<0){
	      rrr=0;
	    }else if (ccc>=0 && ccc<1000){
	      rrr=100;
	    }else if (ccc>=1000 && ccc<50000){
	      rrr=100+(ccc-1000)*0.05;

	    }else if (ccc>=50000 && ccc<100000){
	      rrr=2550+(ccc-50000)*0.04;

	    }else if (ccc>=100000 && ccc<200000){
	      rrr=4550+(ccc-100000)*0.03;

	    }else if (ccc>=200000 && ccc<500000){
	      rrr=7550+(ccc-200000)*0.02;

	    }else if (ccc>=500000 && ccc<1000000){
	      rrr=13550+(ccc-500000)*0.01;
	    }else if (ccc>=1000000){
	      rrr=18550+(ccc-1000000)*0.005;
	    }  
	    
	    return (int)Math.round(rrr);
	}

	//CIETAC规则-国内案件处理费
	public int get_01_02(int ccc) {
		double rrr=0;
		if (ccc<0){
	      rrr=0;
		}else if (ccc>=0 && ccc<50000){
	      rrr=1250;
		}else if (ccc>=50000 && ccc<200000){
	      rrr=1250+(ccc-50000)*0.025;
		}else if (ccc>=200000 && ccc<500000){
	      rrr=5000+(ccc-200000)*0.02;
		}else if (ccc>=500000 && ccc<1000000){
	      rrr=11000+(ccc-500000)*0.015;
		}else if (ccc>=1000000 && ccc<3000000){
	      rrr=18500+(ccc-1000000)*0.005;
		}else if (ccc>=3000000 && ccc<6000000){
	      rrr=28500+(ccc-3000000)*0.0045;
		}else if (ccc>=6000000 && ccc<10000000){
	      rrr=42000+(ccc-6000000)*0.004;
		}else if (ccc>=10000000 && ccc<20000000){
	      rrr=58000+(ccc-10000000)*0.003;
		}else if (ccc>=20000000 && ccc<40000000){
	      rrr=88000+(ccc-20000000)*0.002;
		}else if (ccc>=40000000){
	      rrr=128000+(ccc-40000000)*0.0015;
	    }
	    return (int)Math.round(rrr);
	}

	//CIETAC规则-涉外案件收费
	//typ1： 1 是申请人   2 是被申请人
	//applicant_all:申请方争议金额
	//respondent_all:被申请方争议金额
	public HashMap<String,Integer> charge_02(String typ1, int applicant_all, int respondent_all){
		HashMap<String,Integer> rrr = new HashMap<String,Integer>();  
		int registration_fee = 0;
		int arbitration_fee =0;
	    if (typ1.equals("1")){
	        if (applicant_all != 0){
	          arbitration_fee  = get_02_02(applicant_all);
	          registration_fee = get_02_01(applicant_all);
	        }else{
	          arbitration_fee  = 0;
	          registration_fee = 0;
	        }
	    }else{
	        if (respondent_all != 0){
	          arbitration_fee  = get_02_02(respondent_all);
	          registration_fee = 0;
	        }else{
	          arbitration_fee  = 0;
	          registration_fee = 0;
	        }
	    } 
	    rrr.put("arbitration_fee", arbitration_fee);
	    rrr.put("registration_fee", registration_fee);
	    return rrr;
	}
	  
	//CIETAC规则-涉外案件立案费
	public int get_02_01(int ccc) {
		return (int)Math.round(10000);
	}

	//CIETAC规则-涉外案件仲裁费
	public int get_02_02(int ccc) {
		double rrr=0;
		if (ccc<0){
	      rrr=0;
		}else if (ccc>=0 && ccc<1000000){
	      rrr=ccc*0.035;
	      if (rrr<10000){
	        rrr=10000;
	      }
	    }else if (ccc>=1000000 && ccc<5000000){
	      rrr=(ccc-1000000)*0.025+35000;
	    }else if (ccc>=5000000 && ccc<10000000){
	      rrr=(ccc-5000000)*0.015+135000;
	    }else if (ccc>=10000000 && ccc<50000000){
	      rrr=(ccc-10000000)*0.01+210000;
	    }else if (ccc>=50000000){
	      rrr=(ccc-50000000)*0.005+610000;
	    }
		return (int)Math.round(rrr);
	}
	
	//CIETAC规则-金融案件收费
	//typ1： 1 是申请人   2 是被申请人
	//applicant_all:申请方争议金额
	//respondent_all:被申请方争议金额
	  public HashMap<String,Integer> charge_03(String typ1, int applicant_all, int respondent_all){
		HashMap<String,Integer> rrr = new HashMap<String,Integer>();  
		int registration_fee = 0;
		int arbitration_fee =0;
	     if (typ1.equals("1")){
	        if (applicant_all != 0){
	          arbitration_fee  = get_03_02(applicant_all);
	          registration_fee = get_03_01(applicant_all);
	        }else{
	          arbitration_fee  = 0;
	          registration_fee = 0;
	        }
	     }else{
	        if (respondent_all != 0){
	          arbitration_fee  = get_03_02(respondent_all);
	          registration_fee = get_03_01(respondent_all);
	        }else{
	          arbitration_fee  = 0;
	          registration_fee = 0;
	        }
	     }
	      rrr.put("arbitration_fee", arbitration_fee);
	      rrr.put("registration_fee", registration_fee);
	      return rrr;
	  }
	  

	//CIETAC规则-金融案件立案费
	public int get_03_01(int ccc) {
		return (int)Math.round(10000);
	}

	//CIETAC规则-金融案件仲裁费
	public int get_03_02(int ccc) {
		double rrr=0;
		if (ccc<0){
	      rrr=0;
	    }else if (ccc>=0 && ccc<1000000){
	      rrr=ccc*0.01;
	      if (rrr<5000){
	        rrr=5000;
	      }
	    }else if (ccc>=1000000 && ccc<5000000){
	      rrr=(ccc-1000000)*0.008+10000;
	    }else if (ccc>=5000000 && ccc<50000000){
	      rrr=(ccc-5000000)*0.006+42000;
	    }else if (ccc>=50000000){
	      rrr=(ccc-50000000)*0.005+312000;
	    }
		return (int)Math.round(rrr);
	}

	
}
