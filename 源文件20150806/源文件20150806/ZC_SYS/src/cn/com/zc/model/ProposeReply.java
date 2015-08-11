package cn.com.zc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@org.hibernate.annotations.Entity(dynamicInsert=true,dynamicUpdate=true) 
@Table(name = "propose_reply")
public class ProposeReply extends BaseModel {
	private int id;
	private String user;
    private Integer proposeId;
	private String content;
	private String replyTime;
	private String active;

	@Id
	@Column(name = "id")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "reply_user")
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	@Column(name = "content")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "reply_time")
	public String getReplyTime() {
		return replyTime;
	}

	public void setReplyTime(String replyTime) {
		this.replyTime = replyTime;
	}

	@Column(name = "propose_id")
	public Integer getProposeId() {
		return proposeId;
	}

	public void setProposeId(Integer proposeId) {
		this.proposeId = proposeId;
	}
	
	/*
	public void setProposeId(Integer proposeId) {
		this.proposeId = proposeId.IntegerValue();
	}
	*/

	@Column(name = "active")
	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}
}
