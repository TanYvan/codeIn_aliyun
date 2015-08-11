package cn.com.zc.jrdbModel;

import java.util.HashMap;
import java.util.Map;

public class EducateSub  extends JrdbBaseModel {
	private Map fieldMap;
	private String id;
	private String studycalendar;
	private String degree;
	private String specialty;
	private String graduatedate;
	private String school;
	private String degreeletter;
	private String lawyercalendar;
	private String foreignlearn;
	private String testdate;
	private String user;
	private String u_time;
	private String used;
	private String arbitman;

	public void setFieldMap(){
		Map fieldMapTmp = new HashMap();
		fieldMapTmp.put("studycalendar","学历");
		fieldMapTmp.put("degree","学位");
		fieldMapTmp.put("specialty","所学专业");
		fieldMapTmp.put("graduatedate","毕业或结业时间");
		fieldMapTmp.put("school","毕业院校");
		fieldMapTmp.put("degreeletter","证书编号");
		fieldMapTmp.put("lawyercalendar","是否法学");
		fieldMapTmp.put("foreignlearn","是否国外");
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

	public String getStudycalendar_DicType() {
		return "9006";
	}
	
	public String getStudycalendar() {
		return studycalendar;
	}

	public void setStudycalendar(String studycalendar) {
		this.studycalendar = studycalendar;
	}

	public String getDegree_DicType() {
		return "9007";
	}
	
	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public String getGraduatedate() {
		return graduatedate;
	}

	public void setGraduatedate(String graduatedate) {
		this.graduatedate = graduatedate;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getDegreeletter() {
		return degreeletter;
	}

	public void setDegreeletter(String degreeletter) {
		this.degreeletter = degreeletter;
	}

	public String getLawyercalendar_DicType() {
		return "9902";
	}
	
	public String getLawyercalendar() {
		return lawyercalendar;
	}

	public void setLawyercalendar(String lawyercalendar) {
		this.lawyercalendar = lawyercalendar;
	}

	public String getForeignlearn_DicType() {
		return "9902";
	}
	
	public String getForeignlearn() {
		return foreignlearn;
	}

	public void setForeignlearn(String foreignlearn) {
		this.foreignlearn = foreignlearn;
	}

	public String getTestdate() {
		return testdate;
	}

	public void setTestdate(String testdate) {
		this.testdate = testdate;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getU_time() {
		return u_time;
	}

	public void setU_Time(String u_time) {
		this.u_time = u_time;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	public String getArbitman() {
		return arbitman;
	}

	public void setArbitman(String arbitman) {
		this.arbitman = arbitman;
	}

}
