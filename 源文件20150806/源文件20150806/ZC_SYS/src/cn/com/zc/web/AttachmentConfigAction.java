package cn.com.zc.web;

import java.util.List;
import java.util.Map;

import cn.com.zc.common.App;
import cn.com.zc.model.AttachmentConfig;
import cn.com.zc.model.Dictionary;
import cn.com.zc.service.facade.AttachmentConfigService;
import cn.com.zc.service.facade.DictionaryService;
import cn.com.zc.service.facade.PageService;

public class AttachmentConfigAction extends BaseAction {
	private static final long serialVersionUID = 1L;
	private List<AttachmentConfig> attachmentConfigList;
	private AttachmentConfigService attachmentConfigService;
	
	public List<AttachmentConfig> getAttachmentConfigList() {
		return attachmentConfigList;
	}

	public void setAttachmentConfigList(List<AttachmentConfig> attachmentConfigList) {
		this.attachmentConfigList = attachmentConfigList;
	}

	public AttachmentConfigService getAttachmentConfigService() {
		return attachmentConfigService;
	}

	public void setattachmentConfigService(AttachmentConfigService attachmentConfigService) {
		this.attachmentConfigService = attachmentConfigService;
	}
	
	public String findAttachmentConfigList() {
		Object[] value={};
		attachmentConfigList = attachmentConfigService.findAttachmentConfigList(" order by code", value);
		return SUCCESS;
	}
}
