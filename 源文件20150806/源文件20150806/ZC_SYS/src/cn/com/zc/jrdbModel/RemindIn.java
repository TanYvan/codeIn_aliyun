package cn.com.zc.jrdbModel;

public class RemindIn extends JrdbBaseModel {
	private String accept_user_type;
	private String accept_user;
	private String confirm_time;
	private String content;
	private String id;
	private String remind_time;
	private String remind_type;
	private String status;

	public String getAccept_user_type() {
		return accept_user_type;
	}

	public void setAccept_user_type(String accept_user_type) {
		this.accept_user_type = accept_user_type;
	}
	
	public String getAccept_user() {
		return accept_user;
	}

	public void setAccept_user(String accept_user) {
		this.accept_user = accept_user;
	}

	public String getConfirm_time() {
		return confirm_time;
	}

	public void setConfirm_time(String confirm_time) {
		this.confirm_time = confirm_time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRemind_time() {
		return remind_time;
	}

	public void setRemind_time(String remind_time) {
		this.remind_time = remind_time;
	}

	public String getRemind_type() {
		return remind_type;
	}

	public void setRemind_type(String remind_type) {
		this.remind_type = remind_type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
