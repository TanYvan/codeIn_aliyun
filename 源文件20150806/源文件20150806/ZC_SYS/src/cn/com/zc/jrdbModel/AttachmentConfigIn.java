package cn.com.zc.jrdbModel;

public class AttachmentConfigIn extends JrdbBaseModel {
	private String code;
	private String extranet_dir;
	private int id;
	private String name;
	private String network_dir;
	private String remark;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getExtranet_dir() {
		return extranet_dir;
	}

	public void setExtranet_dir(String extranet_dir) {
		this.extranet_dir = extranet_dir;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNetwork_dir() {
		return network_dir;
	}

	public void setNetwork_dir(String network_dir) {
		this.network_dir = network_dir;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
}
