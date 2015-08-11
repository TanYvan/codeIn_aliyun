package cn.com.zc.service.facade;

import java.util.List;

import cn.com.zc.model.Attachment;

public interface AttachmentService {
	public List<Attachment> findAttachmentList(String condition, Object[] value);
	
	public List<Attachment> findAttachmentListFor(String sql, Object[] value);

	public void insertAttachment(Attachment attachment);

	public void updateAttachment(Attachment attachment);

	public void deleteAttachment(int id);

}
