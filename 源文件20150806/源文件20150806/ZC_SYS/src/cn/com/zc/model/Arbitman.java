package cn.com.zc.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "arbitman")
public class Arbitman extends BaseModel {
	private int id;
	private Integer statusA;
	private String used;
	private String identity;
	private Integer ynbbh;
	private String code;
	private String password;
	private String spell;
	private Integer age;
	private String name;
	private String nameIdcard;
	private String evername;
	private String areaCode;
	//private String birthday;
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
	private String idCard;
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
	private String testdate;
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
	private String roleCode;
	private String bankCode;
	private String bankUsername;
	private String complete;
	private String otherOrgHandling;
	private String areaType;
	private String nameIdcardEn;
	private String surnameEn;
	private String firstNameEn;
	private String special;
	private String specialEn;
	private String countryEn;
	private String cityEn;
	private Integer paperworkId;
	private String registerTime;
	

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "status_a")
	public Integer getStatusA() {
		return statusA;
	}

	public void setStatusA(Integer statusA) {
		this.statusA = statusA;
	}
	/*
	public void setStatusA(Integer statusA) {
		if (statusA != null){
			this.statusA = statusA.IntegerValue();
		}
	}
	*/
	
	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	@Column(name = "identity")
	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	@Column(name = "ynbbh")
	public Integer getYnbbh() {
		return ynbbh;
	}

	public void setYnbbh(Integer ynbbh) {
		this.ynbbh = ynbbh;
	}
	
	/*
	public void setYnbbh(Integer ynbbh) {
		if (ynbbh != null){
			this.ynbbh = ynbbh.IntegerValue();
		}
	}
	*/
	
	@Column(name = "code")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Column(name = "password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "spell")
	public String getSpell() {
		return spell;
	}

	public void setSpell(String spell) {
		this.spell = spell;
	}

	@Column(name = "age")
	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}
	
	/*
	public void setAge(Integer age) {
		if (age != null){
			this.age = age.IntegerValue();
		}
	}
	*/
	
	@Column(name = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "name_idcard")
	public String getNameIdcard() {
		return nameIdcard;
	}

	public void setNameIdcard(String nameIdcard) {
		this.nameIdcard = nameIdcard;
	}

	@Column(name = "evername")
	public String getEvername() {
		return evername;
	}

	public void setEvername(String evername) {
		this.evername = evername;
	}

	@Column(name = "area_code")
	public String getAreaCode() {
		return areaCode;
	}

	public void setAreaCode(String areaCode) {
		this.areaCode = areaCode;
	}

	@Column(name = "birthday")
	
	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		if (birthday==null || birthday.equals("")){
			this.birthday = null;
		}else{
			this.birthday = birthday;
		}
	}
	
	/*
	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	*/
	
	/*
	public void setBirthday(lString birthday) throws ParseException {
		SimpleStringFormat dt = new SimpleStringFormat("yyyy-MM-dd");
		this.birthday = dt.parse(birthday);
	}
	*/

	@Column(name = "fax")
	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	@Column(name = "bank_u")
	public String getBankU() {
		return bankU;
	}

	public void setBankU(String bankU) {
		this.bankU = bankU;
	}

	@Column(name = "bank_t")
	public String getBankT() {
		return bankT;
	}

	public void setBankT(String bankT) {
		this.bankT = bankT;
	}

	@Column(name = "telh")
	public String getTelh() {
		return telh;
	}

	public void setTelh(String telh) {
		this.telh = telh;
	}

	@Column(name = "telo")
	public String getTelo() {
		return telo;
	}

	public void setTelo(String telo) {
		this.telo = telo;
	}

	@Column(name = "bp")
	public String getBp() {
		return bp;
	}

	public void setBp(String bp) {
		this.bp = bp;
	}

	@Column(name = "mobiletel")
	public String getMobiletel() {
		return mobiletel;
	}

	public void setMobiletel(String mobiletel) {
		this.mobiletel = mobiletel;
	}

	@Column(name = "postcode")
	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	@Column(name = "addr")
	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Column(name = "company")
	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	@Column(name = "busyness")
	public String getBusyness() {
		return busyness;
	}

	public void setBusyness(String busyness) {
		this.busyness = busyness;
	}

	@Column(name = "pic")
	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "status")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "sex")
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@Column(name = "nation")
	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	@Column(name = "polityvisage")
	public String getPolityvisage() {
		return polityvisage;
	}

	public void setPolityvisage(String polityvisage) {
		this.polityvisage = polityvisage;
	}

	@Column(name = "id_card")
	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	@Column(name = "lawyerdate")
	public String getLawyerdate() {
		return lawyerdate;
	}

	public void setLawyerdate(String lawyerdate) {
		this.lawyerdate = lawyerdate;
	}

	@Column(name = "lawyernum")
	public String getLawyernum() {
		return lawyernum;
	}

	public void setLawyernum(String lawyernum) {
		this.lawyernum = lawyernum;
	}

	@Column(name = "jobwant")
	public String getJobwant() {
		return jobwant;
	}

	public void setJobwant(String jobwant) {
		this.jobwant = jobwant;
	}
	

	@Column(name = "title")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "jobstart")
	public String getJobstart() {
		return jobstart;
	}

	public void setJobstart(String jobstart) {
		this.jobstart = jobstart;
	}

	@Column(name = "doforeign")
	public String getDoforeign() {
		return doforeign;
	}

	public void setDoforeign(String doforeign) {
		this.doforeign = doforeign;
	}

	@Column(name = "standing")
	public String getStanding() {
		return standing;
	}

	public void setStanding(String standing) {
		this.standing = standing;
	}

	@Column(name = "comtype")
	public String getComtype() {
		return comtype;
	}

	public void setComtype(String comtype) {
		this.comtype = comtype;
	}

	@Column(name = "secjob")
	public String getSecjob() {
		return secjob;
	}

	public void setSecjob(String secjob) {
		this.secjob = secjob;
	}

	@Column(name = "hightitle")
	public String getHightitle() {
		return hightitle;
	}

	public void setHightitle(String hightitle) {
		this.hightitle = hightitle;
	}

	@Column(name = "country")
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "city")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "work1")
	public String getWork1() {
		return work1;
	}

	public void setWork1(String work1) {
		this.work1 = work1;
	}

	@Column(name = "zy")
	public String getZy() {
		return zy;
	}

	public void setZy(String zy) {
		this.zy = zy;
	}

	@Column(name = "background")
	public String getBackground() {
		return background;
	}

	public void setBackground(String background) {
		this.background = background;
	}

	@Column(name = "testdate")
	public String getTestdate() {
		return testdate;
	}

	public void setTestdate(String testdate) {
		this.testdate = testdate;
	}

	@Column(name = "backg_en")
	public String getBackgEn() {
		return backgEn;
	}

	public void setBackgEn(String backgEn) {
		this.backgEn = backgEn;
	}

	@Column(name = "yearbelong")
	public String getYearbelong() {
		return yearbelong;
	}

	public void setYearbelong(String yearbelong) {
		this.yearbelong = yearbelong;
	}

	@Column(name = "salutation")
	public String getSalutation() {
		return salutation;
	}

	public void setSalutation(String salutation) {
		this.salutation = salutation;
	}

	@Column(name = "caseperyearmin")
	public String getCaseperyearmin() {
		return caseperyearmin;
	}

	public void setCaseperyearmin(String caseperyearmin) {
		this.caseperyearmin = caseperyearmin;
	}

	@Column(name = "caseperyearmax")
	public String getCaseperyearmax() {
		return caseperyearmax;
	}

	public void setCaseperyearmax(String caseperyearmax) {
		this.caseperyearmax = caseperyearmax;
	}

	@Column(name = "setting")
	public String getSetting() {
		return setting;
	}

	public void setSetting(String setting) {
		this.setting = setting;
	}

	@Column(name = "bankaccount")
	public String getBankaccount() {
		return bankaccount;
	}

	public void setBankaccount(String bankaccount) {
		this.bankaccount = bankaccount;
	}

	@Column(name = "bankname")
	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	@Column(name = "bank_typ")
	public String getBankTyp() {
		return bankTyp;
	}

	public void setBankTyp(String bankTyp) {
		this.bankTyp = bankTyp;
	}

	@Column(name = "bankremark")
	public String getBankremark() {
		return bankremark;
	}

	public void setBankremark(String bankremark) {
		this.bankremark = bankremark;
	}

	@Column(name = "outstanding")
	public String getOutstanding() {
		return outstanding;
	}

	public void setOutstanding(String outstanding) {
		this.outstanding = outstanding;
	}

	@Column(name = "fruit")
	public String getFruit() {
		return fruit;
	}

	public void setFruit(String fruit) {
		this.fruit = fruit;
	}

	@Column(name = "selfvalue")
	public String getSelfvalue() {
		return selfvalue;
	}

	public void setSelfvalue(String selfvalue) {
		this.selfvalue = selfvalue;
	}

	@Column(name = "parttime")
	public String getParttime() {
		return parttime;
	}

	public void setParttime(String parttime) {
		this.parttime = parttime;
	}

	@Column(name = "workhistory")
	public String getWorkhistory() {
		return workhistory;
	}

	public void setWorkhistory(String workhistory) {
		this.workhistory = workhistory;
	}

	@Column(name = "advisorycompany")
	public String getAdvisorycompany() {
		return advisorycompany;
	}

	public void setAdvisorycompany(String advisorycompany) {
		this.advisorycompany = advisorycompany;
	}

	@Column(name = "remark")
	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Column(name = "user")
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	@Column(name = "u_time")
	public String getuTime() {
		return uTime;
	}

	public void setuTime(String uTime) {
		this.uTime = uTime;
	}

	@Column(name = "sittingtime")
	public String getSittingtime() {
		return sittingtime;
	}

	public void setSittingtime(String sittingtime) {
		this.sittingtime = sittingtime;
	}

	@Column(name = "train")
	public String getTrain() {
		return train;
	}

	public void setTrain(String train) {
		this.train = train;
	}

	@Column(name = "recommendation")
	public String getRecommendation() {
		return recommendation;
	}

	public void setRecommendation(String recommendation) {
		this.recommendation = recommendation;
	}

	@Column(name = "file")
	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	@Column(name = "financestatus")
	public String getFinancestatus() {
		return financestatus;
	}

	public void setFinancestatus(String financestatus) {
		this.financestatus = financestatus;
	}

	@Column(name = "category")
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Column(name = "isunit")
	public String getIsunit() {
		return isunit;
	}

	public void setIsunit(String isunit) {
		this.isunit = isunit;
	}

	@Column(name = "role_code")
	public String getRoleCode() {
		return roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	@Column(name = "bank_code")
	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	@Column(name = "bank_username")
	public String getBankUsername() {
		return bankUsername;
	}

	public void setBankUsername(String bankUsername) {
		this.bankUsername = bankUsername;
	}

	@Column(name = "complete")
	public String getComplete() {
		return complete;
	}

	public void setComplete(String complete) {
		this.complete = complete;
	}

	@Column(name = "other_org_handling")
	public String getOtherOrgHandling() {
		return otherOrgHandling;
	}

	public void setOtherOrgHandling(String otherOrgHandling) {
		this.otherOrgHandling = otherOrgHandling;
	}

	@Column(name = "area_type")
	public String getAreaType() {
		return areaType;
	}

	public void setAreaType(String areaType) {
		this.areaType = areaType;
	}
	
	@Column(name = "name_idcard_en")
	public String getNameIdcardEn() {
		return nameIdcardEn;
	}

	public void setNameIdcardEn(String nameIdcardEn) {
		this.nameIdcardEn = nameIdcardEn;
	}

	
	@Column(name = "surname_en")
	public String getSurnameEn() {
		return surnameEn;
	}

	public void setSurnameEn(String surnameEn) {
		this.surnameEn = surnameEn;
	}
	
	@Column(name = "first_name_en")
	public String getFirstNameEn() {
		return firstNameEn;
	}

	public void setFirstNameEn(String firstNameEn) {
		this.firstNameEn = firstNameEn;
	}

	@Column(name = "special")
	public String getSpecial() {
		return special;
	}

	public void setSpecial(String special) {
		this.special = special;
	}

	@Column(name = "special_en")
	public String getSpecialEn() {
		return specialEn;
	}

	public void setSpecialEn(String specialEn) {
		this.specialEn = specialEn;
	}
	
	@Column(name = "country_en")
	public String getCountryEn() {
		return countryEn;
	}

	public void setCountryEn(String countryEn) {
		this.countryEn = countryEn;
	}

	@Column(name = "city_en")
	public String getCityEn() {
		return cityEn;
	}

	public void setCityEn(String cityEn) {
		this.cityEn = cityEn;
	}
	
	@Column(name = "paperwork_id")
	public Integer getPaperworkId() {
		return paperworkId;
	}

	public void setPaperworkId(Integer paperworkId) {
		this.paperworkId = paperworkId;
	}
	
	@Column(name = "register_time")
	public String getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}
	
	/*
	public void setPaperworkId(Integer paperworkId) {
		if (paperworkId != null){
			this.paperworkId = paperworkId.IntegerValue();
		}
		else{
			this.paperworkId = null;
		}
	}
	*/
	
}
