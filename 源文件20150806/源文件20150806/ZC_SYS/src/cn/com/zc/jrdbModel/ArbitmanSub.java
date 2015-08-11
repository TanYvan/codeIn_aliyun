package cn.com.zc.jrdbModel;

import java.util.HashMap;
import java.util.Map;


public class ArbitmanSub extends JrdbBaseModel {
	private Map fieldMap;
	private String id;
	private String used;
	private String identity;
	private String ynbbh;
	private String code;
	private String password;
	private String spell;
	private String age;
	private String name;
	private String name_idcard;
	private String evername;
	private String area_code;
	private String birthday;
	private String fax;
	private String bankU;
	private String bankT;
	private String telh;
	private String telo;
	private String bp;
	private String mobiletel;
	private String postcode;
	private String addr;
	private String company;
	private String busyness;
	private String pic;
	private String email;
	private String status;
	private String sex;
	private String nation;
	private String polityvisage;
	private String id_card;
	private String lawyerdate;
	private String lawyernum;
	private String jobwant;
	private String title;
	private String jobstart;
	private String doforeign;
	private String standing;
	private String comtype;
	private String secjob;
	private String hightitle;
	private String country;
	private String city;
	private String work1;
	private String zy;
	private String background;
	private String testString;
	private String backgEn;
	private String yearbelong;
	private String salutation;
	private String caseperyearmin;
	private String caseperyearmax;
	private String setting;
	private String bankaccount;
	private String bankname;
	private String bankTyp;
	private String bankremark;
	private String outstanding;
	private String fruit;
	private String selfvalue;
	private String parttime;
	private String workhistory;
	private String advisorycompany;
	private String remark;
	private String user;
	private String uTime;
	private String sittingtime;
	private String train;
	private String recommendation;
	private String file;
	private String financestatus;
	private String category;
	private String isunit;
	private String role_code;
	private String bank_code;
	private String bank_username;
	private String complete;
	private String other_org_handling;
	private String area_type;
	private String name_idcard_en;
	private String surname_en;
	private String first_name_en;
	private String special;
	private String special_en;
	private String country_en;
	private String city_en;


	public void setFieldMap(){
		Map fieldMapTmp = new HashMap();
		fieldMapTmp.put("identity","身份");
		fieldMapTmp.put("code","编号");
		fieldMapTmp.put("password","密码");
		fieldMapTmp.put("spell","姓名拼音缩写");
		fieldMapTmp.put("age","年龄");
		fieldMapTmp.put("name_idcard","姓名(身份证名称)");
		fieldMapTmp.put("evername","曾用名");
		fieldMapTmp.put("birthday","出生日期");
		fieldMapTmp.put("fax","传真");
		fieldMapTmp.put("telh","家庭电话");
		fieldMapTmp.put("telo","单位电话");
		fieldMapTmp.put("bp","传呼机");
		fieldMapTmp.put("mobiletel","手机");
		fieldMapTmp.put("postcode","邮政编码");
		fieldMapTmp.put("addr","联系地址");
		fieldMapTmp.put("company","单位");
		fieldMapTmp.put("pic","是否有照片");
		fieldMapTmp.put("email","email");
		fieldMapTmp.put("sex","性别");
		fieldMapTmp.put("nation","民族");
		fieldMapTmp.put("polityvisage","政治面貌");
		fieldMapTmp.put("id_card","身份证号");
		fieldMapTmp.put("lawyerdate","职称");
		fieldMapTmp.put("lawyernum","推荐人");
		fieldMapTmp.put("jobwant","工作意愿");
		fieldMapTmp.put("title","职务");
		fieldMapTmp.put("jobstart","参加工作时间");
		fieldMapTmp.put("doforeign","能否涉外");
		fieldMapTmp.put("standing","身份类型");
		fieldMapTmp.put("comtype","单位类型");
		fieldMapTmp.put("secjob","兼职情况");
		fieldMapTmp.put("hightitle","有无高职");
		fieldMapTmp.put("country","国籍(中文)");
		fieldMapTmp.put("city","居住地(中文)");
		fieldMapTmp.put("work1","工作状况");
		fieldMapTmp.put("zy","职业分类");
		fieldMapTmp.put("background","背景");
		fieldMapTmp.put("testString","");
		fieldMapTmp.put("backgEn","文英背景");
		fieldMapTmp.put("yearbelong","属所年度");
		fieldMapTmp.put("salutation","呼称");
		fieldMapTmp.put("caseperyearmin","一年办理最小案件数");
		fieldMapTmp.put("caseperyearmax","一年办理最大案件数");
		fieldMapTmp.put("setting","否接受是开庭通知");
		fieldMapTmp.put("bankaccount","银行账号");
		fieldMapTmp.put("bankname","银行名称");
		fieldMapTmp.put("bankTyp","银行类别");
		fieldMapTmp.put("bankremark","财务信息的备注");
		fieldMapTmp.put("outstanding","主要工作业绩");
		fieldMapTmp.put("fruit","发表的学术成果");
		fieldMapTmp.put("selfvalue","自我评价");
		fieldMapTmp.put("parttime","社会团体兼职情况");
		fieldMapTmp.put("workhistory","工作经历");
		fieldMapTmp.put("advisorycompany","两年内担任法律顾问的企业名");
		fieldMapTmp.put("remark","备注");
		fieldMapTmp.put("sittingtime","开庭时间要求");
		fieldMapTmp.put("train","培训要求");
		fieldMapTmp.put("recommendation","住宿要求");
		fieldMapTmp.put("file","接收文件特别要求");
		fieldMapTmp.put("category","类型");
		fieldMapTmp.put("isunit","是否本单位仲裁员");
		fieldMapTmp.put("bank_code","银行编号");
		fieldMapTmp.put("bank_username","银行账号户名");
		fieldMapTmp.put("other_org_handling","在其它机构办案情况");
		fieldMapTmp.put("area_type","所在地类别");
		fieldMapTmp.put("name_idcard_en","姓名英文(身份证)");
		fieldMapTmp.put("surname_en","姓氏(英文)");
		fieldMapTmp.put("first_name_en","名字(中文)");
		fieldMapTmp.put("special","专长(中文)");
		fieldMapTmp.put("special_en","专长(英文)");
		fieldMapTmp.put("country_en","国籍(英文)");
		fieldMapTmp.put("city_en","居住地(英文)");
		fieldMap = fieldMapTmp;
	}
	
	public Map getFieldMap(){
		return fieldMap;
		
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	public String getIdentity_DicType() {
		return "9908";
	}
	
	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getYnbbh() {
		return ynbbh;
	}

	public void setYnbbh(String ynbbh) {
		this.ynbbh = ynbbh;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSpell() {
		return spell;
	}

	public void setSpell(String spell) {
		this.spell = spell;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName_idcard() {
		return name_idcard;
	}

	public void setName_idcard(String name_idcard) {
		this.name_idcard = name_idcard;
	}

	public String getEvername() {
		return evername;
	}

	public void setEvername(String evername) {
		this.evername = evername;
	}

	public String getArea_code() {
		return area_code;
	}

	public void setArea_code(String area_code) {
		this.area_code = area_code;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getBankU() {
		return bankU;
	}

	public void setBankU(String bankU) {
		this.bankU = bankU;
	}

	public String getBankT() {
		return bankT;
	}

	public void setBankT(String bankT) {
		this.bankT = bankT;
	}

	public String getTelh() {
		return telh;
	}

	public void setTelh(String telh) {
		this.telh = telh;
	}

	public String getTelo() {
		return telo;
	}

	public void setTelo(String telo) {
		this.telo = telo;
	}

	public String getBp() {
		return bp;
	}

	public void setBp(String bp) {
		this.bp = bp;
	}

	public String getMobiletel() {
		return mobiletel;
	}

	public void setMobiletel(String mobiletel) {
		this.mobiletel = mobiletel;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getBusyness() {
		return busyness;
	}

	public void setBusyness(String busyness) {
		this.busyness = busyness;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNation_DicType() {
		return "9003";
	}
	
	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getPolityvisage() {
		return polityvisage;
	}

	public void setPolityvisage(String polityvisage) {
		this.polityvisage = polityvisage;
	}

	public String getId_card() {
		return id_card;
	}

	public void setId_card(String id_card) {
		this.id_card = id_card;
	}

	public String getLawyerdate() {
		return lawyerdate;
	}

	public void setLawyerdate(String lawyerdate) {
		this.lawyerdate = lawyerdate;
	}

	public String getLawyernum() {
		return lawyernum;
	}

	public void setLawyernum(String lawyernum) {
		this.lawyernum = lawyernum;
	}

	public String getJobwant() {
		return jobwant;
	}

	public void setJobwant(String jobwant) {
		this.jobwant = jobwant;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getJobstart() {
		return jobstart;
	}

	public void setJobstart(String jobstart) {
		this.jobstart = jobstart;
	}

	public String getDoforeign_DicType() {
		return "9032";
	}
	
	public String getDoforeign() {
		return doforeign;
	}

	public void setDoforeign(String doforeign) {
		this.doforeign = doforeign;
	}

	public String getStanding_DicType() {
		return "9004";
	}
	
	public String getStanding() {
		return standing;
	}

	public void setStanding(String standing) {
		this.standing = standing;
	}

	public String getComtype() {
		return comtype;
	}

	public void setComtype(String comtype) {
		this.comtype = comtype;
	}

	public String geSecjob_DicType() {
		return "9030";
	}
	
	public String getSecjob() {
		return secjob;
	}

	public void setSecjob(String secjob) {
		this.secjob = secjob;
	}

	public String getHightitle_DicType() {
		return "9033";
	}
	
	public String getHightitle() {
		return hightitle;
	}

	public void setHightitle(String hightitle) {
		this.hightitle = hightitle;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getWork1_DicType() {
		return "9031";
	}
	
	public String getWork1() {
		return work1;
	}

	public void setWork1(String work1) {
		this.work1 = work1;
	}

	public String getZy_DicType() {
		return "9002";
	}
	
	public String getZy() {
		return zy;
	}

	public void setZy(String zy) {
		this.zy = zy;
	}

	public String getBackground() {
		return background;
	}

	public void setBackground(String background) {
		this.background = background;
	}

	public String getTestString() {
		return testString;
	}

	public void setTestString(String testString) {
		this.testString = testString;
	}

	public String getBackgEn() {
		return backgEn;
	}

	public void setBackgEn(String backgEn) {
		this.backgEn = backgEn;
	}

	public String getYearbelong() {
		return yearbelong;
	}

	public void setYearbelong(String yearbelong) {
		this.yearbelong = yearbelong;
	}

	public String getSalutation() {
		return salutation;
	}

	public void setSalutation(String salutation) {
		this.salutation = salutation;
	}

	public String getCaseperyearmin() {
		return caseperyearmin;
	}

	public void setCaseperyearmin(String caseperyearmin) {
		this.caseperyearmin = caseperyearmin;
	}

	public String getCaseperyearmax() {
		return caseperyearmax;
	}

	public void setCaseperyearmax(String caseperyearmax) {
		this.caseperyearmax = caseperyearmax;
	}

	public String getSetting() {
		return setting;
	}

	public void setSetting(String setting) {
		this.setting = setting;
	}

	public String getBankaccount() {
		return bankaccount;
	}

	public void setBankaccount(String bankaccount) {
		this.bankaccount = bankaccount;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getBankTyp() {
		return bankTyp;
	}

	public void setBankTyp(String bankTyp) {
		this.bankTyp = bankTyp;
	}

	public String getBankremark() {
		return bankremark;
	}

	public void setBankremark(String bankremark) {
		this.bankremark = bankremark;
	}

	public String getOutstanding() {
		return outstanding;
	}

	public void setOutstanding(String outstanding) {
		this.outstanding = outstanding;
	}

	public String getFruit() {
		return fruit;
	}

	public void setFruit(String fruit) {
		this.fruit = fruit;
	}

	public String getSelfvalue() {
		return selfvalue;
	}

	public void setSelfvalue(String selfvalue) {
		this.selfvalue = selfvalue;
	}

	public String getParttime() {
		return parttime;
	}

	public void setParttime(String parttime) {
		this.parttime = parttime;
	}

	public String getWorkhistory() {
		return workhistory;
	}

	public void setWorkhistory(String workhistory) {
		this.workhistory = workhistory;
	}

	public String getAdvisorycompany() {
		return advisorycompany;
	}

	public void setAdvisorycompany(String advisorycompany) {
		this.advisorycompany = advisorycompany;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getuTime() {
		return uTime;
	}

	public void setuTime(String uTime) {
		this.uTime = uTime;
	}

	public String getSittingtime() {
		return sittingtime;
	}

	public void setSittingtime(String sittingtime) {
		this.sittingtime = sittingtime;
	}

	public String getTrain() {
		return train;
	}

	public void setTrain(String train) {
		this.train = train;
	}

	public String getRecommendation() {
		return recommendation;
	}

	public void setRecommendation(String recommendation) {
		this.recommendation = recommendation;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getFinancestatus() {
		return financestatus;
	}

	public void setFinancestatus(String financestatus) {
		this.financestatus = financestatus;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getIsunit() {
		return isunit;
	}

	public void setIsunit(String isunit) {
		this.isunit = isunit;
	}

	public String getRoleC_code() {
		return role_code;
	}

	public void setRole_code(String role_code) {
		this.role_code = role_code;
	}

	public String getBank_code() {
		return bank_code;
	}

	public void setBankCode(String bank_code) {
		this.bank_code = bank_code;
	}

	public String getBank_username() {
		return bank_username;
	}

	public void setBank_username(String bank_username) {
		this.bank_username = bank_username;
	}

	public String getComplete() {
		return complete;
	}

	public void setComplete(String complete) {
		this.complete = complete;
	}

	public String getOther_org_handling() {
		return other_org_handling;
	}

	public void setOther_org_handling(String other_org_handling) {
		this.other_org_handling = other_org_handling;
	}


	public String getArea_type() {
		return area_type;
	}

	public void setArea_type(String area_type) {
		this.area_type = area_type;
	}
	
	public String getName_idcard_en() {
		return name_idcard_en;
	}

	public void setName_idcard_en(String name_idcard_en) {
		this.name_idcard_en = name_idcard_en;
	}

	public String getSurname_en() {
		return surname_en;
	}

	public void setSurname_en(String surname_en) {
		this.surname_en = surname_en;
	}
	
	public String getFirst_name_en() {
		return first_name_en;
	}

	public void setFirst_name_en(String first_name_en) {
		this.first_name_en = first_name_en;
	}

	public String getSpecial() {
		return special;
	}

	public void setSpecial(String special) {
		this.special = special;
	}

	public String getSpecial_en() {
		return special_en;
	}

	public void setSpecial_en(String special_en) {
		this.special_en = special_en;
	}
	
	public String getCountry_en() {
		return country_en;
	}

	public void setCountry_en(String country_en) {
		this.country_en = country_en;
	}

	public String getCity_en() {
		return city_en;
	}

	public void setCity_en(String city_en) {
		this.city_en = city_en;
	}
	
}
