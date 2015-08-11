package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Attachment;
import cn.com.zc.model.AttachmentConfig;

public interface AttachmentConfigService {
	public List<AttachmentConfig> findAttachmentConfigList(String condition, Object[] value);
	public void flushAttachmentConfig();
	public void initAttachmentConfig();
	public void insertAttachmentConfig(AttachmentConfig attachmentConfig);
	public void updateAttachmentConfig(AttachmentConfig attachmentConfig);
	public void deleteAttachmentConfig(int id);
}
