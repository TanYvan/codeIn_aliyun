package cn.com.zc.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "educate")
public class Educate  extends BaseModel {
	private int id;
	private Integer status;
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
	private String uTime;
	private String used;
	private String arbitman;


	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	/*
	public void setStatus(Integer status) {
		this.status = status.IntegerValue();
	}
	*/

	@Column(name = "studycalendar")
	public String getStudycalendar() {
		return studycalendar;
	}

	public void setStudycalendar(String studycalendar) {
		this.studycalendar = studycalendar;
	}

	@Column(name = "degree")
	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	@Column(name = "specialty")
	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	@Column(name = "graduatedate")
	public String getGraduatedate() {
		return graduatedate;
	}

	public void setGraduatedate(String graduatedate) {
		this.graduatedate = graduatedate;
	}

	@Column(name = "school")
	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	@Column(name = "degreeletter")
	public String getDegreeletter() {
		return degreeletter;
	}

	public void setDegreeletter(String degreeletter) {
		this.degreeletter = degreeletter;
	}

	@Column(name = "lawyercalendar")
	public String getLawyercalendar() {
		return lawyercalendar;
	}

	public void setLawyercalendar(String lawyercalendar) {
		this.lawyercalendar = lawyercalendar;
	}

	@Column(name = "foreignlearn")
	public String getForeignlearn() {
		return foreignlearn;
	}

	public void setForeignlearn(String foreignlearn) {
		this.foreignlearn = foreignlearn;
	}

	@Column(name = "testdate")
	public String getTestdate() {
		return testdate;
	}

	public void setTestdate(String testdate) {
		this.testdate = testdate;
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
		uTime = uTime;
	}

	@Column(name = "used")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}

	@Column(name = "arbitman")
	public String getArbitman() {
		return arbitman;
	}

	public void setArbitman(String arbitman) {
		this.arbitman = arbitman;
	}

}
